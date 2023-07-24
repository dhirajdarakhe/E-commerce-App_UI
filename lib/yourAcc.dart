import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_task/shared.dart';

class yourAcc extends StatefulWidget {
  @override
  _yourAccState createState() => _yourAccState();
}

class _yourAccState extends State<yourAcc> {

  @override
  Widget build(BuildContext context) {

    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF02c39a),
        elevation: 0,
        title: RichText(
          text: TextSpan(
              text: "Hello, ",
              style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xff7c4c4c4),fontWeight: FontWeight.w600,fontSize: m1*0.026)),
              children: [
                TextSpan(
                  text: "Zackky John  ",
                  style:GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: m1*0.026)),

                )
              ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(m2 * 0.05, m1*0.03, m2 * 0.05, m1 * 0.013),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: m1*0.14,
                        width: m1*0.14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/man.jpeg',),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: m1*0.013,),
                      Text("Change Picture",style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w500,
                              fontSize: m2 * 0.04)),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: m1*0.08,),
              textField("Change your account name", Color(0xffd9d9d9)),
              textField("Change your password", Color(0xffd9d9d9)),
              SizedBox(height: m1*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Enhance the product",style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w500,
                          fontSize: m2 * 0.04)),),
                ],
              ),
              SizedBox(height: m1*0.02),
              outlineButton(context,m1,"Reviews and feedback window"),
              outlineButton(context,m1,"Questions and Answers asked"),
              SizedBox(height: m1*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your purchases",style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w500,
                          fontSize: m2 * 0.04)),),
                ],
              ),
              SizedBox(height: m1*0.02),
              outlineButton(context,m1,"Earlier purchases"),
              outlineButton(context,m1,"Get into shopping with us!"),
              SizedBox(height: m1*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your Addresses",style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w500,
                          fontSize: m2 * 0.04)),),
                ],
              ),
              SizedBox(height: m1*0.02),
              outlineButton(context,m1,"Existing address"),
              outlineButton(context,m1,"Add a new address"),
              SizedBox(height: m1*0.02),
          RaisedButton(
            onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Color(0xFF02C39A),
              child: Container(
                height: m1*0.072,
                child: Center(
                  child: Text("Update",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),fontWeight: FontWeight.w500),),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
