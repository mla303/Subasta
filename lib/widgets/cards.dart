import 'package:flutter/material.dart';
import 'package:subasta/widgets/Lists.dart';

import 'colors.dart';

class myPersonalCard extends StatefulWidget {
  @override
  _myPersonalCardState createState() => _myPersonalCardState();
}

class _myPersonalCardState extends State<myPersonalCard> {



  String noOferta = "171";
  String perso_Total = "192(KG)";
  String cantidad = "1";
  String precio_Total = "\$9,600.000";

  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      duration: Duration(seconds: 2),
        content: new Text(value)
    ));
  }


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;



    return ListView.separated(
        itemCount: offersList.length,
        shrinkWrap: false,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: ()
            {

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width / 1.2,

                // decoration: ,
                child: Card(
                  elevation: 3,
                  shadowColor: Colors.grey,
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    // side: BorderSide(width: 1,color: Colors.grey[200])
                  ),
                  child: Wrap(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //image with title and address
                      Stack(
                        children: [


                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                offersList[index].imgeUrl,
                                height: MediaQuery.of(context).size.height *
                                    0.24,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Positioned(
                              left: 10,
                              bottom: 80,
                              right: 0,

                              child: Icon(Icons.play_circle_fill_rounded,color: declineColor,size: 34,)),

                          Positioned(
                              bottom:1,
                              right: 12,

                              child: Icon(Icons.share,color: declineColor,)),

                          Positioned(
                            left: 15,
                            bottom: 15,
                            right: 0,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  offersList[index].videoTitle,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height / 36,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_rounded,color: declineColor, size: 12,),
                                    Text(  offersList[index].addres, style: TextStyle(fontSize: 12,color: Colors.white)),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),




                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 6,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text.rich(
                                  TextSpan(
                                      children: <InlineSpan>[
                                        TextSpan(text: "No Oferta: ",
                                          style: CustomTextStyle.display1(context),),
                                        TextSpan(text: offersList[index].noOferta,
                                          style: CustomTextStyle.display2(context),),
                                      ]
                                  ),
                                ),
                                //peso total
                                Text.rich(
                                  TextSpan(
                                      children: <InlineSpan>[
                                        TextSpan(text: "Peso Total: ",
                                          style: CustomTextStyle.display1(context),),
                                        TextSpan(text: offersList[index].persoTotal,
                                          style: CustomTextStyle.display2(context),),
                                      ]
                                  ),
                                ),

                                //cantidad
                                Text.rich(
                                  TextSpan(
                                      children: <InlineSpan>[
                                        TextSpan(text: "Cantidad: ",
                                          style: CustomTextStyle.display1(context),),
                                        TextSpan(text: offersList[index].cantidad,
                                          style: CustomTextStyle.display2(context),),
                                      ]
                                  ),
                                ),

                                //precio total
                                Text.rich(
                                  TextSpan(
                                      children: <InlineSpan>[
                                        TextSpan(text: "Precio Total: ",
                                          style: CustomTextStyle.display1(context),),
                                        TextSpan(text: offersList[index].Preciototal,
                                          style: CustomTextStyle.display2(context),),
                                      ]
                                  ),
                                ),

                              ],
                            ),

                            Container(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width/4,
                              height: MediaQuery.of(context).size.height/22,
                              child: RaisedButton(
                                onPressed: ()
                                {
                                  showInSnackBar("Inicia sesión primero, gracias ^.^");
                                },
                                disabledColor: basicColor,
                                focusColor: basicColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  // side: BorderSide(
                                  //   color: basicColor,
                                  // )
                                ),
                                color: basicColor,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Pujar a \$XXX",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(width: width/8,height: 13,),


                      GestureDetector(
                          onTap: (){
                            showInSnackBar("Inicia sesión primero, gracias ^.^");
                          },
                          child: Center(child: Text(  "ver más...", style: TextStyle(fontSize: 12,color: Colors.grey)))),


                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        }
    );
  }
}













class CustomTextStyle {
  static TextStyle display1(BuildContext context) {
    return TextStyle(
        color: basicColor,
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.bold);
  }
  static TextStyle display2(BuildContext context) {
    return TextStyle(
        color: basicColor,
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.w400);
  }
  static TextStyle title(BuildContext context) {
    return TextStyle(
        color: basicColor,
        fontSize: MediaQuery.of(context).size.height / 40,
        fontWeight: FontWeight.w400);
  }
}
