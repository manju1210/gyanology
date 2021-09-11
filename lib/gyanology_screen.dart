
import 'package:flutter/material.dart';
import 'package:gyanology/ssc_cgl_test1_screen.dart';
import 'package:gyanology/test_screen.dart';
import 'package:gyanology/widgets/functions.dart';

class GyanologyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _GyanologyScreenState();
  }
}
class _GyanologyScreenState extends State<GyanologyScreen>{
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
      body:ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 10.0,top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              buildTextWidget("The Gyanology", Colors.black,textSize: 19,fontWeight: FontWeight.w600,letterSpacing: 0.5),
                Spacer(),
                Row(
                  children: [
                    buildTextWidget("Home", Colors.black,textSize: 14,textDecoration: TextDecoration.underline),
                    SizedBox(width: 5,),
                    buildTextWidget("About Us", Colors.black,textSize: 14,textDecoration: TextDecoration.underline),
                    SizedBox(width: 5,),
                    buildTextWidget("Contact Us", Colors.black,textSize: 14,textDecoration: TextDecoration.underline),
                    SizedBox(width: 5,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.76,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black54,width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                          buildTextWidget("Your Test has Been \nsubmitted successfully", Colors.green,textSize:18,align:TextAlign.center,fontWeight: FontWeight.bold,letterSpacing: 0.6),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.055,),
                          buildTextWidget("Now you can check your result here \nclick for complete \nanalysis, advice and result ", Colors.pink,textSize:16,align:TextAlign.center,fontWeight: FontWeight.w600),
                          SizedBox(height: 20,),
                          Image(image: AssetImage("assets/arrow_downword.jpg"),height: 50,width: 50,),
                          SizedBox(height: 15,),
                          Image(image: AssetImage("assets/think_emoji.png"),height: 120,width: 120,),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TestScreen()),);
                            },
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.3,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.deepPurpleAccent,
                              ),
                              child: buildTextWidget("Test Result", Colors.white,textSize: 16,fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 25.0),
                      child: Row(
                        children: [
                          buildTextWidget("Today's 25 toppers", Colors.red,textSize:15,textDecoration: TextDecoration.underline),
                          Spacer(),
                          buildTextWidget("Today's top institutes", Colors.red,textSize:15,textDecoration: TextDecoration.underline),
                        ],
                      ),
                    ),
                    SizedBox(height: 7,),
                    Center(
                      child: buildTextWidget("All India Top Ranks", Colors.red,textSize: 15,textDecoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
  
}