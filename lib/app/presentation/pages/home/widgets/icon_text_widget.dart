import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  const IconTextWidget({this.image, this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Theme.of(context).accentColor,
            ),
          ),
          Text(
            text.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
