import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mallam/helpers/constants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xff8793B3),),
            SizedBox(width: kDefaultPadding / 4),
            Icon(MdiIcons.tagOutline,size: 20,color: Color(0xff8793B3),),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "Tags",
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kGrayColor),
            ),
            Spacer(),
            MaterialButton(
              padding: EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: kGrayColor,
                size: 20,
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        buildTag(context, color: Color(0xFF23CF91), title: "Design"),
        buildTag(context, color: Color(0xFF3A6FF7), title: "Work"),
        buildTag(context, color: Color(0xFFF3CF50), title: "Friends"),
        buildTag(context, color: Color(0xFF8338E1), title: "Family"),
      ],
    );
  }

  InkWell buildTag(BuildContext context,
      {@required Color? color, @required String? title}) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            Icon(MdiIcons.tag,size: 18,color: color,),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              title!,
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kGrayColor),
            ),
          ],
        ),
      ),
    );
  }
}
