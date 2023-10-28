import 'package:flutter/material.dart';
import 'package:lesson1_17/utils/app_colors.dart';
import 'package:lesson1_17/utils/size_utils.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.c_10405A,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.c_10405A,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Spedah",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: "sora"),
            ),
            SizedBox(width: 4),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: AppColors.c_FFCA42,
                  shape: BoxShape.circle),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/bcycle.png",
                height: getHomePicsHeight(height),
                // height: height > 600 ? 0.45 * height: 0.3 * height,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text("Let’s \nget started",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "sora",
                    fontSize: 48,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              "Everything start from here",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 24),
          _getMyButto(
            buttonText: "Log in",
            btnColor: AppColors.c_FFCA42,
            height: height
          ),
          const SizedBox(height: 16),
          _getMyButto(
            buttonText: "Sign up",
            btnColor: AppColors.c_D5E7D4,
            height: height,
          ),
        ],
      ),
    );
  }

  Widget _getMyButto({
    required String buttonText,
    required Color btnColor,
    required double height,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height > 600 ? 50 : 30,
        margin: const EdgeInsets.symmetric(horizontal: 28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: btnColor,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Color(0xFF10405A),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
                width: width/2,
                child: ElevatedButton(onPressed: (){}, child: Text("Press"))),
            SizedBox(
                width: width/2,
                child: ElevatedButton(onPressed: (){}, child: Text("Press"))),
          ],
        ),
      ),
    );
  }
}

