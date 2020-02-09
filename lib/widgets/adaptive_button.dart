import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String btnText;
  final Function onClick;

  const AdaptiveButton({
    @required this.btnText,
    @required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    print("build() Adaptivebutton");
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              btnText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: onClick,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              btnText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: onClick,
          );
  }
}
