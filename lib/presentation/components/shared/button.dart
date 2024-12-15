import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/res.dart';

enum Buttonstate {
  idle,
  loading,
  disabled,
}

class ButtonPill extends StatelessWidget {
  const ButtonPill({
    super.key,
    this.onPressed,
    this.text,
    this.color,
    this.textColor,
    this.borderRadius = 24,
    this.width,
    this.height,
    this.padding,
    this.fontSize = 14,
    this.fontWeight,
    this.borderColor,
    this.buttonstate = Buttonstate.idle,
    this.child,
    this.constraints,
  });
  final VoidCallback? onPressed;
  final String? text;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final Buttonstate buttonstate;
  final Widget? child;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: height ?? 50.0,
      width: width,
      padding: padding,
      constraints: constraints,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        /// This line of code is setting the background color of the button. It checks the value of the
        /// `buttonstate` parameter and if it is equal to `Buttonstate.disabled`, it sets the color to
        /// `AppColors.kDarkGrey`. Otherwise, it sets the color to the value of the `color` parameter,
        /// which is passed in when the function is called. If `color` is null, it sets the color to a
        /// default value of `const Color(0xFF09132D)`.
        color: (buttonstate == Buttonstate.disabled)
            ? AppColors.grey
            : color ?? AppColors.primary,
        border: Border.all(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
      ),
      child: ButtonTheme(
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            /// This code is setting the child of the `TextButton` widget. It checks the value of the
            /// `buttonstate` parameter and if it is equal to `Buttonstate.loading`, it sets the child to
            /// a `SizedBox` widget with a `CircularProgressIndicator` inside it. This is used to indicate
            /// that the button is in a loading state and the user should wait for the action to complete.
            /// If `buttonstate` is not equal to `Buttonstate.loading`, it sets the child to a `Text`
            /// widget with the `text` parameter passed in when the function is called. The `textColor`,
            /// `fontSize`, and `fontWeight` parameters are also used to style the text.
            child: child ??
                ((buttonstate == Buttonstate.loading)
                    ? const SizedBox.square(
                        dimension: 30,
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                    : Text(
                        text.toString(),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: fontWeight ?? FontWeight.w500,
                        ),
                      )),
          ),
        ),
      ),
    );
  }
}
