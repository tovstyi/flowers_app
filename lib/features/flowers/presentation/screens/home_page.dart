import 'package:flutter/material.dart';

import '../../../../core/constants/flowers_posts.dart';
import '../widgets/flowers_post.dart';
import '../widgets/responsive_safe_area.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSafeArea(
      builder: (BuildContext context, Size size) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.width > 412
                      ? size.height * 0.01
                      : size.height * 0.015),
              child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: flowersPosts.length,
                  itemBuilder: (BuildContext context, int index) => FlowersPost(
                        post: flowersPosts[index],
                        size: size,
                      )),
            ),
          ],
        );
      },
    );
  }
}
