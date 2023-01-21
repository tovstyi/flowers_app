import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../domain/entities/post_entity.dart';
import '../screens/view_flowers_details_page.dart';
import 'rect_image.dart';

class FlowersPost extends StatefulWidget {
  final PostEntity post;
  final Size size;

  const FlowersPost({super.key, required this.post, required this.size});

  @override
  _GalleryPost createState() => _GalleryPost();
}

class _GalleryPost extends State<FlowersPost> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(PageTransition(
        child: ViewFlowersDetailsPage(
          post: widget.post,
        ),
        type: PageTransitionType.fade,
        alignment: Alignment.center,
      )),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.size.width > 412
                ? widget.size.width * 0.06
                : widget.size.width * 0.06,
            vertical: widget.size.width > 412
                ? widget.size.height * 0.01
                : widget.size.height * 0.01),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: widget.size.width > 412
                  ? widget.size.width * 0.025
                  : widget.size.width * 0.025,
              vertical: widget.size.width > 412
                  ? widget.size.height * 0.01
                  : widget.size.height * 0.01),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.size.height * 0.03),
              color: Colors.green.withOpacity(0.45)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 3,
                  child: RectImage(
                    size: widget.size,
                    fit: BoxFit.cover,
                    imagePath: 'assets/images/flowers/${widget.post.imageName}',
                    imageHeight: 0.14,
                  )),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: widget.size.width > 412
                            ? widget.size.width * 0.06
                            : widget.size.width * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.post.name,
                            style: TextStyle(
                              overflow: TextOverflow.fade,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: widget.size.width > 412
                                  ? widget.size.height * 0.05
                                  : widget.size.height * 0.03,
                            )),
                        Text('${widget.post.price.toString()} uah',
                            style: TextStyle(
                              overflow: TextOverflow.fade,
                              color: Colors.black.withOpacity(0.5),
                              fontSize: widget.size.width > 412
                                  ? widget.size.height * 0.07
                                  : widget.size.height * 0.025,
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
