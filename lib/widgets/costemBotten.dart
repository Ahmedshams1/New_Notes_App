import 'package:flutter/material.dart';
import 'package:newnoteapp/constant.dart';

class CostomButton extends StatelessWidget {
  const CostomButton({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kprimaryColor),
        child: Center(
          child: isloading
              ? CircularProgressIndicator()
              : Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
