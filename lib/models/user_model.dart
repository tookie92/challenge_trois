import 'package:nike_idee/models/shoe_model.dart';

class UserModel{

  final int id;
  final String nom;
  final String status;
  final String imgPath;
  final String adresse;
  final List<ShoeModel> shoes;

  UserModel({this.id, this.nom, this.adresse, this.shoes,this.imgPath,this.status});

}