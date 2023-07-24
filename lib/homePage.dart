import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_task/cart.dart';
import 'package:internship_task/shared.dart';
import 'package:internship_task/Authentication/authenticationHome.dart';
import 'package:internship_task/yourAcc.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;

    Image img1 = Image.asset("assets/bag.jpeg");
    Image img2 = Image.asset("assets/bag.jpeg");
    Image img3 = Image.asset("assets/bag.jpeg");
    Image img4 = Image.asset("assets/bag.jpeg");
    Image img5 = Image.asset("assets/bag.jpeg");
    Image img6 = Image.asset("assets/bag.jpeg");

    List<Widget> imgList = [img1, img2, img3, img4, img5, img6];

    Widget category(String asset, String text, Color color) {
      return Column(
        children: [
          RawMaterialButton(
            onPressed: () {},
            elevation: 5.0,
            fillColor: color,
            child: CircleAvatar(
              backgroundColor: color,
              child: SvgPicture.asset(
                asset,
                height: m1 * 0.05,
              ),
              radius: m1 * 0.039,
            ),
            shape: CircleBorder(),
          ),
          SizedBox(
            height: m1 * 0.01,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xff181725),
                    fontWeight: FontWeight.w500,
                    fontSize: m2 * 0.035)),
          ),
        ],
      );
    }

    Widget object(String asset, String offer)
    {
      return Stack(
        children: [
          Container(
            height: m1*0.34,
            width: m2*0.45,
          ),
          Positioned(
            top: m1*0.007,
            right: m2*0.015,
            child: Container(
              height: m1*0.25,
              width: m2*0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffdddddd)
              ),
              child: Center(child: Image.asset(asset,height: m1*0.15,)),
            ),
          ),
          Positioned(
            top: 0,
              right:0,
              child: CircleAvatar(
                radius: m1*0.035,
                backgroundColor: Color(0xff02c39a),
                child: Text(offer,style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: m2 * 0.035))),
              ))
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
    },),
        ],
        backgroundColor: Color(0xFF02c39a),
      ),
      drawer: drawer(context,m1,m2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Color(0xFF02c39a),
                padding: EdgeInsets.fromLTRB(m2 * 0.05, 0, m2 * 0.05, m1 * 0.013),
                child: Column(
                  children: [
                    Text(
                      "Zacky!! Welcome to BUYSY",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: m2 * 0.05)),
                    ),
                    SizedBox(
                      height: m1 * 0.016,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 10,
                      child: Container(
                        padding:
                            EdgeInsets.fromLTRB(m2 * 0.025, 0, m2 * 0.025, 0),
                        width: double.infinity,
                        height: m1 * 0.05,
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black),
                            SizedBox(
                              width: m2 * 0.03,
                            ),
                            Container(
                              width: m2 * 0.45,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: m1 * 0.019,
                                            fontWeight: FontWeight.w400))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: m1 * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: m2 * 0.01,
                        ),
                        Text("Deliver to Clooney- San Francisco 28",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: m1 * 0.016,
                                    fontWeight: FontWeight.w400))),
                      ],
                    ),
                  ],
                )),
            Container(
              height: m1 * 0.15,
              padding: EdgeInsets.all(m1 * 0.018),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  category("assets/dress.svg", "FASHION", Color(0xffffdab9)),
                  category("assets/dress.svg", "MOBILES", Color(0xffCDEAC0)),
                  category("assets/dress.svg", "GROCERY", Color(0xffE0FBFC)),
                  category("assets/dress.svg", "SHOES", Color(0xff979797)),
                  category("assets/dress.svg", "FURNITURE", Color(0xffFEF7E4))
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
        Stack(
          children: [
            Container(
              height: m1*0.24,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/bag1.jpeg",
                      ),
                      fit: BoxFit.fill)),
            ),
            Positioned(
                top: m1*0.018,
                left: m2*0.04,
                child: Column(
                  children: [
                    Text(
                      "TRAVEL BAGS",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: m2 * 0.04)),
                    ),
                    Text(
                      "50-80 % OFF",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: m2 * 0.04)),
                    )
                  ],
                )),
            Positioned(
              top: m1*0.2,
              left: m2*0.42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((ind) {
                  int index = imgList.indexOf(ind);
                  return Padding(
                    padding: EdgeInsets.all(m1 * 0.006),
                    child: CircleAvatar(
                      radius: m1 * 0.006,
                      backgroundColor: index == 1 ? Colors.white : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
            SizedBox(height: m1*0.02,),
            Stack(
              children: [
                Container(
                  height: m1*0.24,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/ihone.jpeg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    top: m1*0.018,
                    left: m2*0.04,
                    child: Column(
                      children: [
                        Text(
                          "IPHONE 11 PRO MAX",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: m2 * 0.04)),
                        ),
                        Text(
                          "10-20% OFF ON EMI PAYMENTS",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: m2 * 0.04)),
                        )
                      ],
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(m1*0.01),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "DEALS OF THE DAY",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: m2 * 0.04)),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              height: m1*0.3,
              padding: EdgeInsets.fromLTRB(m2*0.04,m1*0.013,m2*0.04,m1*0.013),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  object("assets/hbag.jpeg", "70%"),
                  SizedBox(width: m2*0.03,),
                  object("assets/hbag.jpeg", "20%"),
                  SizedBox(width: m2*0.03,),
                  object("assets/hbag.jpeg", "60%"),
                  SizedBox(width: m2*0.03,),
                  object("assets/hbag.jpeg", "40%")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
