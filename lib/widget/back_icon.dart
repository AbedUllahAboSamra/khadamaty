


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BackIcon extends StatelessWidget {
  const BackIcon({Key? key,  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,

      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          height: 20.h,
          width: 30.w,
          alignment: AlignmentDirectional.centerStart,
          child: const Icon(
            Icons.arrow_back_sharp,
          )),
    );
  }
}
