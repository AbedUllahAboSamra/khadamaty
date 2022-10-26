class Usere {
  final String uId;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String kolge;
  final String years;
  final String aboutMe;
  final String imageUrl;
  final String city;
  final String subCity;

  Usere({
   required this.uId,
   required this.name,
   required this.email,
   required this.password,
   required this.phone,
   required this.kolge,
   required this.years,
   required this.aboutMe,
   required this.imageUrl,
   required this.city,
   required this.subCity,
  });

factory Usere.fromJson({required Map<String , dynamic>json}){
  return Usere(
      uId: json['uId'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      kolge: json['kolge'],
      years: json['years'],
      aboutMe: json['aboutMe'],
      city: json['city'],
      subCity: json['subCity'],
      imageUrl: json['imageUrl']);
}

}
