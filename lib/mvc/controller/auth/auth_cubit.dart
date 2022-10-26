import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

import '../../model/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  final ImagePicker _picker = ImagePicker();

  XFile? imageFileList;


  Future<void> getLostData() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    imageFileList = pickedFile;
    emit(AuthGetImageSuccessState());
  }

  void createAccountMethod({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String kolge,
    required String years,
    required String aboutMe,
    required String subCity,
    required String accountType,
    required String city,
  }) async {
    emit(AuthCreateAccountLoadingState());
    var user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    print(user.user?.uid);
    if (user.user != null) {
      var snapshot = await FirebaseStorage.instance
          .ref()
          .child("images/image${Timestamp.now()}")
          .putFile(File(imageFileList!.path));
      var downloadUrl = await snapshot.ref.getData();

      if (downloadUrl != null) {
        var usere = Usere(
            uId: user.user!.uid,
            name: name,
            email: email,
            password: password,
            phone: phone,
            kolge: kolge,
            years: years,
            aboutMe: aboutMe,
            imageUrl: downloadUrl.toString(),
            city: city,
            subCity: subCity);

        FirebaseFirestore.instance.collection('users').doc(user.user!.uid).set({
          "uId": user.user!.uid,
          "name": name,
          "email": email,
          "password": password,
          "phone": phone,
          "kolge": kolge,
          "years": years,
          "aboutMe": aboutMe,
          "subCity": subCity,
          "accountType": accountType,
          "city": city,
          "timesOfPost": 50,
          "imageUrl": downloadUrl,
        }).then((value) {
          emit(AuthCreateAccountLoadedState(user: usere));
        }).catchError((onError) {
          emit(AuthCreateAccountErrorState(error: onError.toString()));
        });
      } else {
        emit(
            AuthCreateAccountErrorState(error: "البريد او كلمة السر غير صحيح"));
      }
    } else {
      emit(AuthCreateAccountErrorState(error: "البريد او كلمة السر غير صحيح"));
    }
  }

  void loginMethod({
    required String email,
    required String password,
  }) async {
    emit(AuthLoginLoadingState());
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    if (user.user != null) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(user.user!.uid)
          .get()
          .then((value) {
        if (value.data() != null) {
           emit(AuthLoginLoadedState(user:  Usere.fromJson(json: value.data()!)));
        } else {
          emit(AuthLoginErrorState(error: "البريد او كلمة السر غير صحيح"));
        }
      }).catchError((onError) {
        emit(AuthLoginErrorState(error: "البريد او كلمة السر غير صحيح"));
      });
    } else {
      emit(AuthLoginErrorState(error: "البريد او كلمة السر غير صحيح"));
    }
  }

  void forgetPasswordMethod({required String email}) {
    print('object');
    emit(AuthForgetSendEmailLoadingState());
    FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) {
      print('object');
      emit(AuthForgetSendEmailLoadedState());
    }).catchError((onError) {
      print('object$onError');
      emit(AuthForgetSendEmailErrorState(error: onError.toString()));
    });
  }
}
