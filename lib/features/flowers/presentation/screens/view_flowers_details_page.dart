import 'package:flutter/material.dart';

import '../../domain/entities/post_entity.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_app_bar_title.dart';
import '../widgets/flowers_post_details.dart';
import '../widgets/responsive_safe_area.dart';

class ViewFlowersDetailsPage extends StatefulWidget {
  final PostEntity post;

  const ViewFlowersDetailsPage({
    super.key,
    required this.post,
  });

  @override
  _ViewFlowersDetailsPage createState() => _ViewFlowersDetailsPage();
}

class _ViewFlowersDetailsPage extends State<ViewFlowersDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSafeArea(builder: (context, size) {
      return Scaffold(
          appBar: CustomAppBar(
            height: size.height,
            width: size.width,
            leading: MaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back_ios,
                size:
                    size.width > 412 ? size.height * 0.05 : size.height * 0.04,
                color: Colors.black,
              ),
            ),
            title: const CustomAppBarTitle(
              text: 'Back',
            ),
          ),
          body: FlowersPostDetails(
            post: widget.post,
            size: size,
          ));
    });
  }
}
