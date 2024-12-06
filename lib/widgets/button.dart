// import 'package:flutter/material.dart';

// class Button extends StatefulWidget {
//    final Widget page; // المعامل الذي سيمثل الصفحة

//   Button({required this.page});
//   @override
//   _ButtonState createState() => _ButtonState();
// }

// class _ButtonState extends State<Button> {

  

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ElevatedButton(

//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>page),
                
//               );
//             },
//             child: Text('Next',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16 ),),
//             style: ButtonStyle(
//     backgroundColor: WidgetStateProperty.all( Color(0xFFFDC44B)), // لون الزر
//     padding: WidgetStateProperty.all(EdgeInsets.symmetric(
//       horizontal: 150, // عرض padding
//       vertical: 20, // ارتفاع padding
//     ),),
//     shape: WidgetStateProperty.all(
//       RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(32), // شكل الزر (زاويا مستديرة)
//       ),
//     ),
//     ),
    
//           ),
//       ],
//     );
//   }
// }