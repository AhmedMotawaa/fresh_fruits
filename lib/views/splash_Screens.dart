import 'package:flutter/material.dart';
import 'package:fresh_fruits/views/frist_Page.dart';

class splash_Screens extends StatefulWidget {
  const splash_Screens({super.key});

  @override
  State<splash_Screens> createState() => _splash_ScreensState();
}

class _splash_ScreensState extends State<splash_Screens> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                frist_Page()), // استبدل NextScreen بالصفحة المطلوبة
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDC44B),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFFDC44B),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/LOGO1.png'),
            SizedBox(height: 50),
            Text(
              'Fresh Fruits',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.03,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class NextScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text('Welcome to the Next Screen!'),
//       ),
//     );
//   }
// }
