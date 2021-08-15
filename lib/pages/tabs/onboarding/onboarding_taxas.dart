import 'package:corretor_news/home.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingTaxa extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Conheça as principais taxas do Mercado Imobiliário',
              body: 'The man who never reads lives only one.',
              image: buildImage('assets/intro/ebook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'CDI',
              body: 'Available right at your fingerprints',
              image: buildImage('assets/intro/readingbook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'IGP-M',
              body: 'For enhanced reading experience',
              image: buildImage('assets/intro/manthumbs.png'),
              decoration: getPageTaxa(),
            ),
            PageViewModel(
              title: 'IGP-10',
              body: 'For enhanced reading experience',
              image: buildImage('assets/intro/manthumbs.png'),
              decoration:
                  getPageDecoration().copyWith(pageColor: Colors.green[100]),
            ),
            PageViewModel(
              title: 'FIPE ZAP',
              body: 'For enhanced reading experience',
              image: buildImage('assets/intro/manthumbs.png'),
              reverse: true,
              decoration: getPageReverse(),
              footer: Text('Fonte: IGBE'),
            ),
            PageViewModel(
              title: 'SELIC',
              body: 'Start your journey',
              footer: ElevatedButton(
                child: Text('Abrir'),
                onPressed: () => goToHome(context),
              ),
              image: buildImage('assets/intro/learn.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Fechar', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Voltar'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          // globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingTaxa()),
      );

  PageDecoration getPageTaxa() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 68, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.symmetric(horizontal: 100),
        pageColor: Colors.blue,
      );

  PageDecoration getPageReverse() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 24),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.symmetric(horizontal: 100),
        pageColor: Colors.blue,
        contentMargin: EdgeInsets.symmetric(horizontal: 32, vertical: 60),
      );
}
