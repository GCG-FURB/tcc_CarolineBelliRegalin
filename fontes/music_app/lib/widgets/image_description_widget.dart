import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ImageDescriptionWidget extends StatelessWidget {
  final String description;
  final String imageUrl;
  final Color primaryColor;
  final Color secondaryColor;
  final Function onPressed;

  const ImageDescriptionWidget(
      {key,
      this.description,
      this.imageUrl,
      this.primaryColor,
      this.secondaryColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: secondaryColor.withOpacity(0.5),
              spreadRadius: 2,
            ),
          ],
        ),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.longestSide * 0.15,
              child: Image.asset(imageUrl),
            ),
            if (description != null)
              Container(
                height: MediaQuery.of(context).size.longestSide * .05,
                alignment: Alignment.bottomCenter,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
