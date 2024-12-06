import 'package:flutter/material.dart';
import 'package:fresh_fruits/views/second_Page.dart';
import 'package:fresh_fruits/widgets/dotSlider.dart';

class frist_Page extends StatefulWidget {
  const frist_Page({super.key});

  @override
  State<frist_Page> createState() => _frist_PageState();
}

class _frist_PageState extends State<frist_Page> {
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
      body: Column(
        children: [
          Image.asset('assets/image_fruits.png'),
          Text(
            'Welcome to Fresh Fruits',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0.05,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Grocery application',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0.08,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              // height: 0.11,
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
                MaterialPageRoute(builder: (context) => second_Page()),
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
    );
  }
}
