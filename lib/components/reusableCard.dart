import 'package:expense_tracker/utility/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget? leading, subTitle, trailing;
  final String? title;
  const ReusableCard(
      {super.key, this.leading, this.subTitle, this.trailing, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Container(height: 60,
              width: 60,
                child: leading,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? "",
                      style: TextStyle(fontSize:subTitle ==null?16:  14, fontFamily: "Inter"),
                    ),
                 subTitle ==null?Container():   SizedBox(height: 4,),
                    Container(
                          child: subTitle,
                        ) ??
                        Container()
                  ],
                ),
              ),
                SizedBox(
                width: 12,
              ),
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: trailing,
                    ),
                  ))
            ],
          ),
        )
        // child: ListTile(
        //   leading: leading,
        //   title: Text(
        //     title ?? "",
        //     style: TextStyle(fontSize: 14, fontFamily: "Inter"),
        //   ),
        //   subtitle: subTitle,
        //   trailing: trailing,
        // )),
        );
  }
}
