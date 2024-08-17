part of 'widgets.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign textAlign;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  final double? height;

  const CustomText(
    this.text, {
    super.key,
    this.color,
    this.textAlign = TextAlign.start,
    this.style,
    this.maxLines,
    this.textOverflow,
    this.height,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style ?? regXs).copyWith(
        color: color ?? Colors.black,
        height: height,
        decoration: textDecoration,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}
