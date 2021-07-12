import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mallam/components/side_menu.dart';
import 'package:mallam/helpers/constants.dart';
import 'package:mallam/helpers/responsive.dart';
import 'package:mallam/model/email.dart';
import 'package:mallam/screens/email/email_screen.dart';
import 'package:mallam/screens/main/components/email_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmailList extends StatefulWidget {
  const EmailList({
    Key? key,
  }) : super(key: key);

  @override
  _EmailListState createState() => _EmailListState();
}

class _EmailListState extends State<EmailList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: SideMenu(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgDarkColor,
        child: SafeArea(
          right: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Row(
                  children: [
                    if (!Responsive.isDesktop(context))
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    if (!Responsive.isDesktop(context)) SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search",
                          fillColor: kBgLightColor,
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(
                                kDefaultPadding * 0.75), //15
                            child: Icon(
                              MdiIcons.accountSearch,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.chevronDown,
                      color: Colors.black,
                      size: 16,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sort by date",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      MdiIcons.sortCalendarAscending,
                      size: 16,
                    )
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) => EmailCard(
                    isActive: Responsive.isMobile(context) ? false : index == 0,
                    email: emails[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EmailScreen(email: emails[index]),
                        ),
                      );
                    },
                  ),
                  itemCount: emails.length,
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
