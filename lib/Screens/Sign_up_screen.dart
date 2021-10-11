import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:interview_app/Screens/main_screen.dart';
import 'package:interview_app/Widgets/divider_widget.dart';
import 'package:interview_app/Widgets/main_button_widget.dart';
import 'package:interview_app/Widgets/rich_text_widget.dart';
import 'package:interview_app/Widgets/text_field_widget.dart';
import 'package:interview_app/constants.dart';

class SignUpScreen extends StatelessWidget {
  static const id = 'SignUpScreen';

  final _nameFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();
  final _emailFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 16.0, bottom: 5.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Color(0xff2b2b2b),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Let\'s start here', style: kBigTextStyle),
                  SizedBox(height: 6),
                  Text(
                    'Fill in your details to begin',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2b2b2b),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Full name',
                    controller: _nameFieldController,
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'E-mail',
                    controller: _emailFieldController,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Password',
                    controller: _passwordFieldController,
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  MainButtonWidget(
                    title: 'Sign up',
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, MainScreen.id, (route) => false);
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: RichTextWidget(
                      text1: 'By signing in, I agree with',
                      text2: ' Terms of Use',
                      fontSize: 15.0,
                      text1Color: Color(0xffb0b0b0),
                      text2Color: Color(0xff2b2b2b),
                    ),
                  ),
                  Center(
                    child: RichTextWidget(
                      text1: 'and',
                      text2: ' Privacy Policy',
                      fontSize: 15.0,
                      text1Color: Color(0xffb0b0b0),
                      text2Color: Color(0xff2b2b2b),
                    ),
                  ),
                  SizedBox(height: 50),
                  ShortDividerWidget(
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
