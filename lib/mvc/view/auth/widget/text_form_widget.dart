import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormWidget extends StatefulWidget {
  String? hint;



  Function(String)? onChangeFunc;
  Function(String)? onSubmitFunc;
  TextInputType textInputType;
  TextEditingController controller;
  bool isPassword;

  TextFormWidget({
    super.key,
    required this.hint,

    required this.textInputType,
    required this.controller,
    this.onChangeFunc,
    this.onSubmitFunc,
    this.isPassword = false,
  });

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  var obscure = true;
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.textInputType,
        maxLines: 1,
        maxLength: 40,
        onChanged: widget.isPassword
            ? (value) {
          setState(() {
            counter = value.length;
          });
        }
            : widget.onChangeFunc,
        onFieldSubmitted: widget.onSubmitFunc,

        obscureText: widget.isPassword ? obscure : false,
        decoration: InputDecoration(
            hintText: widget.hint,
            counter: Container(),

            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide:   BorderSide(color:  Colors.grey[300]!, width: 2),
            ),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(color: Colors.black, width: 2),
            ),

            suffixIcon: widget.isPassword && counter != 0
                ? InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                child: Icon(
                  obscure ? Icons.visibility_outlined : Icons.visibility_off,
                  color: const Color(0xFFB9B9B9),
                ))
                : null),
      ),
    );
  }
}
