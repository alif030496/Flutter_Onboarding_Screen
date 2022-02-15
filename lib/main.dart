import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/home.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "First Page",
            body: "This is the First Page",
            image: Image.asset("images/one.jpg",width: 350,),
          ),PageViewModel(
            title: "Second Page",
            body: "This is the Second Page",
            image: Image.asset("images/two.jpg",width: 350,),
          ),PageViewModel(
            title: "Third Page",
            body: "This is the Third Page",
            image: Image.asset("images/three.jpg",width: double.infinity,),
          ),
        ],
        onDone: (){
          Navigator.push(context, CupertinoModalPopupRoute(builder: (context)=>Homepage()));
        },
        showDoneButton: true,
        done: Text("Done"),
        showNextButton: true,
        next:Icon(Icons.arrow_forward_ios) ,
        showSkipButton: true,
        skip: Text("Skip"),
        dotsDecorator: DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.grey,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
        ),
      ),
    ));
  }
}
