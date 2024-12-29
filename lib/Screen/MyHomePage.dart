import 'package:diamon_price_predictor/Screen/predictPage.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF01180D),
        body: Stack(
          children: [
            Positioned(
              right: 60,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/diamond.png',height: 400,width: 400,)
              ),
            ),
            Positioned(
                left: 60,
                top: 80,
                child: Text('An AI-powered project to predict diamond prices \naccurately using machine learning. Analyze key \nattributes for smarter pricing insights',style: TextStyle(color: Color(
                    0xFFF5F0F0),fontWeight: FontWeight.bold,fontSize: 30),)
            ),
            Positioned(
              bottom: 80,
              left: 600,
              child:SizedBox(
                width: 200, // Adjust the width as needed
                height: 40, // Adjust the height as needed
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>prdictPage())
                    );
                  },
                  child: Text('Get Started'),
                ),
              ),

            )
          ],
        )
    );
  }
}
