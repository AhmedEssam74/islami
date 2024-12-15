import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "/";
  Color mainColor = const Color(0xff202020);

  OnboardingScreen({super.key});

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Color(0xffE2BE7F),
    );

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
          // fontFamily: "assets/fonts/ElMessiri-Medium.ttf",
          color: Color(0xffE2BE7F)),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xff202020),
      imagePadding: EdgeInsets.zero,
      imageFlex: 4,
    );

    return IntroductionScreen(
      globalBackgroundColor: const Color(0xff202020),
      allowImplicitScrolling: true,
      //Finish Btn
      showDoneButton: true,
      done: const Text(
        "Finish",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xffE2BE7F),
        ),
      ),
      onDone: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
       },
      //Next Btn
      showNextButton: true,
      next: const Text(
        "Next",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xffE2BE7F),
        ),
      ),
      //Back Btn
      showBackButton: true,
      back: const Text(
        "Back",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xffE2BE7F),
        ),
      ),
      //
      // Dots
      dotsFlex: 3,
      dotsDecorator: const DotsDecorator(
        color: Color(0xff707070),
        activeColor: Color(0xffE2BE7F),
        activeSize: Size(24, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(27),
          ),
        ),
      ),
      // Global Header
      globalHeader: Align(
        alignment: Alignment.center,
        child: SafeArea(
          child: _buildImage('header_bg.png', 350),
        ),
      ),
      // Pages
      pages: [
        // Page1
        PageViewModel(
          title: "Welcome To Isalmi App",
          body: "",
          image: _buildImage('onboarding1.png'),
          decoration: pageDecoration,
        ),
        // Page2
        PageViewModel(
          title: "Welcome To Isalmi App",
          body: "We Are Very Excited To Have You In Our Community",
          image: _buildImage('onboarding2.png'),
          decoration: pageDecoration,
        ),
        // Page3
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: _buildImage('onboarding4.png'),
          decoration: pageDecoration,
        ),
        // Page4
        PageViewModel(
          title: "Bearish",
          body: "Read, and your Lord is the Most Generous",
          image: _buildImage('onboarding3.png'),
          decoration: pageDecoration,
        ),
        // Page5
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage('onboarding5.png'),
          decoration: pageDecoration,
        ),
      ],
      // onDone: () => _onIntroEnd(context),
      // onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      // showSkipButton: true,
      // skipOrBackFlex: 0,
      // nextFlex: 0,
      // showBackButton: false,
      // rtl: true, // Display as right-to-left
      // back: const Icon(Icons.arrow_back),
      // skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      // next: const Icon(Icons.arrow_forward),
      // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      // curve: Curves.fastLinearToSlowEaseIn,
      // controlsMargin: const EdgeInsets.all(16),
      // controlsPadding: kIsWeb
      //     ? const EdgeInsets.all(12.0)
      //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      // dotsDecorator: const DotsDecorator(
      //   size: Size(10.0, 10.0),
      //   color: Color(0xFFBDBDBD),
      //   activeSize: Size(22.0, 10.0),
      //   activeShape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(25.0)),
      //   ),
      // ),
      // dotsContainerDecorator: const ShapeDecoration(
      //   color: Colors.black87,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
      //   ),
      // ),
    );
  }
}
