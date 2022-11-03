import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:cupid_knot_project/utils/strings.dart';
import 'package:cupid_knot_project/utils/strings_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  _AddContactPageState createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
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
          Strings.ADD_CONTACT,
          style: appBartitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _userInfoTextField(),
              _doneButton(),
            ],
          ),
        ),
      ),
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
