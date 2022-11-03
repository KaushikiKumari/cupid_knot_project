import 'package:cupid_knot_project/pages/dashboard/dashboard_page.dart';
import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:cupid_knot_project/utils/strings.dart';
import 'package:cupid_knot_project/utils/strings_style.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColors.mainColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

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
            children: [
              _headingView(),
              _otpFieldView(),
              _submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  _headingView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        DelayedDisplay(
            child: Text(Strings.OTP_PAGE_HEADING, style: altraSmallTextStyle)),
        SizedBox(height: 10),
        DelayedDisplay(
            child: Text("(+91) 1234567890)", style: normalTextStyle)),
      ],
    );
  }

  _otpFieldView() {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  PinPut(
                    fieldsCount: 5,
                    cursorColor: AppColors.mainColor,
                    // onSubmit: (){},
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: AppColors.mainColor,
                      ),
                    ),
                    selectedFieldDecoration: _pinPutDecoration,
                    followingFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: AppColors.dullTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(Strings.TIMER_TEXT1),
                        SizedBox(width: 5),
                        Text(
                          "60",
                          style: smallCyanTextStyle,
                        ),
                        SizedBox(width: 5),
                        Text(Strings.TIMER_TEXT1),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _submitButton() {
    return Column(
      children: [
        Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              Get.offAll(const DashboardPage(),
                  transition: Transition.rightToLeftWithFade);
              Fluttertoast.showToast(
                msg: "Welcome",
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
                Get.back();
              },
              child: const Text(
                Strings.NUMBER_CHANGE,
                style: smallCyanTextStyle,
              )),
        ),
      ],
    );
  }
}
