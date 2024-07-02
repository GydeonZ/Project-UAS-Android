import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/widget/mail_and_basket_widget.dart';
import 'package:projectuas/screen/view/widget/searchbar_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: const [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SearchbarWidget()),
              MailAndBasketWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
