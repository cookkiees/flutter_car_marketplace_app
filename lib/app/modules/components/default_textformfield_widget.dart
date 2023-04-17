import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../auth/auth_controller.dart';

class DefaultTextFormFieldWidget extends GetView<AuthController> {
  const DefaultTextFormFieldWidget(
      {super.key,
      required this.icons,
      required this.hintText,
      this.suffixIcon,
      this.onPressed});

  final String icons;
  final String hintText;
  final Widget? suffixIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: controller.myFocusNode,
      child: Obx(
        () => TextFormField(
          onTap: () => controller.onFocusChange(true),
          cursorColor: Colors.black,
          obscureText: controller.obscureText.value,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            hintText: hintText,
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            suffixIcon: suffixIcon,
            prefixIcon: Obx(
              () => IconButton(
                splashRadius: 20,
                onPressed: onPressed,
                icon: SvgPicture.asset(
                  icons,
                  height: 30,
                  width: 30,
                  fit: BoxFit.none,
                  colorFilter: controller.focusNode.value
                      ? const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        )
                      : const ColorFilter.mode(
                          Colors.grey,
                          BlendMode.srcIn,
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
