import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 252),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "welcome",
                      style:
                          TextStyle(color: Color.fromARGB(255, 160, 159, 166)),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Fill the form to become our guest",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color.fromARGB(255, 56, 56, 74))),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(20, 17, 116, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Stack(
                            children: [
                              InternationalPhoneNumberInput(
                                onInputChanged: (value) {},
                                cursorColor: Colors.black,
                                inputDecoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 15, left: 0),
                                    border: InputBorder.none,
                                    hintText: '(900)  000  0000',
                                    hintStyle: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16)),
                              ),
                              Positioned(
                                  left: 90,
                                  top: 8,
                                  bottom: 8,
                                  child: Container(
                                      height: 40,
                                      width: 1,
                                      color: Colors.black.withOpacity(0.13)))
                            ],
                          )),
                    ),
                    SizedBox(height: 120),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 35, 35, 59),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Next",
                            style: TextStyle(
                                color: Color.fromARGB(255, 68, 68, 70)),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        )));
  }
}
