import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Template1Practice extends StatefulWidget {
  const Template1Practice({super.key});

  @override
  State<Template1Practice> createState() => _Template1PracticeState();
}

class _Template1PracticeState extends State<Template1Practice> {
  final PageController _controller = PageController();
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  // Transparent color at the top
                  Colors.white.withOpacity(0.0),
                  // Semi-transparent black color at the bottom
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.5,
                  child: PageView(
                    controller: _controller,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network('https://i.stack.imgur.com/8CNWw.jpg',
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                          const Text(
                            'Save time with instant route change1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black, // Set the text color to white
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network('https://i.stack.imgur.com/8CNWw.jpg',
                            fit: BoxFit.cover,
                            width:100 ,
                            height: 100,
                          ),
                          const Text(
                            'Save time with instant route change2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black, // Set the text color to white
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network('https://i.stack.imgur.com/8CNWw.jpg',
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                          const Text(
                            'Save time with instant route change3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black, // Set the text color to white
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),
                DotsIndicator(
                  dotsCount: 3,
                  position: _currentPage.toInt(),
                  decorator: DotsDecorator(
                    activeColor: Colors.blue,
                    size: const Size.square(10.0),
                    activeSize: const Size(15.0, 10.0),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(height: 50,),

                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
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
                    child: const Row(
                      children: <Widget>[
                        // Icon(Icons.g_translate, size: 26.0,),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Get Started",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                const SizedBox(height: 20,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey,
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
                    child: const Row(
                      children: <Widget>[
                        // Icon(Icons.person, size: 26.0,),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Log In",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                ),
              ],
            ),
        ],
      ),
    );
  }
}
