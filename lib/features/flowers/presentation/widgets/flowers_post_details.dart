import 'package:flutter/material.dart';

import '../../domain/entities/post_entity.dart';
import 'rect_image.dart';

class FlowersPostDetails extends StatefulWidget {
  final PostEntity post;
  final Size size;

  const FlowersPostDetails({super.key, required this.post, required this.size});

  @override
  _FlowersPostDetails createState() => _FlowersPostDetails();
}

class _FlowersPostDetails extends State<FlowersPostDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: RectImage(
              size: widget.size,
              imagePath: 'assets/images/flowers/${widget.post.imageName}',
              imageHeight: 1,
            )),
        Expanded(
          flex: 3,
          child: Container(
            width: widget.size.width,
            decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: widget.size.width > 412
                      ? widget.size.height * 0.01
                      : widget.size.height * 0.01,
                  horizontal: widget.size.width > 412
                      ? widget.size.width * 0.09
                      : widget.size.width * 0.09),
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(widget.post.name,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: widget.size.width > 412
                                      ? widget.size.height * 0.05
                                      : widget.size.height * 0.05,
                                )),
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(
                                      widget.size.height * 0.03),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      widget.size.width > 412
                                          ? widget.size.height * 0.05
                                          : widget.size.height * 0.015),
                                  child: Text(
                                      '${widget.post.price.toString()} uah',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: widget.size.width > 412
                                            ? widget.size.height * 0.06
                                            : widget.size.height * 0.025,
                                      )),
                                ),
                              ))
                        ],
                      )),
                  Expanded(
                    flex: 3,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description',
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: widget.size.width > 412
                                  ? widget.size.height * 0.05
                                  : widget.size.height * 0.035,
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(widget.post.description,
                                style: TextStyle(
                                  overflow: TextOverflow.fade,
                                  color: Colors.black,
                                  fontSize: widget.size.width > 412
                                      ? widget.size.height * 0.02
                                      : widget.size.height * 0.022,
                                )),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: widget.size.width,
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(
                                    widget.size.height * 0.03),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(widget.size.width > 412
                                    ? widget.size.height * 0.01
                                    : widget.size.height * 0.005),
                                child: Text(
                                    '${widget.post.quantity.toString()}\nflowers inside',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      overflow: TextOverflow.fade,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: widget.size.width > 412
                                          ? widget.size.height * 0.06
                                          : widget.size.height * 0.025,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 3,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text('Color',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: widget.size.width > 412
                                    ? widget.size.height * 0.035
                                    : widget.size.height * 0.035,
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(widget.size.width > 412
                                ? widget.size.height * 0.01
                                : widget.size.height * 0.01),
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.post.color,
                                borderRadius: BorderRadius.circular(
                                    widget.size.height * 0.03),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Flower size',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: widget.size.width > 412
                                        ? widget.size.height * 0.035
                                        : widget.size.height * 0.035,
                                  )),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: widget.post.size,
                          child: ClipRect(
                            child: Image.asset(
                                'assets/images/flowers/flowerSize.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
