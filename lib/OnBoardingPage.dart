// ignore_for_file: prefer_const_constructors

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
            children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/on_boarding_images/Online_Delivery_Service.gif"),
                        Text(
                          "Your wishlist now within arms reach.",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 116, 216, 119)),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 10))
                          ),
                          onPressed: (){
                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) => HomePage(),
                            // ));
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => HomePage(),
                            //   )
                            // );
                            
                            Navigator.pushNamed(context, '/main');
                            // MainScreen();
                          },
                          child: Text(
                            "Begin Shopping",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              // color: Colors.white
                            )
                          )
                        ),
                      ],
                  ),
                )
            ],
        ),
      )
    );
  }
}
