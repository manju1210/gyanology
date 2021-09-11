import 'package:flutter/material.dart';
import 'package:gyanology/ssc_cgl_test1_screen.dart';
import 'package:gyanology/widgets/functions.dart';

class TestScreen extends StatefulWidget{
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String? radioValue;
  String? choice;

  void radioButtonChanges(String? value){
    setState(() {
      radioValue=value;
      switch(value){
        case 'one':choice=value;break;
        case 'two':choice=value;break;
        case 'three':choice=value;break;
        case 'four':choice=value;break;
        default:choice=null;
      }
      debugPrint(choice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          SizedBox(height: 10,),
          buildTextWidget("SSC-CGL TEST",Colors.red,align: TextAlign.center,textSize: 16.0,fontWeight: FontWeight.bold),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20.0,),
              buildTextWidget("60 Min",Colors.black,textSize: 14.0,),
              buildTextWidget("Full Length Test",Colors.black,textSize: 14.0,),
              buildTextWidget("100 Qs",Colors.black,textSize: 14.0,), SizedBox(width: 20.0,),
            ],
          ),
          Divider(color: Colors.black,thickness: 1.0,),
          Padding(
            padding: EdgeInsets.only(left:10.0,right:10.0),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTextWidget("Qs- 1/100",Colors.black,textSize: 14.0,fontWeight: FontWeight.bold),
                buildTextWidget("59:29",Colors.red,textSize: 14.0,fontWeight: FontWeight.bold),
                buildTextWidget("Qs List",Colors.black,textSize: 14.0,fontWeight: FontWeight.bold),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(7.0),
            child:Container(
              decoration: BoxDecoration(border:Border.all(color: Colors.black)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(7.0),
                      child:Container(
                          padding:EdgeInsets.only(left:5.0,top:10.0),
                          height:150.0,width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child:buildTextWidget("Q-1:  बर्मा (इस समय म्यांमार ) को प्राचीन भारत मै \nक्या कहा जाता था? ", Colors.black,fontWeight: FontWeight.bold)
                      )
                  ),
                  buildRadio("one"," (a)   मलयमंदलम"),
                  buildRadio("two"," (b)   यावद्वीप"),
                  buildRadio("three"," (c)   स्वर्णभूमी"),
                  buildRadio("four"," (d)   स्वर्णद्वीप"),
                  SizedBox(height: 100.0,),
                  Center(child:Icon(Icons.star_rate,color: Colors.black,size: 50.0,)),
                ],
              ),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SscCglTest1Screen()),);
                },
                child: Center(
                  child: Container(
                    height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(border: Border.all(color:Colors.black),
                          borderRadius: BorderRadius.circular(5.0)),
                      child:buildTextWidget("Review & Submit",Colors.black,fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child:Align(
                  alignment: Alignment.topRight,
                  child:buildTextWidget("Next", Colors.black,fontWeight: FontWeight.bold)
              ))
            ],
          )
        ],
      ),
    );
  }

  buildRadio(String radioText,String answer){
    return Padding(
        padding: EdgeInsets.all(7.0),
        child:Container(
            height:40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child:Center(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildTextWidget(answer,Colors.black,fontWeight: FontWeight.bold),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
                      value:radioText,groupValue: radioValue,
                      onChanged: radioButtonChanges,
                    ),
                  ],
                )
            )
        )
    );
  }
}
