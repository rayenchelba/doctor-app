import 'package:app2/Category/Doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/Category/Category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List<Category> ls=[];
void fetechCateg (){
  ls=Category.getcat();}
List<Doctor> dr=[];
void fetechdoc (){
  dr=Doctor.getdoctor();
}
class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetechCateg();
  fetechdoc();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
        ListView(
            children: [
          head(),
        SizedBox(height: 20,),
        Categories(),
              SizedBox(height: 20,),
              docto()
      
              ]),
      
      ),
    );
  }

  Widget docto() {
    return Container(
      padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(height: 30),
        itemCount: dr.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color:Colors.white,
                boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.1),
                  offset:Offset(0, 4),
                  blurRadius: 20
                )
              ]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  child: SvgPicture.asset(dr[index].img),
                ),
                SizedBox(width: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dr[index].name,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(dr[index].specialites[0]),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Text(dr[index].score.toString())
                        ],
                      )
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
  Column Categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16,left: 16),
          child: Text('Categories',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23
            ),),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
              itemCount: ls.length,
              separatorBuilder: (context,index)=>SizedBox(width: 25,),
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    for (var item in ls){
                      item.sel=false;
                    }
                    ls[index].sel=true;
                    setState(() {});
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: ls[index].sel ? Colors.lightBlue.withOpacity(0.4) : Colors.transparent,
                    shape: BoxShape.circle),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: SvgPicture.asset(ls[index].path,
                      height: 50,width: 50,),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  Container head() {
    return Container(
      color: Color(0xff51A8FF),
      height: 350,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hi Rayen',style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.1),

                ),
                child: Icon(
                  Icons.notifications_none,color: Colors.white,
                ),
              )
            ],
          ),
          Text('Let\'s find \nyour top doctor!',style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize:32,
            fontFamily: 'Teko'
          ),),
          SizedBox(height: 40,),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 40,
                color: Colors.grey[600],
              ),

              filled: true,
              fillColor: Colors.white,
              hintText:'Search Here ..',
              hintStyle: TextStyle(
                fontSize: 18
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(40))
            ),
          )
        ],

      ),
    );
  }
}
