import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SigleCard(color: Colors.blue, icon: Icons.border_all, text: 'Generals',),
          _SigleCard(color: Colors.pink, icon: Icons.car_rental, text: 'Transporte',),
        ]),
        TableRow(children: [
          _SigleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping',),
          _SigleCard(color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill',),
        ]),
        TableRow(children: [
          _SigleCard(color: Colors.blue, icon: Icons.movie, text: 'Generals',),
          _SigleCard(color: Colors.pink, icon: Icons.house, text: 'Transporte',),
        ]),
        TableRow(children: [
          _SigleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping',),
          _SigleCard(color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill',),
        ]),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color;

  const _SigleCard({Key? key, required this.icon, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 30,
            ),
            radius: 30,
          ),
          SizedBox(height: 20),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
