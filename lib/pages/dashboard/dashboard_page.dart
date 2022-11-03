import 'package:cupid_knot_project/pages/authentication/login_page.dart';
import 'package:cupid_knot_project/pages/dashboard/add_contact_page.dart';
import 'package:cupid_knot_project/pages/dashboard/edit_profile_page.dart';
import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:cupid_knot_project/utils/image_utils.dart';
import 'package:cupid_knot_project/utils/strings.dart';
import 'package:cupid_knot_project/utils/strings_style.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offAll(const LoginPage());
                },
                icon: Icon(Icons.logout))
          ],
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Text(
            Strings.APP_TITLE,
            style: appBarTitleStyle,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: _profileView(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: SingleChildScrollView(
                  child: Column(children: [
                    _contactListView(),
                  ]),
                ),
              ),
            ),
          ],
        ));
  }

  _profileView() {
    return DelayedDisplay(
        child: Stack(
      children: [
        SizedBox(
          width: Get.width,
          child: Card(
              elevation: 5,
              child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageUtils.profile_card),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // (userData == null)
                          Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                  color: Colors.white60,
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Icon(Icons.person,
                                      color: Colors.grey.shade700, size: 50)))
                          //     : ClipOval(
                          //         child: Container(
                          //             height: 80,
                          //             width: 80,
                          //             child: CachedNetworkImage(
                          //               imageUrl: userData.avatar,
                          //               fit: BoxFit.cover,
                          //               placeholder: (context, url) =>
                          //                   Image.asset(
                          //                       ImageUtils.USER_PLACEHOLDER),
                          //               height: Constant.height80,
                          //               width: Constant.height80,
                          //             )),
                          //       ),
                          ,
                          const SizedBox(width: 20),

                          Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                const Text("Kaushiki Kumari",
                                    style: smallWhiteNormalTextStyle),
                                const SizedBox(height: 5),
                                const Text("TestEmail2022@gmail.com",
                                    style: smallWhiteNormalTextStyle),
                                const SizedBox(height: 5),
                                const Text("1234567890",
                                    style: smallWhiteNormalTextStyle),
                                const SizedBox(height: 5),
                                const Text("Single",
                                    style: smallWhiteNormalTextStyle),
                                const SizedBox(height: 5),
                              ]))
                        ]),
                  ))),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EditProfilePage()),
              );
            },
            child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    color: Colors.white30, shape: BoxShape.circle),
                child: const Center(
                    child: Icon(Icons.edit, color: Colors.white, size: 15))),
          ),
        ),
      ],
    ));
  }

  _contactListView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(Strings.CONTACT_LIST, style: normalTextStyle),
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddContactPage()),
                  );
                },
                child: const Text(Strings.ADD_CONTACT, style: greentextStyle)),
          ],
        ),
        const SizedBox(height: 10),
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3.5,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: DelayedDisplay(
                    child: Stack(
                      children: [
                        SizedBox(
                          width: Get.width / 1,
                          child: Card(
                              elevation: 8,
                              shadowColor: Colors.grey.shade100,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Kaushiki Kumari",
                                          style: smallCyanTextStyle),
                                      const SizedBox(height: 5),
                                      const Text("TestEmail2022@gmail.com",
                                          style: smallBlackTextStyle),
                                      const SizedBox(height: 5),
                                      const Text("1234567890",
                                          style: smallBlackTextStyle),
                                    ]),
                              )),
                        ),
                        Positioned(
                          right: 15,
                          top: 15,
                          child: Bounce(
                            duration: const Duration(milliseconds: 110),
                            onPressed: () {},
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    color: Colors.black12,
                                    shape: BoxShape.circle),
                                child: const Center(
                                    child: Icon(Icons.delete,
                                        color: Colors.red, size: 15))),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
