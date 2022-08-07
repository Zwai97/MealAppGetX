import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final bool enable;
  final Function function;
  final Widget? leading;
  final Widget? trailing;
  final Widget? subtitle;
  const CustomListTile({
    Key? key,
    required this.text,
    required this.function,
    this.leading,
    this.trailing,
    this.subtitle,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: enable,
      onTap: () => function(),
      leading: leading,
      title: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.sp),
      ),
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
