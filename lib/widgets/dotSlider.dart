import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class dotSlider extends StatefulWidget {
  @override
  _dotSliderState createState() => _dotSliderState();
}

class _dotSliderState extends State<dotSlider> {
  final PageController _controller = PageController(); // التحكم بالـ PageView

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 79,
      height: 6,
      child: Stack(
        children: [
          Positioned(
            left: 28,
            top: 0,
            child: Container(
              width: 23,
              height: 6,
              decoration: ShapeDecoration(
                color: Color(0xFFF2F2F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            left: 56,
            top: 0,
            child: Container(
              width: 23,
              height: 6,
              decoration: ShapeDecoration(
                color: Color(0xFFF2F2F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 23,
              height: 6,
              decoration: ShapeDecoration(
                color: Color(0xFF12B669),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
//      Container(
//       child: Column(
//         children: [

//           SmoothPageIndicator(
//             controller: _controller,
//             count: 3,
//             effect: WormEffect(
//               dotHeight: 6,
//               dotWidth: 15,
//               activeDotColor: Colors.black,
//               dotColor: Color(0xFFF2F2F2),
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
}
