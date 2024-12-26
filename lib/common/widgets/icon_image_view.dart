import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class IconImageView extends StatelessWidget {
  final String image;

  const IconImageView({
    super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return  FadeInImage.assetNetwork(
      width: 35.w,
      height: 35.w,
      image: image,
      fit: BoxFit.cover,
      placeholder: "",
      placeholderFit: BoxFit.cover,
      fadeInDuration: const Duration(milliseconds: 500),
      fadeOutDuration: const Duration(milliseconds: 1000),
      placeholderErrorBuilder: (context,_,stackTrace) =>
          Image.asset(
              Assets.imagesCloud,
              width: 30.w,
              height: 30.h,
          ),
      imageErrorBuilder: (context,_, stackTrace) =>
          Image.asset(
            Assets.imagesCloud,
            width: 30.w,
            height: 30.h,
          ),
    );
  }
}
