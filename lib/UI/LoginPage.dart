import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  dynamic h, w;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: h * 0.35,
            margin: EdgeInsets.only(bottom: h * 0.05),
            child: const FlutterLogo(size: 150,),
          ),
          Container(
            height: h * 0.08,
            padding: EdgeInsets.symmetric(horizontal: w * 0.1),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Image.network(
                            "https://pngimg.com/uploads/google/google_PNG19635.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: w * 0.25),
                      child: const Text(
                        "Google",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 20),
          Container(
            height: h * 0.08,
            padding: EdgeInsets.symmetric(horizontal: w * 0.1),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      child: Icon(Icons.call,color: Colors.white,size: 20,),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: w * 0.25),
                      child: const Text(
                        "Phone",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}
