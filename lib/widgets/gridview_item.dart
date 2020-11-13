import 'package:flutter/material.dart';
import 'package:nike_idee/settings/settings.dart';

class GridViewItem extends StatelessWidget {
  final double _shoeSize;
  final bool _isSelected;

  GridViewItem(this._shoeSize, this._isSelected);


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        _shoeSize.toStringAsFixed(0),
        style: TextStyle(
          color: _isSelected? Palette.blackColor: Colors.white
        ),
      ),
      shape: CircleBorder(),
      fillColor: _isSelected? Colors.white: Palette.blackColor,
      onPressed: null,
    );
  }
}
