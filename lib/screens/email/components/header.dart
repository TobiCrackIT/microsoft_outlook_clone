import 'package:flutter/material.dart';
import 'package:mallam/helpers/constants.dart';
import 'package:mallam/helpers/responsive.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          if (!Responsive.isMobile(context)) BackButton(),
          IconButton(
            icon: Icon(
              MdiIcons.delete,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              MdiIcons.reply,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              MdiIcons.replyAll,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              MdiIcons.transfer,
              size: 24,
            ),
            onPressed: () {},
          ),
          if (Responsive.isDesktop(context))
            IconButton(
              icon: Icon(
                MdiIcons.printer,
                size: 24,
              ),
              onPressed: () {},
            ),
          IconButton(
            icon: Icon(
              MdiIcons.tag,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              MdiIcons.dotsVertical,
              size: 24,
            ),
            onPressed: () {},
          ),
          Spacer(),
        ],
      ),
    );
  }
}
