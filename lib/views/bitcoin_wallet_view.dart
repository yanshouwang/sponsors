import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class BitcoinWalletView extends StatelessWidget {
  const BitcoinWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: SimpleIconColors.bitcoin,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            Image.asset('images/bitcoin-wallet.PNG'),
            SelectableText(
              'bc1qw43shdh74pwnyh5l85rw3ay78l7ea3nh6tap97',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
