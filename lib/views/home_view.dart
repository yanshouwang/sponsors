import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:sponsors/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final localizations = AppLocalizations.of(context);
    final sponsorViews = [
      Expanded(
        child: buildSponsorView(
          context: context,
          icon: Icon(SimpleIcons.alipay),
          label: Text(localizations.alipay),
          color: SponsorsColors.alipay,
          onTap: () => context.go('/alipay'),
        ),
      ),
      Expanded(
        child: buildSponsorView(
          context: context,
          icon: Icon(SimpleIcons.wechat),
          label: Text(localizations.wechatPay),
          color: SimpleIconColors.wechat,
          onTap: () => context.go('/wechat-pay'),
        ),
      ),
      Expanded(
        child: buildSponsorView(
          context: context,
          icon: Icon(SimpleIcons.bitcoin),
          label: Text(localizations.bitcoinWallet),
          color: SimpleIconColors.bitcoin,
          onTap: () => context.go('/bitcoin-wallet'),
        ),
      ),
    ];
    return Scaffold(
      body: size.width > 800.0
          ? Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: sponsorViews,
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: sponsorViews,
            ),
    );
  }

  Widget buildSponsorView({
    required BuildContext context,
    required Icon icon,
    required Widget label,
    Color? color,
    VoidCallback? onTap,
  }) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        shape: BeveledRectangleBorder(),
        backgroundColor: color?.withValues(
          alpha: 0.1,
        ),
        foregroundColor: color,
        iconColor: color,
        iconSize: 100.0,
        textStyle: Theme.of(context).textTheme.displaySmall,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20.0,
        children: [
          icon,
          label,
        ],
      ),
    );
  }
}
