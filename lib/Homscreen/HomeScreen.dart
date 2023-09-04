import 'package:bmi_app/Theme/Colors.dart';
import 'package:bmi_app/Utils/CustomText.dart';
import 'package:bmi_app/Utils/Heading.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Resultscreen/ResultScreen.dart';
import '../Utils/BMIcalculate.dart';

final Uri _url = Uri.parse('https://github.com/Usmankhalid16');
final Uri _url2 = Uri.parse('https://www.linkedin.com/in/usman-khalid16/');

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double height = 0;
  double weight = 0;
  double bmi = 0;

  void calculateBMIAndShowResult() {
    setState(() {
      bmi = calculateBMI(height, weight);
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.menu_outlined),
          //   onPressed: () {
          //     _scaffoldKey.currentState!.openDrawer();
          //   },
          // ),
          backgroundColor: background,
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         child: Column(
        //           children: const [
        //             CustomText(
        //               text: 'INSANE',
        //               size: 36,
        //               weight: FontWeight.bold,
        //               spacing: 9.3,
        //             ),
        //             CustomText(
        //               text: 'STUDIOS',
        //               size: 36,
        //               weight: FontWeight.bold,
        //               spacing: 4,
        //             ),
        //           ],
        //         ),
        //       ),
        //       ListTile(
        //         title: const CustomText(
        //           text: 'Developed by: Usman Khalid',
        //         ),
        //         onTap: () {
        //           // Handle navigation or action for this item
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(SimpleIcons.github),
        //         title: const CustomText(
        //           text: 'Github',
        //         ),
        //         onTap: () {
        //           _launchUrl();
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(SimpleIcons.linkedin),
        //         title: const CustomText(
        //           text: 'LinkedIn',
        //         ),
        //         onTap: () {
        //           _launchUrl1();
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 2, right: 2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: HeadingText(
                    text: 'BMI Calculator',
                    size: 36,
                    weight: FontWeight.bold,
                    spacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Image.asset(
                    'lib/assets/dumbbell.png',
                    fit: BoxFit.cover,
                    width: 160,
                    height: 160,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Center(
                  child: CustomText(
                    text: 'Enter you weight and height',
                    size: 18,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 420,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3.0,
                        spreadRadius: 2.5,
                        offset: Offset(
                          2.5,
                          0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 40,
                          ),
                          CustomText(
                            text: 'Height',
                            weight: FontWeight.bold,
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  height = double.parse(
                                      value); // Convert the input text to a double
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const CustomText(
                            text: 'Centimeters (cm)',
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 40,
                          ),
                          CustomText(
                            text: 'Weight',
                            weight: FontWeight.bold,
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  weight = double.parse(
                                      value); // Convert the input text to a double
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const CustomText(
                            text: 'Kilograms (kg)',
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          calculateBMIAndShowResult();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                bmiResult: calculateBMI(height, weight),
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonclr,
                          fixedSize: const Size(320, 60),
                        ),
                        child: const CustomText(
                          text: 'Calculate',
                          color: Colors.white,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUrl1() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url');
  }
}
