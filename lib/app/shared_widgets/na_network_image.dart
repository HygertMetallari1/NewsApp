

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';

class NANetworkImage extends StatelessWidget {
  final String imageUrl;
  final bool isCovered;
  final double? width;
  final double? height;

  const NANetworkImage({Key? key,
    required this.imageUrl,
    required this.isCovered,
    this.width,
    this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.network(
      imageUrl,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder:
        (BuildContext context, Object exception, StackTrace? stackTrace) {
       return Icon (
         Icons.photo,
         color: isDarkMode(context) ? NAColors.white70 : NAColors.black,
       );
      },
      fit: isCovered ? BoxFit.cover : null,
      width: isCovered ? null : width,
      height: isCovered ? null : height,
    );
  }
}
