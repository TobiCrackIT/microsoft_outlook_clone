import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mallam/components/tags.dart';
import 'package:mallam/helpers/constants.dart';
import 'package:mallam/helpers/responsive.dart';
import 'package:mallam/helpers/extensions.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo Outlook.png",
                    width: 46,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              /*SizedBox(height: kDefaultPadding),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                icon: Icon(
                  MdiIcons.emailEdit,
                ),
                label: Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),
              ).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),*/
              SizedBox(height: kDefaultPadding),

              FlatButton.icon(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kBgDarkColor,
                onPressed: () {},
                icon: Icon(
                  MdiIcons.download,
                ),
                label: Text(
                  "Get messages",
                  style: TextStyle(color: kTextColor),
                ),
              ).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),
              SizedBox(height: kDefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconSrc: MdiIcons.inbox,
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                press: () {},
                title: "Sent",
                iconSrc: MdiIcons.send,
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Drafts",
                iconSrc: MdiIcons.file,
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Deleted",
                iconSrc: MdiIcons.delete,
                isActive: false,
                showBorder: false,
              ),

              SizedBox(height: kDefaultPadding * 2),
              // Tags
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
