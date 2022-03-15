import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TouchableOpacity extends StatelessWidget {
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final double activeOpacity;

  const TouchableOpacity({
    Key? key,
    this.padding,
    this.onPressed,
    required this.child,
    this.activeOpacity = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CupertinoButton(
      minSize: 0,
      pressedOpacity: activeOpacity,
      padding: padding ?? EdgeInsets.zero,
      onPressed: onPressed,
      child: DefaultTextStyle(
        style: theme.textTheme.bodyText2 ?? const TextStyle(),
        child: IconTheme(
          data: theme.iconTheme,
          child: child,
        ),
      ),
    );
  }
}