import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  final number = TextEditingController();
  final password = TextEditingController();


  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Đăng nhập",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(10, 40, 10, 10),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsetsDirectional.only(start: 12),
                            child: Icon(Icons.smartphone),
                          ),
                          hintText: "Số điện thoại",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      controller: number),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsetsDirectional.only(start: 12),
                          child: Icon(Icons.password),
                        ),
                        hintText: "Mật khẩu",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        suffixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 12),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye_rounded),
                          ),
                        )),
                    controller: password,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 280,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        content: Column(children: <Widget>[
                          Text(password.text),
                          Text(number.text)
                        ]));
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text("Đăng nhập", style: TextStyle(color: Colors.black)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Chưa có cài khoản?"),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Đăng ký",
                        style: TextStyle(color: Colors.orange),
                      ))
                ],
              ),
              const Text("Đăng nhập bằng tài khoảng khác"),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/icons/facebook_icon.png",
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/icons/google_icon.png",
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/icons/apple_icon.png",
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
