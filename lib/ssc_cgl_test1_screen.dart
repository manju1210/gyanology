
import 'package:flutter/material.dart';
import 'package:gyanology/gyanology_screen.dart';
import 'package:gyanology/widgets/functions.dart';

class SscCglTest1Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SscCglTest1ScreenState();
  }
}

class _SscCglTest1ScreenState extends State<SscCglTest1Screen>{
  double _crossAxisSpacing = 8, _mainAxisSpacing = 12, _aspectRatio = 2;
  int _crossAxisCount = 10;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     resizeToAvoidBottomInset: false,
     appBar:  PreferredSize(
       preferredSize:
       Size.fromHeight(MediaQuery.of(context).size.height * 0.0018),
       child: AppBar(
         backgroundColor: Colors.white,
       ),
     ),
     body: ListView(
       shrinkWrap: true,
       physics: ScrollPhysics(),
       children: [
         SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
         Center(
           child: buildTextWidget("SSC-CGL TEST ", Colors.red,textSize: 18,fontWeight: FontWeight.w600),
         ),
         SizedBox(height: 5,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             buildTextWidget("60 Min", Colors.black,textSize: 15,fontWeight: FontWeight.w600),
             SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
             buildTextWidget("Full Length Test", Colors.black,textSize: 15,fontWeight: FontWeight.w600),
             SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
             buildTextWidget("100 Qs", Colors.black,textSize: 15,fontWeight: FontWeight.w600),
           ],
         ),
         Divider(color: Colors.black54,thickness: 1.5,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             buildTextWidget("Qs- 100", Colors.black,textSize: 15,fontWeight: FontWeight.w600),
             SizedBox(width: MediaQuery.of(context).size.width * 0.23,),
             buildTextWidget("05:52", Colors.red,textSize: 15,fontWeight: FontWeight.w600),
             SizedBox(width: MediaQuery.of(context).size.width * 0.23,),
             buildTextWidget("Back", Colors.black,textSize: 15,fontWeight: FontWeight.w600),
           ],
         ),
         SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
         Padding(
           padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10),
           child: Container(
             height: MediaQuery.of(context).size.height * 0.79,
             decoration: BoxDecoration(
               color: Colors.white60,
               borderRadius: BorderRadius.circular(5.0),
               border: Border.all(color: Colors.black54,width: 1.5),
             ),
             child: Padding(
               padding: const EdgeInsets.all(2.0),
               child: Column(
                 children: [
                   SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                   Padding(
                       padding: const EdgeInsets.only(left: 7.0,right: 7.0),
                     child: Container(
                       height: 40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(2.0),
                         border: Border.all(color: Colors.black54,width: 1),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Container(
                             height: 40,
                             width: 50,
                             decoration: BoxDecoration(
                               border: Border.all(color: Colors.black54,width: 1),
                             ),
                             child: Center(
                               child: CircleAvatar(
                                 radius: 14,
                                 backgroundColor: Colors.blue,
                               ),
                             ),
                           ),
                           SizedBox(width: 15,),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Image(image: AssetImage("assets/pencil.png"),height: 25,width: 25,),
                               SizedBox(width: 15.0,),
                               buildTextWidget("Attempted Questions", Colors.black,textSize: 15,fontWeight: FontWeight.w600)
                             ],
                           ),
                           Spacer(),
                           Container(
                             height: 40,
                             width: 50,
                             decoration: BoxDecoration(
                               border: Border.all(color: Colors.black54,width: 1),
                             ),
                             child: Center(
                               child: buildTextWidget("89", Colors.black,textSize: 15)
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                   buildAttemptedQuestionContainer(Colors.grey.shade400,Icons.circle, Icons.clear, "Not Attempted Questions", "11"),
                   SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                   buildAttemptedQuestionContainer(Colors.yellow, Icons.star,Icons.assignment, "Questions For Review", "16"),
                   SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                   Padding(
                     padding: const EdgeInsets.only(left: 7.0,right: 7.0),
                     child: GridView.builder(
                       itemCount: 10,
                       shrinkWrap: true,
                       physics: ScrollPhysics(),
                       scrollDirection: Axis.vertical,
                       controller: new ScrollController(keepScrollOffset: false),
                       itemBuilder: (context,int index){
                         return Column(
                           children: [
                             buildCircleAndNumber(Colors.grey, "0${index+1}"),
                             buildCircleAndNumberWithStar(Colors.blue, "${index+11}"),
                             buildCircleAndNumber(Colors.grey, "${index+21}"),
                             buildCircleAndNumber(Colors.green,"${index+31}"),
                             buildCircleAndNumber(Colors.grey, "${index+41}"),
                             buildCircleAndNumber(Colors.blue, "${index+51}"),
                             buildCircleAndNumber(Colors.grey, "${index+61}"),
                             buildCircleAndNumber(Colors.blue, "${index+71}"),
                             buildCircleAndNumberWithStar(Colors.grey,"${index+81}"),
                             buildCircleAndNumber(Colors.blue, "${index+91}"),
                             // SizedBox(height: 5.0,),
                           ],
                         );
                       },
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: _crossAxisCount,
                           crossAxisSpacing: _crossAxisSpacing,
                           mainAxisSpacing: _mainAxisSpacing,
                           childAspectRatio: _aspectRatio,
                           mainAxisExtent: 420.0),
                     ),
                   ),
                   SizedBox(height: 30,),
                 ],
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(bottom: 10.0),
           child: GestureDetector(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GyanologyScreen()),);
             },
             child: Center(
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width * 0.3,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.pink,
                   border: Border.all(color: Colors.black),
                 ),
                 child: buildTextWidget("Submit", Colors.white,textSize: 16,fontWeight: FontWeight.w600),
               ),
             ),
           ),
         ),
       ],
     ),
   );
  }

  /// 1 to 100 count circle and numbers
  Widget buildCircleAndNumber(Color color,String number){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CircleAvatar(
        radius: 14.5,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 13,
          backgroundColor: color,
          child: Center(
            child: buildTextWidget(number, Colors.black,fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }


  /// 1 to 100 count circle and numbers with star
  Widget buildCircleAndNumberWithStar(Color color,String number){
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CircleAvatar(
            radius: 14.5,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: color,
              child: Center(
                child: buildTextWidget(number, Colors.black,fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Positioned(
          left: 8,
          top: 3,
          child: Image(image: AssetImage("assets/star.png"),height: 12,),
        )
      ],
    );
  }

  ///first two containers
  Widget buildAttemptedQuestionContainer(Color color1,IconData icons,IconData iconData,String title,String textCount){
    return  Padding(
      padding: const EdgeInsets.only(left: 7.0,right: 7.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          border: Border.all(color: Colors.black54,width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54,width: 1),
              ),
              child: Center(
                child: Icon(icons,size: 35,color: color1,),
              ),
            ),
            SizedBox(width: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(iconData,size: 25,),
                SizedBox(width: 15.0,),
                buildTextWidget(title, Colors.black,textSize: 15,fontWeight: FontWeight.w600)
              ],
            ),
            Spacer(),
            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54,width: 1),
              ),
              child: Center(
                  child: buildTextWidget(textCount, Colors.black,textSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}