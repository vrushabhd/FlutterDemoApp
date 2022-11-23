import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'application/text_field_contoller.dart';
import 'common/palette.dart';
import 'common/profile_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //   primarySwatch: Colors.lime,
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black)))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextFieldController>(
        init: TextFieldController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {},
              ),
              centerTitle: true,
              title: Text("My Demo XD "),
            ),
            body: Container(
              color: Colors.white70,
              width: MediaQuery.of(context).size.width,
              // width as wide as available space
              height: MediaQuery.of(context).size.height,
              //       child: Stack(
              //         alignment: Alignment.topLeft,
              //         children: [
              //         CircleAvatar(radius: 40.0,backgroundColor: Colors.red,),
              //       Positioned(top: 10 ,right:10,child:CircleAvatar(radius: 10.0,backgroundColor: Colors.green,)),
              //
              //
              //
              //         //   mainAxisSize: MainAxisSize.min,
              //         //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         //      crossAxisAlignment: CrossAxisAlignment.center,
              //
              // ] ),

              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 20),
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.0),
                            color: Color(0XFFE1E1E1)),
                        // color: Colors.grey,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 40.0,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage:
                                        AssetImage('assets/images/dp.jpg'),
                                  ),
                                ),
                                Positioned(
                                    top: 5,
                                    right: 5,
                                    child: CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 6.0,
                                        backgroundColor: Colors.green,
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ProfileInfoWidget(
                                    name: "Vrushabh",
                                    designation: "Software Engineer"),
                                // Container(
                                //   padding: EdgeInsets.all(6.0),
                                //   child: Text("Vrushabh",
                                //       style: TextStyle(
                                //           fontWeight: FontWeight.bold, fontSize: 15,fontFamily:'Calistoga' )),
                                // ),

                                // Container(
                                //   padding: EdgeInsets.all(6.0),
                                //   child: Text("Software Engineer",
                                //       style: TextStyle(
                                //           fontWeight: FontWeight.bold, fontSize: 15,fontFamily:'Calistoga' )),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 40, top: 20, right: 0, bottom: 25),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF1426C7).withOpacity(0.80),
                                  blurRadius: 4.0,
                                  spreadRadius: 0,
                                  offset: Offset(0, 7))
                            ],
                            color: Color(0XFFE1E1E1)),
                        // color: Colors.grey,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text( '${controller.userEnteredInput}',

                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: 'Calistoga')),
                                // Container(
                                //   padding: EdgeInsets.all(6.0),
                                //   child: Text("Vrushabh",
                                //       style: TextStyle(
                                //           fontWeight: FontWeight.bold, fontSize: 15,fontFamily:'Calistoga' )),
                                // ),

                                // Container(
                                //   padding: EdgeInsets.all(6.0),
                                //   child: Text("Software Engineer",
                                //       style: TextStyle(
                                //           fontWeight: FontWeight.bold, fontSize: 15,fontFamily:'Calistoga' )),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(9),
                    ],
                    onChanged: controller.onTextChanged,
                    decoration: InputDecoration(
                        hintText: "This is My Status",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Calistoga'), //<-- SEE HERE

                        prefixIcon: Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0))),
                  ),
                  Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.only(top: 10),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (ctx, index) {
                          // padding - space between internal elements.
                          // Margin - space between  two widgets.
                          return Container(
                            child: Stack(
                              children: [
                                Container(
                                    child: Text("Vrushabh",
                                        textAlign: TextAlign.center),
                                    width: 150,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: getColor(index),
                                        borderRadius:
                                            BorderRadius.circular(16.0)))
                              ],
                            ),

                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFE1E1E1),
                                borderRadius: BorderRadius.circular(16.0)),
                            //  color: Colors.orange,
                            margin: const EdgeInsets.only(right: 10),
                          );
                        }),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 10, bottom: 5, left: 6, right: 6),
                    height: 5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF383CC1),
                        borderRadius: BorderRadius.circular(16.0)),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 15, bottom: 70, left: 6, right: 6),
                    height: 335,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFE1E1E1),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100,
                                height: 30,
                                //  color: Colors.lightGreen,
                                margin: EdgeInsets.only(left: 50, top: 50),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5B5B53),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                //   color: Colors.lightGreen,
                                margin: EdgeInsets.only(right: 50, top: 50),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5B5B53),
                                ),
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(40),
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5B5B53),
                                    ))
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100,
                                height: 30,
                                //  color: Colors.lightGreen,
                                margin: EdgeInsets.only(left: 50, top: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5B5B53),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                //   color: Colors.lightGreen,
                                margin: EdgeInsets.only(right: 50, top: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5B5B53),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20, bottom: 10, left: 6, right: 6),
                            height: 5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xFF383CC1),
                                borderRadius: BorderRadius.circular(16.0)),
                          ),
                          Container(
                            //       margin: EdgeInsets.only(bottom: 30),
                            padding: EdgeInsets.only(left: 8),
                            width: 160,
                            height: 69,
                            decoration: BoxDecoration(
                                color: Color(0xFFE48787),
                                borderRadius: BorderRadius.circular(40.0)),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.black,
                                      child: CircleAvatar(
                                        radius: 26,
                                        backgroundColor: Color(0XFF828EF1),
                                      ),
                                    ),
                                    Positioned(
                                        top: 3,
                                        right: 3,
                                        child: CircleAvatar(
                                          radius: 10.0,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 6.0,
                                            backgroundColor: Colors.green,
                                          ),
                                        )),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text("Vrushabh",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Color getColor(int index) {
    switch (index) {
      case 0:
        return Color(0XFFDC5757);
      case 1:
        return Colors.green;
      case 2:
        return Colors.lightBlue;
      case 3:
        return Colors.orange;
      case 4:
        return Colors.indigo;
      case 5:
        return Colors.limeAccent;
      case 6:
        return Colors.tealAccent;
      case 7:
        return Colors.deepPurpleAccent;
      case 8:
        return Colors.blueGrey;
      case 9:
        return Colors.orangeAccent;

      default:
        return Colors.white;
    }
  }
}
