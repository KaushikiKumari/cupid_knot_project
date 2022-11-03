import 'package:cupid_knot_project/pages/authentication/login_page.dart';
import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:cupid_knot_project/utils/strings.dart';
import 'package:cupid_knot_project/utils/strings_style.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
              _textFieldView(),
              _sendButton(),
            ],
          ),
        ),
      ),
    );
  }

  _headingView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DelayedDisplay(
            child: Text(Strings.FORGOTPASSWORD_HEADING,
                style: normalBigTextStyle)),
        SizedBox(height: 3),
        DelayedDisplay(
            child: Text(
          Strings.FORGOTPASSWORD_SUBHEADING,
          style: normalTextStyle,
        )),
      ],
    );
  }

  _textFieldView() {
    return Column(
      children: [
        const SizedBox(height: 50),
        Container(
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade400)),
            child: const Center(
              child: TextField(
                cursorHeight: 20,
                keyboardType: TextInputType.emailAddress,
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
        const SizedBox(height: 10),
      ],
    );
  }

  _sendButton() {
    return Column(
      children: [
        Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Check your email to reset your password!",
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
                      Strings.SEND_BUTTON,
                      style: whiteNormalTextStyle,
                    )),
                  )),
            )),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
              onTap: () {
                Get.offAll(const LoginPage(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: const Text(
                Strings.BACK_TO_LOGIN,
                style: smallCyanTextStyle,
              )),
        ),
      ],
    );
  }
}
