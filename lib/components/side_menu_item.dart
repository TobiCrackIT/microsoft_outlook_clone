import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mallam/helpers/constants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'counter_badge.dart';

class SideMenuItem extends StatelessWidget {
  final bool? isActive, isHover, showBorder;
  final int? itemCount;
  final String? title;
  final IconData? iconSrc;
  final VoidCallback? press;

  const SideMenuItem({
    Key? key,
    this.isActive,
    this.isHover = false,
    this.itemCount,
    this.showBorder = true,
    @required this.iconSrc,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding),
        child: InkWell(
          onTap: press,
          child: Row(
            children: [
              (isActive! || isHover!)
                  ? Icon(
                      MdiIcons.angleRight,
                      size: 20,
                      color:
                          (isActive! || isHover!) ? kPrimaryColor : kGrayColor,
                    )
                  : SizedBox(width: 15),
              SizedBox(width: kDefaultPadding / 4),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(bottom: 15, right: 5),
                decoration: showBorder!
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFDFE2EF)),
                        ),
                      )
                    : null,
                child: Row(
                  children: [
                    Icon(
                      iconSrc,
                      size: 20,
                      color:
                          (isActive! || isHover!) ? kPrimaryColor : kGrayColor,
                    ),
                    SizedBox(width: kDefaultPadding * 0.75),
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color: (isActive! || isHover!)
                                ? kTextColor
                                : kGrayColor,
                          ),
                    ),
                    Spacer(),
                    if (itemCount != null) CounterBadge(count: itemCount),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
