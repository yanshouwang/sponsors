import 'package:flutter/material.dart';
import 'package:sponsors/widgets.dart';

class AlipayView extends StatelessWidget {
  const AlipayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SponsorsColors.alipay,
      body: Center(
        child: Image.asset('images/alipay.JPG'),
      ),
    );
  }
}
