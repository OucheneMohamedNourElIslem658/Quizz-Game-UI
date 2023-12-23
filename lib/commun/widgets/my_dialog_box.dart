import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDialogBox extends StatelessWidget {
  const MyDialogBox({
    super.key, 
    required this.height, 
    required this.width,
    required this.child,
    this.showButton,
    this.showDecoration,
    this.radius,
    this.buttonEffect
  });

  final double height;
  final double width;
  final Widget child;
  final bool? showButton;
  final bool? showDecoration;
  final double? radius;
  final VoidCallback? buttonEffect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height+35,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 18)),
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Stack(
                children: [
                  showDecoration == null || showDecoration!
                  ?Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SvgPicture.asset('assets/images/lines.svg'),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset('assets/images/lines_top.svg'),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset('assets/images/points_top.svg'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SvgPicture.asset('assets/images/lines_bottom.svg'),
                      ),
                    ],
                  )
                  : const SizedBox(),
                  Align(
                    child: child,
                  )
                ],
              )
            ),
          ),
          showButton == null || showButton!
          ? Align(
            alignment: Alignment.bottomCenter,
            child: Next(
              onPressed: buttonEffect ?? (){},
              child: SvgPicture.asset('assets/icons/next.svg')
            ),
          )
          :const SizedBox()
        ],
      ),
    );
  }
}

class Next extends StatelessWidget {
  const Next({
    super.key,
    required this.child,
    required this.onPressed
  });

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80,
        width: 85,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          gradient: LinearGradient(
            colors: [
              Color(0xFFEA4335),
              Color(0xFFFBBC05)
            ]
          )
        ),
        child: child,
      ),
    );
  }
}