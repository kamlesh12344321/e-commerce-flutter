import 'package:flutter/material.dart';

class Template2Practice extends StatefulWidget {
  const Template2Practice({super.key});

  @override
  State<Template2Practice> createState() => _Template2PracticeState();
}

class _Template2PracticeState extends State<Template2Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://media.istockphoto.com/id/980647564/photo/creative-idea-layout-fresh-banana-with-yellow-retro-telephone-on-bluish-background-fruit.jpg?s=612x612&w=0&k=20&c=k_tP0b5Im68SyD78Xzb9KmqfGoo14cwUNY36QhG66aM=',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent, // Transparent color at the top
                  Colors.black.withOpacity(0.0), // Semi-transparent black color at the bottom
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Container(
                margin: const EdgeInsets.only(top: 100),
                 child: const Text(
                   'Postmates',
                   style: TextStyle(
                     color: Colors.white, // Set the text color to white
                     fontSize: 28,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
              ),
              Column(children: [
                const SizedBox(height: 40,),
                const Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    fontSize: 24
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(left: 35, right: 35),
                  child: const Text(
                    'Postmate is teaming Up with uber Eats. You can log in using Uber account that has you phone number on it',
                    style: TextStyle(
                      color: Colors.red, // Set the text color to white
                      fontSize: 16,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child:  Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Login with danmateo".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,

                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Use Another User Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 50,),
              ],)
            ],
          )
        ],

      ),
    );
  }
}
