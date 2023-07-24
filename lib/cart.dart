import 'package:flutter/material.dart';
import 'package:internship_task/homePage.dart';
import 'package:internship_task/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {

    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;

    bool Value = false;

    Widget card(String title,String price,String status,String asset)
    {
      return Container(
        padding: EdgeInsets.fromLTRB(m2*0.04, m1*0.02, m2*0.04, m1*0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: Value,
                  onChanged: (value)
                  {
                    setState(() {
                      Value = true;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title, style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Color(0xff181725),
                            fontWeight: FontWeight.w500,
                            fontSize: m2 * 0.035)),),
                  ],
                ),
                SizedBox(height: m1*0.007,),
                Text("Special Design",style:GoogleFonts.montserrat(
                textStyle: TextStyle(
                color: Color(0xffc4c4c4),
          fontWeight: FontWeight.w500,
          fontSize: m2 * 0.035)),),
                SizedBox(height: m1*0.007,),
                RichText(
                  text: TextSpan(
                      text: price +"  ",
                      style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w500)),
                      children: [
                        TextSpan(
                            text: status,
                            style:GoogleFonts.montserrat(textStyle: TextStyle(color: status=="In Stock" ? Colors.green: Colors.grey,fontWeight: FontWeight.w600)),
                            
                        )
                      ]
                  ),
                ),
                SizedBox(height: m1*0.007,),
                Row(
                  children: [
                    Container(
                      height: m1*0.05,
                      color: Color(0xffd9d9d9),
                      child: 
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.remove), onPressed: null),
                          Text("1"),
                          IconButton(icon: Icon(Icons.add), onPressed: null),
                        ],
                      ),
                    ),
                    SizedBox(width: m2*0.01 ,),
                    Container(                             height: m1*0.05,
                        color: Color(0xffd9d9d9),
                        child: Icon(Icons.delete))
                  ],
                )
              ],
            ),
            SizedBox(width: m2*0.01 ,),
            Image.asset(asset,height: m1*0.14,width: m2*0.35,)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: ()
          {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
          },),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: drawer(context,m1,m2),
      body: Builder(
        builder: (BuildContext context){
          return SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child:Container(
                    padding: EdgeInsets.fromLTRB(m2*0.06, m1*0.02, m2*0.03, m1*0.015),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("CART",style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xff181725),
                                    fontWeight: FontWeight.w500,
                                    fontSize: m2 * 0.05)),),
                            IconButton(icon: Icon(Icons.menu,size: m1*0.04,), onPressed: ()
                            {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => drawer(context,m1,m2)));
                              Scaffold.of(context).openDrawer();
                            })
                          ],
                        ),
                        SizedBox(height: m1*0.01,),
                        Row(
                          children: [
                            Text("3 items",style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontWeight: FontWeight.w500,
                                    fontSize: m2 * 0.035)),),
                            SizedBox(width: m2*0.11,),
                            Icon(Icons.check,size: m2*0.05,),
                            SizedBox(width: m2*0.005,),
                            Text("Select all",style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xff181725),
                                    fontWeight: FontWeight.w500,
                                    fontSize: m2 * 0.035)),),
                            SizedBox(width: m2*0.02,),
                            Icon(Icons.delete,size: m2*0.05,),
                            SizedBox(width: m2*0.005,),
                            Text("Delete selected",style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xff181725),
                                    fontWeight: FontWeight.w500,
                                    fontSize: m2 * 0.035)),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                card("Artsy","12","In Stock","assets/hbag.jpeg"),
                card("Skybag","12","In Stock","assets/bag.jpeg"),
                card("Iphone 12 mini","36","Out of Stock","assets/ihone.jpeg"),
                SizedBox(height: m1*0.01,),
                Padding(
                  padding: EdgeInsets.all(m1*0.03),
                  child: RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: Color(0xFF02C39A),
                      child: Container(
                        height: m1*0.072,
                        child: Center(
                          child: Text("Check Out",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),fontWeight: FontWeight.w500),),
                        ),
                      )),
                )
              ],
            ),
          );
        },
        // child:
      )
    );
  }
}
