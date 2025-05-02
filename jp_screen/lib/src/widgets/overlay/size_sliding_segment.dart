import 'package:flutter/cupertino.dart';
import 'package:jp_screen/src/widgets/overlay/minus_circle.dart';
import 'package:jp_screen/src/widgets/overlay/number_one.dart';
import 'package:jp_screen/src/widgets/overlay/plus_circle.dart';

class SizeSlidingSegment extends StatelessWidget {
  const SizeSlidingSegment({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 700,
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CupertinoSlidingSegmentedControl<int>(
            backgroundColor: const Color(0x60605E5E),
            thumbColor: const Color.fromARGB(255, 97, 95, 95),
            groupValue: 2,
            children: const {
              0: Text('Small', style: TextStyle(color: Color(0x9DFFFFFF))),
              1: Text('Medium', style: TextStyle(color: Color(0x9DFFFFFF))),
              2: Text('Large', style: TextStyle(color: Color(0xE0FFFFFF))),
            },
            onValueChanged: (value) {},
          ),
          const SizedBox(width: 10),
          MinusCircle(),
          NumberOne(),
          PlusCircle(),
        ],
      ),
    );
  }
}
