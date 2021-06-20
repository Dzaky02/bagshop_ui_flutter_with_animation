import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';

class ColorOptions extends StatefulWidget {
  // const ColorOptions({ Key? key }) : super(key: key);

  @override
  _ColorOptionsState createState() => _ColorOptionsState();
}

class _ColorOptionsState extends State<ColorOptions> {
  List<Color> colors = [
    Color(0xFF356C95),
    Color(0xFFF8C078),
    Color(0xFFA29B9B)
  ];

  // selected color item index
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: mDefaultPadding / 4),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: ColorItem(
              color: colors[index],
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: EdgeInsets.only(
        right: mDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
