

import 'package:flutter/material.dart';
import 'package:khadamaty_project/mvc/view/main/widget/build_post_item.dart';

class JopsPage extends StatelessWidget {
  const JopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context , index){ return BuildPostItem();
          },
          itemCount: 5),
    );
  }
}
