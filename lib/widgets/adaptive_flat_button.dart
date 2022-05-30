import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  // const AdaptiveFlatButton({ Key? key }) : super(key: key);
  final Function presentDatePicker;
  final String textInput;

  AdaptiveFlatButton(this.textInput, this.presentDatePicker);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child:
                Text(textInput, style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: presentDatePicker,
          )
        : FlatButton(
            onPressed: presentDatePicker,
            child: Text(textInput),
            textColor: Theme.of(context).primaryColor,
          );
  }
}
