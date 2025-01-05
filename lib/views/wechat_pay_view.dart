import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class WeChatPayView extends StatelessWidget {
  const WeChatPayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SimpleIconColors.wechat,
      body: Center(
        child: Image.asset('images/wechat-pay.JPG'),
      ),
    );
  }
}
