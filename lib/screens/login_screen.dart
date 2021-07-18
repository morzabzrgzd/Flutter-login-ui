import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:okey_vila/screens/otp_screen.dart';
import 'package:okey_vila/widgets/button_widget.dart';
import 'package:okey_vila/widgets/textField_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                child: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                width: size.width,
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titelText(
                        sizeTitle: size.width * 0.1,
                        sizeSubtitle: size.width * 0.04),
                    GlassContainer(
                      height: size.height * 0.35,
                      width: size.width * 0.9,
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.40),
                          Colors.white.withOpacity(0.10)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderGradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.60),
                          Colors.white.withOpacity(0.10),
                          Colors.lightBlueAccent.withOpacity(0.05),
                          Colors.lightBlueAccent.withOpacity(0.6)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 0.39, 0.40, 1.0],
                      ),
                      blur: 15.0,
                      borderWidth: 1.5,
                      elevation: 3.0,
                      isFrostedGlass: true,
                      shadowColor: Colors.black.withOpacity(0.20),
                      alignment: Alignment.center,
                      frostedOpacity: 0.12,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.06,
                        vertical: size.height * 0.04,
                      ),
                       child: Column(
                        children: [
                          Text(
                            'لطفا شماره همراه خود را وارد کن',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.04,
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          BuildTextField(
                            icon: Icons.phone,
                            hintText: '--- --- ----',
                            letterSpacing: 8.0,
                          ),
                          SizedBox(height: size.height * 0.03),
                          Button(
                            onTab: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OtpScreen(),
                                ),
                              );
                            },
                            name: 'ثبت نام',
                          ),
                          SizedBox(height: size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'قبلا ثبت نام کردی؟',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.04,
                                ),
                              ),
                              SizedBox(width: size.width * 0.01),
                              Text(
                                'وارد شو',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue.shade400,
                                  fontSize: size.width * 0.04,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  titelText({@required sizeTitle, @required sizeSubtitle}) {
    return Column(
      children: [
        Text(
          'اوکی ویلا',
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: sizeTitle),
        ),
        Text(
          'سامانه رزرو و اجاره آنلاین ویلا و اقامتگاه',
          style: TextStyle(color: Colors.white, fontSize: sizeSubtitle),
        ),
      ],
    );
  }
}
