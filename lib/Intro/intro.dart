// ignore_for_file: prefer_final_fields, sized_box_for_whitespace, unused_local_variable

import 'package:app_plantas_medicinales/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/screens.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      duration: const Duration(microseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  Future setSeenboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
  }

  @override
  void initState() {
    super.initState();
    setSeenboard();
  }

  @override
  Widget build(BuildContext context) {
    //initialize size config
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: introdataContents.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Text(
                    introdataContents[index].title,
                    style: robotoslab,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Container(
                    height: sizeV * 50,
                    child: Image.asset(introdataContents[index].image,
                        fit: BoxFit.contain),
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(style: kBodyText1, children: [
                        const TextSpan(text: 'Con un huerto y un'),
                        TextSpan(
                            text: ' malvar,',
                            style: TextStyle(color: kPrimaryColor)),
                        const TextSpan(text: ' hay medicinas para un '),
                        TextSpan(
                            text: 'lugar.',
                            style: TextStyle(color: kPrimaryColor)),
                      ])),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                currentPage == introdataContents.length - 1
                    ? MyTextButton(
                        buttonName: 'Comencemos',
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                          // Navigator.push(
                          //   context,
                          // MaterialPageRoute(
                          //   builder: (context) => const HomeScreen()));
                        },
                        bgColor: Colors.green,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OnBoardNavBtn(
                            name: '      Saltar    ',
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                          ),
                          Row(
                            children: List.generate(introdataContents.length,
                                (index) => dotIndicator(index)),
                          ),
                          OnBoardNavBtn(
                              name: 'Siguiente  ',
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(microseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              }),
                        ],
                      ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
