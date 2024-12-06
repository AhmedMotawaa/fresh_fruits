import 'package:flutter/material.dart';
import 'package:fresh_fruits/views/frist_Page.dart';
import 'package:fresh_fruits/views/splash_Screens.dart';
import 'package:fresh_fruits/widgets/button.dart';
import 'package:fresh_fruits/widgets/dotSlider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class second_Page extends StatefulWidget {
  const second_Page({super.key});

  @override
  State<second_Page> createState() => _second_PageState();
}

class _second_PageState extends State<second_Page> {
  //final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xFFFDC44B),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image_fruits.png'),
            Text(
              'We provide best quality \n Fruits to your family',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            dotSlider(),
            SizedBox(
              height: 70,
            ),
            //Button(page: second_Page()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => splash_Screens()),
                );
              },
              child: Text(
                'Next',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(Color(0xFFFDC44B)), // لون الزر
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 150, // عرض padding
                    vertical: 20, // ارتفاع padding
                  ),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(32), // شكل الزر (زاويا مستديرة)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class dotSlider extends StatefulWidget {
//   @override
//   _dotSliderState createState() => _dotSliderState();
// }
// class _dotSliderState extends State<dotSlider> {
//   final PageController _controller = PageController(); // التحكم بالـ PageView

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: _controller,
//               children: [
//                 _buildPage(Colors.red, "Page 1"),
//                 _buildPage(Colors.green, "Page 2"),
//                 _buildPage(Colors.blue, "Page 3"),
//               ],
//             ),
//           ),
//           SizedBox(height: 16),
//           SmoothPageIndicator(
//             controller: _controller,
//             count: 3,
//             effect: WormEffect(
//               dotHeight: 10,
//               dotWidth: 10,
//               activeDotColor: Colors.black,
//               dotColor: Colors.grey,
//             ),
//           ),
//           SizedBox(height: 16),
//         ],
//       ),
//     );
//   }

//   Widget _buildPage(Color color, String text) {
//     return Container(
//       color: color,
//       child: Center(
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 24, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }




// SmoothPageIndicator(
//             controller: _controller,
//             count: 3,
//             effect: WormEffect(
//               dotHeight: 10,
//               dotWidth: 10,
//               activeDotColor: Colors.black,
//               dotColor: Colors.grey,
//             ),
//           ),