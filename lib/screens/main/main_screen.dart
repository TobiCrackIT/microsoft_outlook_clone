import 'package:flutter/material.dart';
import 'package:mallam/components/side_menu.dart';
import 'package:mallam/helpers/constants.dart';
import 'package:mallam/helpers/responsive.dart';
import 'package:mallam/screens/email/email_screen.dart';
import 'package:mallam/screens/main/components/email_list.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
          mobile: EmailList(),
          tablet: Row(
            children: [
              Expanded(
                flex: 6,
                child: EmailList(),
              ),
              Expanded(
                flex: 9,
                child: EmailScreen(),
              ),
            ],
          ),
          desktop: Row(
            children: [
              Expanded(
                flex: _size.width > 1340 ? 2 : 4,
                child: SideMenu(),
              ),
              Expanded(
                flex: _size.width > 1340 ? 3 : 5,
                child: EmailList(),
              ),
              Expanded(
                flex: _size.width > 1340 ? 8 : 10,
                child: EmailScreen(),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(MdiIcons.plus,size: 20,color: Colors.white,),
        onPressed: () {},
      ),
    );
  }
}
