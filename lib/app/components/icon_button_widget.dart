import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {

  const IconButtonWidget({
    Key? key,
    this.svg,
    this.icon,
    this.radius,
    this.onPressed,
    this.color,
    this.iconColor,
    this.padding = const EdgeInsets.all(7),
    this.margin = EdgeInsets.zero,
    this.iconSize = 25,
    this.textDirection,
  }) : assert(!(svg != null && icon != null)),
        super(key: key);

  final String? svg;
  final IconData? icon;
  final double? iconSize;
  final double? radius;
  final Color? iconColor;
  final Color? color;
  final void Function()? onPressed;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if(svg != null){
      child = SvgPicture.asset(svg!,color: iconColor ?? Theme.of(context).appBarTheme.foregroundColor,width: iconSize,height: iconSize,fit: BoxFit.contain,);
    } else if(icon != null){
      child = Icon(icon,color: iconColor ?? ((color??Theme.of(context).colorScheme.background).computeLuminance()>0.5?Colors.black:Colors.white),size: iconSize,key: Key(icon!.codePoint.toString()),textDirection: textDirection,);
    }
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            color: color ?? Colors.transparent,
            shape: radius == null? BoxShape.circle:BoxShape.rectangle,
            borderRadius: radius == null?null:BorderRadius.circular(radius!)
          ),
          padding: padding,
          alignment: Alignment.center,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => ScaleTransition(scale: animation,child: child,),
            child: child,
          ),
        ),
      ),
    );
  }
}
