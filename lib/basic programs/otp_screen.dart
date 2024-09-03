import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerificationScreen extends StatefulWidget {
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  bool _isLoading = false;
   bool _isResendButtonEnabled = true;
 int _resendButtonTimeout = 30;

  void _verifyOTP() {
   setState(() {
       _isLoading = true;
       
    });

    //Simulate network request
     Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });

  //     // Navigate to the next screen or show an error
    });
  }

   void _resendOTP() {
    setState(() {
      _isResendButtonEnabled = false;
    _resendButtonTimeout = 30;
   });

   // Simulate OTP resend
   Future.delayed(const Duration(seconds: 2), () {
     // OTP resent
    });

  //   // Countdown timer for enabling the resend button
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
      _resendButtonTimeout--;
   });

      if (_resendButtonTimeout == 0) {
       setState(() {
        _isResendButtonEnabled = true;
        });
        timer.cancel();
      }
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('OTP Verification', style: TextStyle(fontSize: 24.0)),
            SizedBox(height: 10),
            const Text(
              'Enter the OTP sent to your registered email',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration:  InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(16.0)),
                      
                    ),
                    textInputAction: TextInputAction.go,
                    
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                     textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    ),
                    textInputAction: TextInputAction.go,
                   
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                     textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    ),
                    textInputAction: TextInputAction.go,
                   
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                     textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    ),
                    textInputAction: TextInputAction.done,
                    // onSubmitted: (value) {
                    //   _verifyOTP();
                    // },
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300],fixedSize: Size(150, 50)),
              onPressed:_isResendButtonEnabled ? _resendOTP : null, child: _isResendButtonEnabled? Text('Resend',style: TextStyle(color: Colors.white)):Text('Resend OTP in $_resendButtonTimeout ',)),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300],fixedSize: Size(150, 50)),
              onPressed: _isLoading ? null : _verifyOTP, 
              child: _isLoading? 
              const CircularProgressIndicator():const Text('Verify',style: TextStyle(color: Colors.white))),
            ],
            ),
            
            // const SizedBox(height: 16.0),
            // TextButton(
            //   onPressed: _isResendButtonEnabled ? _resendOTP : null,
            //   child: Text(
            //     _isResendButtonEnabled
            //         ? 'Resend OTP'
            //         : 'Resend OTP in $_resendButtonTimeout s',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
  }