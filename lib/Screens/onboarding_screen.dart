import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:interview_app/Widgets/divider_widget.dart';
import 'package:interview_app/Widgets/main_button_widget.dart';
import 'package:interview_app/Widgets/rich_text_widget.dart';
import 'package:interview_app/Widgets/round_number_button.dart';

import 'Sign_up_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const id = 'OnBoardingScreen';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('images/picture.png'),
                    fit: BoxFit.fill,
                  ),
                  backgroundBlendMode: BlendMode.src),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              //color: Colors.transparent,
              gradient: LinearGradient(
                colors: [Colors.transparent, Color(0xff202020)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.82],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'images/paw_icon.png',
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'WOO\nDOG',
                            style: TextStyle(
                              color: Color(0xffE73A40),
                              fontSize: 19,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundNumberButton(
                              number: '1',
                              numberColor: Colors.black,
                              buttonColor: Colors.white,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            RoundNumberButton(
                              number: '2',
                              numberColor: Colors.white,
                              buttonColor: Color(0xff404040),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            RoundNumberButton(
                              number: '3',
                              numberColor: Colors.white,
                              buttonColor: Color(0xff404040),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Too tired to walk your dog?',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              color: Color(0xfffcfcfc)),
                        ),
                        Text(
                          'Let\'s help you!',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              color: Color(0xfffcfcfc)),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 6.0),
                          child: MainButtonWidget(
                            title: 'Join our community',
                            onTap: () {
                              Navigator.pushNamed(context, SignUpScreen.id);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichTextWidget(
                          text1: 'Already a member?',
                          text2: ' Sign in',
                          fontSize: 15.0,
                          text1Color: Color(0xfffcfcfc),
                          text2Color: Color(0xffFB724C),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ShortDividerWidget(color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
