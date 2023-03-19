import 'package:etps3_parcial2_2556012018/separator.dart';
import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[300]),
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        const Text(
          "Registra tu tarjeta de credito",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const Separator(),
        _input(Icons.person, 'nombre tarjeta', TextInputType.text, false),
        const Separator(),
        _input(Icons.card_membership_outlined, 'numero', TextInputType.number,
            false),
        const Separator(),
        Row(
          children: [
            SizedBox(
              width: 165,
              child: _input(
                  Icons.person, 'mes expiracion', TextInputType.number, false),
            ),
            const Separator(),
            SizedBox(
              width: 165,
              child: _input(
                  Icons.person, 'año expiracion', TextInputType.number, false),
            ),
          ],
        ),
        const Separator(),
        _input(Icons.person, 'CCV', TextInputType.number, true),
        const Separator(),
        _button(),
      ]),
    );
  }

  Widget _input(
      IconData icon, String hint, TextInputType type, bool obscureText) {
    return TextField(
      keyboardType: type,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.white70,
          contentPadding: const EdgeInsets.all(2),
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(50.0))),
    );
  }

  Widget _button() => ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigoAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          minimumSize: const Size.fromHeight(50)),
      child: const Text("Guardar", style: TextStyle(color: Colors.white)));
}
