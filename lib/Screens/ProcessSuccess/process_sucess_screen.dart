import 'package:flutter/material.dart';
import 'package:myapp/Screens/ProcessSuccess/components/body.dart';


class ProcessSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: parseColor('#e6f6ff'),
      resizeToAvoidBottomInset: false, // avoid overflow when focus input == resizeToAvoidBottomPadding
      // bottomNavigationBar: BottomAppBar(
      //     color: Colors.transparent,
      //     child: Padding(
      //       padding: const EdgeInsets.only(bottom: 20),
      //       child: RichText(
      //         textAlign: TextAlign.center,
      //         text: TextSpan(
      //           text: 'Bạn chưa có tài khoản?  ',
      //           style: TextStyle(
      //             color: Color.fromRGBO(160, 175, 185, 1),
      //             fontWeight: FontWeight.bold,
      //             fontSize: 14,
      //             fontFamily: 'Nunito'
      //           ),
      //           children: <TextSpan>[
      //             TextSpan(
      //               text: 'Đăng ký ngay',
      //               style: TextStyle(
      //                 color: Color.fromRGBO(94, 97, 108, 1),
      //                 decoration: TextDecoration.underline,
      //                 fontWeight: FontWeight.w900,
      //                 fontSize: 14,
      //                 fontFamily: 'Nunito'
      //               ),
      //             ),
      //             // can add more TextSpans here...
      //           ],
      //         ),
      //       ),
      //     ),
      //     elevation: 0),

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-success.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Body(),
          ),
        ),
      ),
    );
  }
}
