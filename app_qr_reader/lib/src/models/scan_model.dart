import 'package:flutter/material.dart';

class ScanModel {

  ScanModel({
    this.id,
    this.tipo,
    required this.valor,
  }){
    if (this.valor.contains('http') || this.valor.contains('https'))
    {
      this.tipo = 'http';
    }else{
      this.tipo = 'geo';
    }
  }

  int? id;
  String? tipo;
  String valor;

  factory ScanModel.fromJson(Map<String, dynamic> json) => new ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
