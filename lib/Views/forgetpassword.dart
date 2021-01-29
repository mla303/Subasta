
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:subasta/Views/login.dart';
import 'package:subasta/widgets/cards.dart';
import 'package:subasta/widgets/colors.dart';





class forgetPass extends StatefulWidget {
  @override
  _forgetPassState createState() => new _forgetPassState();
}




class _forgetPassState extends State<forgetPass> {


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xfff7f7f7),

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
              title: Text("Se te olvidó tu contraseña",style: CustomTextStyle.title(context),),
            iconTheme: IconThemeData(color: basicColor),
            automaticallyImplyLeading: true
          ),
        ),

        body: Center(
          child: Container(
            width: width/1.2,
            child: Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("images/logo.png"),
                      height: MediaQuery.of(context).size.height/10,
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                        style: TextStyle(fontWeight: FontWeight.w500,color: basicColor,fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(text: "Restablecer Contraseña"),
                          TextSpan(text: "\nIngresa el correo electrónico con el que teregistraste, yte enviaremos un mail con un linkpara restablecer tu contraseña.", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: hintcolor)),
                        ]
                    ),
                  ),


                  SizedBox(height: 25,),
                  Wrap(
                    direction: Axis.vertical,

                    spacing: 8,

                    // // alignment: WrapAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Correo electrónico:", style: TextStyle(color: basicColor),),

                      //email textfield
                      Container(
                        width: width/1.2,
                        child: TextFormField(
                          style: TextStyle(
                              color: basicColor,
                              fontSize: 14
                          ),

                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                          cursorColor: basicColor,
                          decoration: new InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                              border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(30.0),
                                  ),
                                  borderSide: BorderSide(color: textfieldColor)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(30.0),
                                ),
                                borderSide: BorderSide(color: textfieldColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(30.0),
                                ),
                                borderSide: BorderSide(color: textfieldColor),
                              ),


                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800],fontSize: 14),
                              hintText: "hola@ejemplo.com",
                              fillColor: textfieldColor),
                        ),
                      ),



                    ],
                  ),

                  SizedBox(height: 20,),

                  //forget button
                  Center(
                    child: Container(
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
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                curve: Curves.bounceOut,
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: Duration(milliseconds: 1000),
                                alignment: Alignment.topCenter,
                                child: logIn(),
                              ));


                        },
                        child: Text(
                          "Restablecer",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


            ),
          ),
        )
    );
  }

}