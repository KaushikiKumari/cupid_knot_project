import 'package:cupid_knot_project/pages/authentication/forgot_password_page.dart';
import 'package:cupid_knot_project/pages/authentication/otp_page.dart';
import 'package:cupid_knot_project/pages/authentication/sign_up_page.dart';
import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:cupid_knot_project/utils/strings.dart';
import 'package:cupid_knot_project/utils/strings_style.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool _isView = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text(
          Strings.APP_TITLE,
          style: appBarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headingView(),
              _loginWithEmailView(),
              _loginWithOtpView(),
              _loginButton(),
              _moreOption(),
            ],
          ),
        ),
      ),
    );
  }

  _headingView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 10),
          DelayedDisplay(
              child: Text(Strings.LOGIN_HEADING, style: normalBigTextStyle)),
          SizedBox(height: 3),
          DelayedDisplay(
              child: Text(
            Strings.LOGIN_SUBHEADING,
            style: normalTextStyle,
          )),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  _loginWithEmailView() {
    return Visibility(
      visible: !_isView,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade400)),
                child: const Center(
                  child: TextField(
                    cursorHeight: 20,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: Strings.EMAIL_HINT,
                      hintStyle: smallTextStyle,
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade400)),
              child: TextField(
                obscureText: _isObscure,
                cursorHeight: 20,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: AppColors.mainColor,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.mainColor,
                      size: 20,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.only(left: 15),
                  hintText: Strings.PASSWORD_HINT,
                  hintStyle: smallTextStyle,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () {
                    Get.to(const ForgotPasswordPage(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: const Text(
                    Strings.FORGOT_PASSWORD,
                    style: smallCyanTextStyle,
                  )),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  _loginWithOtpView() {
    return Visibility(
      visible: _isView,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade400)),
                child: const Center(
                  child: TextField(
                    cursorHeight: 20,
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: Strings.PHONE_HINT,
                      hintStyle: smallTextStyle,
                    ),
                  ),
                )),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  _loginButton() {
    return _isView
        ? Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              Get.to(OtpPage(), transition: Transition.rightToLeftWithFade);
            },
            child: SizedBox(
              width: Get.width / 1,
              height: 50,
              child: Card(
                  elevation: 8,
                  color: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Text(
                      Strings.LOGIN_BUTTON,
                      style: whiteNormalTextStyle,
                    )),
                  )),
            ))
        : Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              // Get.offAll(const DashboardPage(),
              //     transition: Transition.rightToLeftWithFade);
              Fluttertoast.showToast(
                msg: "Welcome!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
              );
            },
            child: SizedBox(
              width: Get.width / 1,
              height: 50,
              child: Card(
                  elevation: 8,
                  color: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Text(
                      Strings.LOGIN_BUTTON,
                      style: whiteNormalTextStyle,
                    )),
                  )),
            ));
  }

  _moreOption() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Get.offAll(SignUpPage(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: const Text(
                Strings.SIGN_UP,
                style: smallCyanTextStyle,
              )),
          GestureDetector(
              onTap: () {
                setState(() {
                  _isView = !_isView;
                });
              },
              child: _isView
                  ? const Text(
                      Strings.LOGIN_WITH_EMAIL,
                      style: smallCyanTextStyle,
                    )
                  : const Text(
                      Strings.LOGIN_WITH_SMS,
                      style: smallCyanTextStyle,
                    )),
        ],
      ),
    );
  }
}
