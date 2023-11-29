import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:practice_design_1/screens/home_screen.dart';
import 'package:practice_design_1/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      bodyTextStyle: TextStyle(
          // fontFamily: 'OpenSans',
          fontSize: 15),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Tentang RentCost",
          body:
              "Rent Cost adalah sebuah platform dimana kalian bisa menyewa berbagai macam kostum berdasarkan pencarian dan jenis karakter yang ingin kalian perankan!",
          image: Image.asset(
            "assets/images/splash1.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fitur & Kelebihan",
          body:
              "Kamu gak usah cari-cari lagi di platform lain untuk karakter yang kamu pengen dan tanya ke owner, kamu bisa realtime lihat keseterdiaan kostum melalui RentCost!",
          image: Image.asset(
            "assets/images/splash2.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text(
                "Sewa sekarang!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
                backgroundColor: Color(0xFFEF6969),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        "Kembali",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      next: Text(
        "Lanjut",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      done: Text(
        "Mulai",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      skip: Text(
        "Lewati",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xFFEF6969),
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
