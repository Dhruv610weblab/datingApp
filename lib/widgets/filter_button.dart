import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({
    Key? key,
    required this.fem,
    this.isFilter = false,
    this.onPress,
  }) : super(key: key);
  final bool isFilter;
  final double fem;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.fromLTRB(18 * fem, 19 * fem, 18 * fem, 19 * fem),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe8e6ea)),
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(15 * fem),
        ),
        child: Center(
          // rightY56 (I309:5330;152:127)
          child: SizedBox(
            width: 18 * fem,
            height: 18 * fem,
            child: Image.asset(
              isFilter
                  ? "assets/ui-kit/sort-two.png"
                  : 'assets/ui-kit/setting-config.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
