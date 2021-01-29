
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:subasta/Views/login.dart';
import 'package:subasta/widgets/Lists.dart';
import 'package:subasta/widgets/appBar.dart';
import 'package:subasta/widgets/cards.dart';
import 'package:subasta/widgets/colors.dart';
import 'package:subasta/widgets/offersCardDesign.dart';





class offerPage extends StatefulWidget {
  @override
  _offerPageState createState() => new _offerPageState();
}

class _offerPageState extends State<offerPage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: mainAppBar(),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[

          //heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 16),
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


          Expanded(
            // flex: 2,
            child: offerCardDesign(),
          ),


        ],
      ),

    );
  }

}