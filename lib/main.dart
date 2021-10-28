import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'otp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Sms AutoFill",
      home: Auth(),
    );
  }
}

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Login/ Register"),
          onPressed: () async {
            // http here
           final signcode = await SmsAutoFill().getAppSignature;
           print("signcode:   $signcode");

            Navigator.push(context, MaterialPageRoute(builder: (c) => Otp() ));
          },
        ),
      ),
    );
  }

}


