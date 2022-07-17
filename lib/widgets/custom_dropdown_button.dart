import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_list.dart';
import 'package:seu_blood_2/utils/app_strings.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({Key? key}) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropDownValue = StringManager.selectBloodGroup;
  List<String> item = ListManager.dropDownItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: const Icon(Icons.arrow_downward, color: ColorManager.shadow,),
        // ),
        DropdownButton<String>(
          alignment: Alignment.center,
          icon: Container(),
          value: dropDownValue,
          items: item.map<DropdownMenuItem<String>>((String items) {
            return DropdownMenuItem<String>(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
            });
          },
        ),
      ],
    );
  }
}
