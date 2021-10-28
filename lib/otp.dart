import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  void initState() {
    super.initState();
    _listenOtp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Masukkan otp"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val) {
                  print("value: $val");
                },

              ),
            )
          ],
        ),
      ),
    );
  }

  void _listenOtp() async {
   await SmsAutoFill().listenForCode;
  }
}
