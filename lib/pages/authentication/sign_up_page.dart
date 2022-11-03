import 'package:cupid_knot_project/pages/authentication/login_page.dart';
import 'package:cupid_knot_project/pages/dashboard/dashboard_page.dart';
import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:cupid_knot_project/utils/strings.dart';
import 'package:cupid_knot_project/utils/strings_style.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  bool _isObscure2 = true;
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headingView(),
              _userInfoTextField(),
              _signupButton(),
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
              child: Text(Strings.SIGNUP_HEADING, style: normalBigTextStyle)),
          SizedBox(height: 3),
          DelayedDisplay(
              child: Text(
            Strings.SIGNUP_SUBHEADING,
            style: normalTextStyle,
          )),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  _userInfoTextField() {
    return Padding(
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
                    hintText: Strings.NAME_HINT,
                    hintStyle: smallTextStyle,
                  ),
                ),
              )),
          const SizedBox(
            height: 15,
          ),
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
            height: 15,
          ),
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
          const SizedBox(
            height: 15,
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
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade400)),
            child: TextField(
              obscureText: _isObscure2,
              cursorHeight: 20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainColor,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure2 ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.mainColor,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure2 = !_isObscure2;
                    });
                  },
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.only(left: 15),
                hintText: Strings.CONFIRM_PASSWORD_HINT,
                hintStyle: smallTextStyle,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  _signupButton() {
    return Bounce(
        duration: const Duration(milliseconds: 110),
        onPressed: () {
          Get.offAll(const DashboardPage(),
              transition: Transition.rightToLeftWithFade);
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
                  Strings.SIGN_UP,
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
              Get.back();
            },
            child: const Text(
              Strings.BACK,
              style: smallCyanTextStyle,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(const LoginPage(),
                  transition: Transition.rightToLeftWithFade);
            },
            child: const Text(
              Strings.LOGIN_BUTTON,
              style: smallCyanTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
