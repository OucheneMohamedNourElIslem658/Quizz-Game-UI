import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    super.key,
    this.child,
    this.isPlaying
  });

  final Widget? child;
  final bool? isPlaying;

  @override
  Widget build(BuildContext context) {
    if (isPlaying == null || !isPlaying!) {
      return Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: FilteredSVGImage(image: 'assets/images/yellow_piece.svg'),
          ),
          const Align(
            alignment: Alignment(-1,0.2),
            child: FilteredSVGImage(image: 'assets/images/blue_piece.svg')
          ),
          const Align(
            alignment: Alignment(-1,-0.3),
            child: FilteredSVGImage(image: 'assets/images/red_piece.svg')
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: FilteredSVGImage(image: 'assets/images/bg_blue_points.svg'),
          ),
          const Align(
            alignment: Alignment(1,-0.75),
            child: FilteredSVGImage(image: 'assets/images/green_piece.svg'),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: FilteredSVGImage(image: 'assets/images/rectangles.svg'),
          ),
          Positioned.fill(child: child ?? Container())
        ],
      );
    } else {
      return Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: FilteredSVGImage(image: 'assets/images/blue_points_p.svg'),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: FilteredSVGImage(image: 'assets/images/lines_p_down.svg')
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: FilteredSVGImage(image: 'assets/images/blue_points_p_down.svg')
          ),
          const Align(
            alignment: Alignment.topRight,
            child: FilteredSVGImage(image: 'assets/images/lines_p.svg'),
          ),
          Positioned.fill(child: child ?? Container())
        ],
      );
    }
  }
}

class FilteredSVGImage extends StatelessWidget {
  const FilteredSVGImage({
    super.key,
    required this.image
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
      child: SvgPicture.asset(
        image,
      ),
    );
  }
}