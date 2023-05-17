import 'package:beelpaq/src/core/utils/app_spacer.dart';
import 'package:flutter/material.dart';

import 'buttons/custom_rounded_button.dart';

class CustomErrorView extends StatelessWidget {
  const CustomErrorView(
      {super.key,
      required this.onPressed,
      this.buttonChild,
      this.descriptionText});

  final VoidCallback onPressed;
  final Widget? buttonChild;
  final String? descriptionText;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(title: const Text('Application Error')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(descriptionText ?? 'A client-side exception has occurred!'),
              AppSpacer.spacerH50,
              CustomRoundedButton(
                onPressed: onPressed,
                child: buttonChild ?? const Text('Exit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
