import 'package:flutter/material.dart';

class MatchesDivider extends StatelessWidget {
  const MatchesDivider(
      {Key? key, required this.fem, required this.ffem, this.text})
      : super(key: key);

  final double fem;
  final double ffem;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // today8u6 (309:5598)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // line1g9v (309:5601)
            margin: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 0 * fem),
            width: 115 * fem,
            height: 1 * fem,
            decoration: BoxDecoration(
              color: Color(0xffe8e6ea),
            ),
          ),
          SizedBox(
            width: 11 * fem,
          ),
          Text(
            // todayzgQ (309:5599)
            text.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: 11 * fem,
          ),
          Container(
            // line26jS (309:5600)
            margin: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 0 * fem),
            width: 115 * fem,
            height: 1 * fem,
            decoration: BoxDecoration(
              color: Color(0xffe8e6ea),
            ),
          ),
        ],
      ),
    );
  }
}
