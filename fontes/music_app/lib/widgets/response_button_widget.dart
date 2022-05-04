import 'package:flutter/material.dart';

class ResponseButtonWidget extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool isSelected;

  const ResponseButtonWidget(
      {Key key, this.title, this.onPressed, this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        child: Container(
          height: MediaQuery.of(context).size.longestSide * .2,
          width: MediaQuery.of(context).size.longestSide * .2,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: this.isSelected
                    ? Colors.purple.withOpacity(0.5)
                    : Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
              ),
            ],
          ),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.longestSide * .07,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'asap-vf-beta',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
