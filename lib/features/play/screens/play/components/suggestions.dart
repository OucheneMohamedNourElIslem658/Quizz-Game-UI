import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Suggestions extends StatelessWidget {
  Suggestions({
    super.key,
  });

  final suggestions = ['Apple','Dell','Microsoft','IBM'];
  final isAnswer = [true,null,null,false,null];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        suggestions.length, 
        (index) {
          final suggestion = suggestions[index];
          return Container(
            width: Get.width-40,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(13)),
              border: isAnswer [index] != null
              ? Border.all(
                width: 2,
                color:isAnswer [index] == true
                  ?const Color(0xFF34A835)
                  :const Color(0xFFEA4335)
              )
              :null,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(3, 4),
                  blurRadius: 40
                )
              ]
            ),
            child: Suggestion(
              suggestion: suggestion, 
              isAnswer: isAnswer,
              index: index
            ),
          );
        }
      ),
    );
  }
}

class Suggestion extends StatelessWidget {
  const Suggestion({
    super.key,
    required this.suggestion,
    required this.isAnswer,
    required this.index
  });

  final String suggestion;
  final List<bool?> isAnswer;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          suggestion,
          style: const TextStyle(
            fontFamily: 'poppinsMedium',
            fontSize: 20,
          ),
        ),
        const Spacer(),
        isAnswer[index] == true
        ? SvgPicture.asset('assets/icons/true.svg')
        : isAnswer[index] == false
          ? SvgPicture.asset('assets/icons/false.svg')
          :const SizedBox(),
      ],
    );
  }
}
