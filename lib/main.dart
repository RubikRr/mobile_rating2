import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 105, 252),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          // color: Colors.white,
          child: !isSuccess
              ? TextButton(
                  onPressed: () {
                    setState(() {
                      isSuccess = true;
                    });
                  },
                  child: Text('Show scan',
                      style: TextStyle(
                        color: Color.fromARGB(255, 90, 105, 252),
                      )),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('images/img.png'),
                      const Text(
                        style: TextStyle(
                          fontFamily: "Serif",
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 90, 105, 252),
                          fontSize: 20,
                        ),
                        "Scan Ticket Succcess!",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Serif",
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        "Your vehicle is parked? and the time will be counted down.",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // color: Colors.white,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child:
                              Text('OK', style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            backgroundColor: Color.fromARGB(255, 90, 105, 252),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
