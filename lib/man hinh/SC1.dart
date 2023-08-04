import 'package:flutter/material.dart';
import 'package:t1/SC2.dart';
import 'package:t1/SC3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SC1(),
        '/SC2': (context) => const SC2(),
        '/SC3': (context) => const SC3(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class SC1 extends StatefulWidget {
  const SC1({super.key});

  @override
  State<SC1> createState() => _SC1State();
}

class _SC1State extends State<SC1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, top: 96),
              child: Column(children: [
                Container(
                  width: 343,
                  height: 253,
                  child: Image.asset('images/Cool Kids Sitting.png'),
                ),
                Container(
                  width: 375,
                  height: 109,
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 341,
                          height: 32,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Log in',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 341,
                          height: 21,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login with social networks',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                color: const Color(0xff65AAEA),
                                child: Image.asset(
                                    'images/Social Networks Icons.png')),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                                width: 40,
                                height: 40,
                                color: const Color(0xff65AAEA),
                                child: Image.asset(
                                    'images/Social Networks Icons (1).png')),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                                width: 40,
                                height: 40,
                                color: const Color(0xff65AAEA),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('images/Group (1).png'),
                                    Image.asset('images/Group.png')
                                  ],
                                )),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
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
                            decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 343,
                        height: 53,
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffE3562A),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFFFFF)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/SC2');
                    },
                    child: const Text(
                      'Sign up',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
