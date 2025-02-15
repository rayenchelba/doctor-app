import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'home.dart';
class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _LunchState();
}

class _LunchState extends State<sec> {
  final PageController crtl =PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap: (){
          crtl.animateTo(2, duration:Duration(seconds: 2), curve: Curves.bounceInOut);
        },
      ),),
      body: PageView(
        controller: crtl,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent
            ),

          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.orange
            ),

          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black
            ),

          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue
            ),

          )
        ],
      ),
    );
  }
}
AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: const Text(
      'Test Project',
      style: TextStyle(
        color: Colors.blueAccent,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Home');
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/icons/fl.svg', height: 20, width: 20),
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          width: 37,
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/icons/bt.svg', height: 20, width: 20),
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}

