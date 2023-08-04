import 'package:flutter/material.dart';
import 'package:t1/SC2.dart';

class SC3 extends StatefulWidget {
  const SC3({super.key});

  @override
  State<SC3> createState() => _SC3State();
}

class _SC3State extends State<SC3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, top: 96),
              child: Column(children: [
                Container(
                  width: 343,
                  height: 253,
                  child: Image.asset('images/Cool Kids Sitting.png'),
                ),
                Container(
                  width: 373,
                  height: 61,
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 341,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 341,
                          height: 21,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create your account',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        child: Container(
                          width: 343,
                          height: 53,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || !value.contains('@')) {
                                return 'Tên đăng nhập sai';
                              } else if (value.contains(' ')) {
                                return 'không chứa khoảng trắng';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 343,
                        height: 53,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null) {
                              return 'Hay dien mat khau';
                            } else if (value.length < 6) {
                              return 'Mật khẩu quá ngắn';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 343,
                        height: 53,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null) {
                              return 'Hay dien mat khau';
                            } else if (value.length < 6) {
                              return 'Mật khẩu quá ngắn';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffE3562A),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE3562A)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SC2()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/SC3');
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff78746D)),
                    ),
                  ),
                )
              ]),
            ),
          ],
        )),
      ),
    );
  }
}
