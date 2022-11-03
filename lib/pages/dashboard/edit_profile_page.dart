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

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool _isObscure = true;
  bool _isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 3,
        centerTitle: false,
        leading: Bounce(
          duration: const Duration(milliseconds: 110),
          onPressed: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(11, 11, 0, 11),
            child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.white60, AppColors.backgroundColor]),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.grey.shade200),
                ),
                child: const Center(
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: AppColors.dullTextColor,
                    size: 25,
                  ),
                )),
          ),
        ),
        title: const Text(
          Strings.EDITPROFILE_TITLE,
          style: appBartitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _profileImageView(),
              const SizedBox(height: 20),
              _userInfoTextField(),
              _doneButton(),
            ],
          ),
        ),
      ),
    );
  }

  _profileImageView() {
    return Center(
      child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.black12, shape: BoxShape.circle),
          child: Center(
              child:
                  Icon(Icons.person, color: Colors.grey.shade700, size: 50))),
    );
  }

  _userInfoTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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

  _doneButton() {
    return Bounce(
        duration: const Duration(milliseconds: 110),
        onPressed: () {
          Get.back();
          Fluttertoast.showToast(
            msg: "Profile Updated",
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
                  Strings.DONE,
                  style: whiteNormalTextStyle,
                )),
              )),
        ));
  }
}
