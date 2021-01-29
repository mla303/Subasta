
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:subasta/widgets/cards.dart';
import 'package:subasta/widgets/colors.dart';

import 'forgetpassword.dart';
import 'home.dart';





class logIn extends StatefulWidget {
  @override
  _logInState createState() => new _logInState();
}




class _logInState extends State<logIn> {


  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }



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
            title: Text("iniciar sesión",style: CustomTextStyle.title(context),),
            iconTheme: IconThemeData(color: basicColor),
            automaticallyImplyLeading: true
          ),
        ),

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
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("images/logo.png"),
                      height: MediaQuery.of(context).size.height/10,
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold,
                              color: basicColor,fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(text: "Iniciar sesión"),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 15,),

            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [



                    Wrap(
                      direction: Axis.vertical,

                      spacing: 8,

                      // // alignment: WrapAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Correo electrónico", style: TextStyle(color: basicColor,fontSize: 12),),

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
                                hintText: "sohailahmad68122@gmail.com",
                                fillColor: textfieldColor),
                          ),
                        ),

                        const SizedBox(height: 6,),
                        Text("Contraseña:", style: TextStyle(color: basicColor,fontSize: 12),),

                        //password textfield
                        Container(
                          width: width/1.2,
                          child: TextFormField(

                            style: TextStyle(
                                color: basicColor,
                                fontSize: 14
                            ),

                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.visiblePassword,
                            onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),

                            cursorColor: basicColor,
                            obscureText: _obscureText,
                            decoration: new InputDecoration(
                                contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),

                                suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  iconSize: 18,
                                  color: basicColor,
                                  onPressed: _toggle,
                                ),

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
                                hintStyle: new TextStyle(color: Colors.grey[800], fontSize: 14),
                                hintText: "· · · · · · · · · · ",
                                fillColor: textfieldColor),
                          ),
                        ),

                      ],
                    ),


                    //forget link
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      child: InkWell(
                        onTap: ()
                        {
                          Navigator.push(
                              context,
                              PageTransition(
                                curve: Curves.bounceOut,
                                type: PageTransitionType.rightToLeftWithFade,
                                duration: Duration(milliseconds: 1000),
                                alignment: Alignment.topCenter,
                                child: forgetPass(),
                              ));
                        },
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text("¿Has olvidado tu contraseña? Ingresa aquí",style:
                            TextStyle(color: basicColor,fontSize: 12),)),
                      ),
                    ),

                    SizedBox(height: 16,),


                    //login button
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
                                child: home(),
                              ));


                        },
                        child: Text(
                          "Ingresar",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),








                  ],
                ),
              ),
            ),





          ],
        ),

    );
  }

}