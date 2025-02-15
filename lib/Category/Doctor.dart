import 'dart:ui';

class Doctor{
  String name;
  String img;
  Color imgBox;
  List<String> specialites;
  double score;
  Doctor ({required this.name,
  required this.img,
  required this.imgBox,
  required this.specialites,
  required this.score});

  static List<Doctor> getdoctor(){
    List<Doctor> ls = [];
    ls.add(Doctor(
      name: 'Dr Jeny Jonson',
      img: 'assets/images/doctor1.svg',
      imgBox: Color(0xffFFA340).withOpacity(0.75),
      specialites: ['Dental sergeon', 'General dentist'],
      score: 4.8,
    ));

    ls.add(Doctor(
      name: 'Dr Mark Smith',
      img: 'assets/images/doctor2.svg',
      imgBox: Color(0xff34A3FF).withOpacity(0.75),
      specialites: ['Cardiology', 'Internal Medicine'],
      score: 4.7,
    ));

    ls.add(Doctor(
      name: 'Dr Olivia Brown',
      img: 'assets/images/doctor3.svg',
      imgBox: Color(0xff8B5CF6).withOpacity(0.75),
      specialites: ['Dermatology', 'Cosmetic Surgery'],
      score: 4.9,
    ));

    ls.add(Doctor(
      name: 'Dr Liam Davis',
      img: 'assets/images/doctor4.svg',
      imgBox: Color(0xffF472B6).withOpacity(0.75),
      specialites: ['Orthopedics', 'Sports Medicine'],
      score: 4.6,
    ));

    ls.add(Doctor(
      name: 'Dr Emily Wilson',
      img: 'assets/images/doctor5.svg',
      imgBox: Color(0xffF59E0B).withOpacity(0.75),
      specialites: ['Pediatrics', 'Neonatology'],
      score: 4.8,
    ));

    ls.add(Doctor(
      name: 'Dr James Lee',
      img: 'assets/images/doctor6.svg',
      imgBox: Color(0xff22D3EE).withOpacity(0.75),
      specialites: ['Neurology', 'Psychiatry'],
      score: 4.7,
    ));

    return ls;}
}