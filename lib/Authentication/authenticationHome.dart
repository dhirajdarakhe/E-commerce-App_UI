import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_task/Authentication/signUp.dart';
import 'package:internship_task/shared.dart';


class authHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;


    return Scaffold(
     body: Padding(
       padding: EdgeInsets.fromLTRB(m2*0.04, 0, m2*0.024, 0),
       child: Column(
         children: [
           SizedBox(height: m1*0.2,),
           Text("BUYSY",style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: m1*0.07,color:Color(0xFF02C39A),fontWeight: FontWeight.w600)),),
           SizedBox(height: m1*0.2,),
           Hero(
             tag: "signIn",
             child: raisedButton("Already a customer? Sign In",context, SignUp(true), m1, m2)
           ),
           SizedBox(height: m1*0.018,),
           Hero(
             tag: "register",
             child: OutlineButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp(false)));
             } ,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 borderSide: BorderSide(color: Color(0xFF02C39A)),
             child: Container(
               height: m1*0.072,
               child: Center(
                 child: Text("New to Buysy.in? Create an account",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02C39A))),
               ),
               ),
             )),
           )
         ],
       ),
     ),
    );
  }
}
