import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String tb = "";
final form_key = GlobalKey<FormState>();
var username = TextEditingController();
var password = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Trang đăng nhập",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: form_key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                    label: Text("Username"),
                    border: OutlineInputBorder(),
                    hintText: "Nhập tên đăng nhập"),
                validator: (value) {
                  if (value == "") {
                    return "Username không được để trống";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                  hintText: "Nhập mật khẩu",
                ),
                obscureText: true,
                validator: (value) {
                  if (value == "") {
                    return "Password không được để trống";
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (username.text == password.text &&
                            username.text.isNotEmpty &&
                            password.text.isNotEmpty) {
                          Navigator.popUntil(context, (route) => route.isFirst);
                          Navigator.pushNamed(context, "/index");
                        } else {
                          tb = "Username hoặc Password bị sai";
                          setState(() {});
                        }
                      },
                      child: const Text("Đăng Nhập")),
                ],
              ),
              Text(
                tb,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
