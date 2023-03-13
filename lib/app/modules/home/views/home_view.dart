import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/widgets/xText.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  XText(
                    text: "Time left : ",
                    size: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  XText(
                    text: "2:24:23",
                    size: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const XText(
                text: "  Select your candidate -",
                size: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Material(
                    elevation: 4.0,
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        height: 80.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/image3.png')),
                        ),
                      ),
                      title: const XText(
                        size: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        text: "Narendra D.Modi",
                      ),
                      subtitle: const XText(
                        size: 14,
                        text: "Bhartiya Janta Party (BJP)",
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                      trailing: Container(
                        height: 80.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/image4.png')),
                        ),
                      ),
                      tileColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//12, 14, 16, 18, 20, 24
