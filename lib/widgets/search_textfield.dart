import 'package:chitchat/config/theme.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String title;
  final Function onChanged;

  const SearchTextField({
    @required this.title,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: _searchQuery,
      autofocus: true,
      decoration: InputDecoration(
        hintText: title,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      style: TextStyle(
        color: normalTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: Theme.of(context).accentColor,
      onChanged: onChanged,
    );
  }
}
