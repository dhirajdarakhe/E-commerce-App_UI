import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_task/Authentication/authenticationHome.dart';
import 'package:internship_task/cart.dart';
import 'package:internship_task/homePage.dart';
import 'package:internship_task/yourAcc.dart';

Widget raisedButton(String title,BuildContext context, Widget widget,double m1, double m2)
{
  return RaisedButton(
      onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => widget));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Color(0xFF02C39A),
      child: Container(
        height: m1*0.072,
        child: Center(
          child: Text(title,style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),fontWeight: FontWeight.w500),),
        ),
      ));
}

Widget textField(String text, Color color)
{
  return Material(
    child: TextFormField(
      decoration: InputDecoration(
          hintText: text,
          hintStyle:  GoogleFonts.montserrat(textStyle: TextStyle(color: color,fontWeight: FontWeight.w500))
      ),
    ),
  );
}

Widget outlineButton(BuildContext context, double m1, String text)
{
  return OutlineButton(onPressed: (){
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  } ,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF181725)),
      child: Container(
        height: m1*0.072,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xfff979797))),
        ),
              Icon(Icons.keyboard_arrow_right,color: Color(0xfff979797),)
            ],
          ),
      ));
}

Drawer drawer(BuildContext context, double m1, double m2,)
{
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(m2*0.03, m1*0.12, m2*0.03, m1*0.015),
          color: Color(0xff02c39a),
          child: Row(
            children: [
              RichText(
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
              Image.asset("assets/man.jpeg",height: m1*0.06,)
            ],
          ),
        ),
        Divider(height: 2,color: Colors.white,),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(m2*0.06, m1*0.08, m2*0.03, m1*0.015),
            color: Color(0xff02c39a),
            child: Column(
              children: [

                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
                  },
                  leading: Image.asset("assets/home.png",height: m1*0.025,),
                  title:Text("Home",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
                  },
                  leading: Image.asset("assets/category.png",height: m1*0.025,),
                  title:Text("Shop by Category",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => yourAcc()));
                  },
                  leading: Image.asset("assets/user.png",height: m1*0.025,),
                  title:Text("Your account",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => yourAcc()));
                  },
                  leading: Image.asset("assets/account.png",height: m1*0.025,),
                  title:Text("Change Account",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
                  },
                  leading: Image.asset("assets/cart.png",height: m1*0.025,),
                  title:Text("Your Cart",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  leading: Image.asset("assets/order.png",height: m1*0.025,),
                  title:Text("Your Orders",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  leading: Image.asset("assets/wishlist.png",height: m1*0.025,),
                  title:Text("Your Wishlist",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => authHome()));
                  },
                  leading: Image.asset("assets/logout.png",height: m1*0.025,),
                  title:Text("LogOut",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
