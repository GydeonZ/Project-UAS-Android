import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/leading_appbar.dart';

class CustomAppbarProduct extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppbarProduct({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Color(0xff4f5259),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: const [DetailProductLeadingAppBar()],
    );
  }
}
