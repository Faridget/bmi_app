import 'package:bmi_app/widgets/call_icon.dart';
import 'package:flutter/material.dart';
 

class ProfilHeader extends StatelessWidget {
  const ProfilHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/55.jpg'),
          radius: 70,
        ),
        const SizedBox(width: 20),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Anas Eldgwy',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Dentist',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text('3')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CallIconWidget(text: '1', onTap: () {}),
                const SizedBox(
                  width: 10,
                ),
                CallIconWidget(text: '2', onTap: () {}),
                const SizedBox(
                  width: 10,
                ),
                CallIconWidget(text: '3', onTap: () {})
              ],
            )
          ],
        )
      ],
    );
  }
}
