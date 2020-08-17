import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const ButtonWidget({this.label, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label.toUpperCase(),
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
