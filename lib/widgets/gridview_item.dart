import 'package:flutter/material.dart';

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
          color: _isSelected? Colors.black: Colors.white
        ),
      ),
      shape: CircleBorder(),
      fillColor: _isSelected? Colors.white: Colors.black,
      onPressed: null,
    );
  }
}
