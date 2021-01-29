import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:subasta/Views/login.dart';
import 'package:subasta/widgets/Lists.dart';
import 'package:subasta/widgets/appBar.dart';
import 'package:subasta/widgets/cards.dart';
import 'package:subasta/widgets/colors.dart';

import 'offers.dart';





class home extends StatefulWidget {
  @override
  _homeState createState() => new _homeState();
}

class _homeState extends State<home> {



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
        appBar: mainAppBar(),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: height/40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 6),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color: basicColor,fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(text: "Ofertas Disponibles"),
                          ]
                      ),
                    ),
                  ),
                  Container(
//                color: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                    height: MediaQuery.of(context).size.height * 0.40,

                    child: myPersonalCard()
                  ),

                ],
              ),
            ),

            SizedBox(
                height: 20,
            ),
            Expanded(
              flex:2,
                child: Wrap
                  (
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    //offer Button
                    Container(
                      width: MediaQuery.of(context).size.width/1.4,
                      height: MediaQuery.of(context).size.height/16,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(
                              color: basicColor,
                            )),
                        color: basicColor,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                curve: Curves.bounceOut,
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: Duration(milliseconds: 1000),
                                alignment: Alignment.topCenter,
                                child: offerPage(),
                              ));


                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ver más ofertas ",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Icon(Icons.skip_next_outlined)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.grey,fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(text: "¿Ya tienes una cuenta? "),
                            TextSpan(text: "Inicia sesión", style: CustomTextStyle.display1(context),
                                recognizer: TapGestureRecognizer() .. onTap = (){
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        type: PageTransitionType.rightToLeftWithFade,
                                        duration: Duration(milliseconds: 1000),
                                        alignment: Alignment.topCenter,
                                        child: logIn(),
                                      ));
                                }
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.6,
                      height: MediaQuery.of(context).size.height/14,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(
                              color: online,
                            )),
                        color: online,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {


                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(

                              TextSpan(
                                  children: <InlineSpan>[
                                    TextSpan(text: "CONTACTANOS ",),
                                    TextSpan(text: "\nvía whatsapp",),
                                  ]
                              ),
                            ),

                            Image(image: AssetImage("images/whatsapp.png"),)
                          ],
                        ),
                      ),
                    ),

                  ],
                )),



            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text("¡Síguenos!",
                    style: TextStyle(fontWeight: FontWeight.bold,color: basicColor),),

                  SizedBox(height: 6,),
                  Wrap(
                    spacing: 10,
                    children: [
                      Image(image: AssetImage("images/facebook.png"),height: 22,width: 22,),
                      Image(image: AssetImage("images/insta.png"),height: 22,width: 22),
                    ],
                  )

                ],
              ),



            )
          ],
        ),

    );
  }

}