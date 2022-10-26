import 'package:flutter/material.dart';

import '../widget/build_post_item.dart';

class FiniancePage extends StatelessWidget {
  const FiniancePage({Key? key}) : super(key: key);

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
