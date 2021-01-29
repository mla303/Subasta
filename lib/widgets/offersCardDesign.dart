import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:subasta/widgets/Lists.dart';

import 'cards.dart';
import 'colors.dart';

class offerCardDesign extends StatefulWidget {
  @override
  _offerCardDesignState createState() => _offerCardDesignState();
}

class _offerCardDesignState extends State<offerCardDesign> {
  ///If the box is expanded
  bool _isExpanded = false;

  ///Toogle the box to expand or collapse
  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }


  var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),
      animationDuration: Duration(milliseconds: 500),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle(
        color: basicColor,
      ),
      constraints: BoxConstraints.expand(width: 300),
      //First to chars "55" represents transparency of color
      overlayColor: Color(0x55000000),
      alertElevation: 0,
      alertAlignment: Alignment.center
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scrollbar(
      thickness: 2,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8),
        //list of offers
        child: ListView.separated(
            itemCount: offersList.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),

                //main Card started
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
                              opacity: 0.6,
                              child: Image.asset(
                                offersList[index].imgeUrl,
                                height:
                                    MediaQuery.of(context).size.height * 0.24,
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

                          //shre icon
                          Positioned(
                              bottom: 1,
                              right: 12,
                              child: Icon(
                                Icons.share,
                                color: declineColor,
                              )),

                          //title and location
                          Positioned(
                            left: 15,
                            bottom: 15,
                            right: 0,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
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
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: declineColor,
                                      size: 12,
                                    ),
                                    Text(offersList[index].addres,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),


                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 6, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(children: <InlineSpan>[
                                    TextSpan(
                                      text: "No Oferta: ",
                                      style:
                                          CustomTextStyle.display1(context),
                                    ),
                                    TextSpan(
                                      text: offersList[index].noOferta,
                                      style:
                                          CustomTextStyle.display2(context),
                                    ),
                                  ]),
                                ),
                                Text.rich(
                                  TextSpan(children: <InlineSpan>[
                                    TextSpan(
                                      text: "Peso Total: ",
                                      style:
                                          CustomTextStyle.display1(context),
                                    ),
                                    TextSpan(
                                      text: offersList[index].persoTotal,
                                      style:
                                          CustomTextStyle.display2(context),
                                    ),
                                  ]),
                                ),
                                Text.rich(
                                  TextSpan(children: <InlineSpan>[
                                    TextSpan(
                                      text: "Cantidad: ",
                                      style:
                                          CustomTextStyle.display1(context),
                                    ),
                                    TextSpan(
                                      text: offersList[index].cantidad,
                                      style:
                                          CustomTextStyle.display2(context),
                                    ),
                                  ]),
                                ),
                                Text.rich(
                                  TextSpan(children: <InlineSpan>[
                                    TextSpan(
                                      text: "Precio Total: ",
                                      style:
                                          CustomTextStyle.display1(context),
                                    ),
                                    TextSpan(
                                      text: offersList[index].Preciototal,
                                      style:
                                          CustomTextStyle.display2(context),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Container(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width /4,
                              height:
                                  MediaQuery.of(context).size.height / 22,
                              child: RaisedButton(
                                onPressed: (){
                                  Alert(
                                    context: context,
                                    style: alertStyle,
                                    // type: AlertType.success,
                                    title: "Tu Paleta es la #66",
                                    image: Icon(Icons.warning_sharp,color: declineColor,size: 50,),

                                    desc: "Toro #GYROLANDO (3/8 Gyr x 5/8 Holstein) -Madre F1 Gyrolanda PLUS, Pica en",
                                    buttons: [
                                      DialogButton(
                                          child: Text(
                                            "No",
                                            style: TextStyle(color: basicColor, fontSize: 20),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            // Navigator.pushReplacement(
                                            //     context,
                                            //     PageTransition(
                                            //       curve: Curves.bounceOut,
                                            //       type: PageTransitionType.rightToLeftWithFade,
                                            //       duration: Duration(milliseconds: 800),
                                            //       alignment: Alignment.topCenter,
                                            //       child: jobs_page(),
                                            //     ));
                                          },
                                          color: Color.fromRGBO(255, 255, 255, 1.0),
                                          radius: BorderRadius.circular(0.0,),
                                          border: Border.all(
                                              color: basicColor
                                          )
                                      ),
                                      DialogButton(
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          // Navigator.pushReplacement(
                                          //     context,
                                          //     PageTransition(
                                          //       curve: Curves.bounceOut,
                                          //       type: PageTransitionType.rightToLeftWithFade,
                                          //       duration: Duration(milliseconds: 800),
                                          //       alignment: Alignment.topCenter,
                                          //       child: jobs_page(),
                                          //     ));
                                        },
                                        color: Color.fromRGBO(50, 80, 120, 1.0),
                                        radius: BorderRadius.circular(0.0),
                                      ),
                                    ],
                                  ).show();
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


                      ExpandedSection(
                        expand: _isExpanded,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 0, right: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(children: <InlineSpan>[
                                          TextSpan(
                                            text: "Incremento Puja: ",
                                            style: CustomTextStyle.display1(
                                                context),
                                          ),
                                          TextSpan(
                                            text: offersList[index]
                                                .incrementoPuja,
                                            style: CustomTextStyle.display2(
                                                context),
                                          ),
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: <InlineSpan>[
                                          TextSpan(
                                            text: "Precio Kilo: ",
                                            style: CustomTextStyle.display1(
                                                context),
                                          ),
                                          TextSpan(
                                            text: offersList[index]
                                                .precioKilo,
                                            style: CustomTextStyle.display2(
                                                context),
                                          ),
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: <InlineSpan>[
                                          TextSpan(
                                            text: "Puja Actual: ",
                                            style: CustomTextStyle.display1(
                                                context),
                                          ),
                                          TextSpan(
                                            text: offersList[index]
                                                .pujaActual,
                                            style: CustomTextStyle.display2(
                                                context),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(children: <InlineSpan>[
                                          TextSpan(
                                            text: "Precio Animal: ",
                                            style: CustomTextStyle.display1(
                                                context),
                                          ),
                                          TextSpan(
                                            text: offersList[index]
                                                .precioAnimal,
                                            style: CustomTextStyle.display2(
                                                context),
                                          ),
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: <InlineSpan>[
                                          TextSpan(
                                            text: "Peso Pro: ",
                                            style: CustomTextStyle.display1(
                                                context),
                                          ),
                                          TextSpan(
                                            text: offersList[index].pesoPro,
                                            style: CustomTextStyle.display2(
                                                context),
                                          ),
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: <InlineSpan>[
                                          TextSpan(
                                            text: "Precio Total: ",
                                            style: CustomTextStyle.display1(
                                                context),
                                          ),
                                          TextSpan(
                                            text: offersList[index]
                                                .precioTotal,
                                            style: CustomTextStyle.display2(
                                                context),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                // width: 300.0,
                                // height: double.infinity,
                                child: Text.rich(
                                  TextSpan(children: <InlineSpan>[
                                    TextSpan(
                                      text: "Observaiones: \n",
                                      style:
                                          CustomTextStyle.display1(context),
                                    ),
                                    TextSpan(
                                      text: offersList[index].observaciones,
                                      style:
                                          CustomTextStyle.display2(context),
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: _toogleExpand,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: Center(
                              child: Text(
                                  _isExpanded == false
                                      ? "ver más..."
                                      : "ver menos",
                                  style: TextStyle(
                                      fontSize: 12, color: basicColor))),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            }),
      ),
    );
  }
}

class ExpandedSection extends StatefulWidget {
  final Widget child;
  final bool expand;
  ExpandedSection({this.expand = false, this.child});

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  AnimationController expandController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    Animation curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0, sizeFactor: animation, child: widget.child);
  }
}
