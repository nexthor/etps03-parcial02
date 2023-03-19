import 'package:etps3_parcial2_2556012018/separator.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              _textLabel("Nombre:"),
              const Separator(),
              _textData("Nestor Danilo Mendoza")
            ],
          ),
          const Separator(),
          Row(
            children: [
              _textLabel("Carnet:"),
              const Separator(),
              _textData("25-5601-2018")
            ],
          ),
          const Separator(),
          Row(
            children: [
              _textLabel("Carrera:"),
              const Separator(),
              _textData("Ingenieria en Sistemas")
            ],
          ),
          const Separator(),
          Row(
            children: [
              _textLabel("Direccion:"),
              const Separator(),
              _textData("Santa Tecla, La Libertad")
            ],
          ),
          const Separator(),
        ],
      ),
    );
  }

  Widget _textLabel(String text) => Text(
        text,
        maxLines: 2,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey),
      );
  Widget _textData(String text) => Text(
        text,
        maxLines: 2,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
      );
}
