import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  Widget titelItem({
    required String titel,
    required String? subtitel,
    required IconData icon,
  }) {
    return ListTile(
      title: Text(titel),
      leading: Icon(
        icon,
        size: 35,
        color: Colors.deepOrange,
      ),
      subtitle: subtitel != null ? Text(subtitel) : null,
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.deepOrange,
        size: 30,
      ),
    );
  }

  Widget OrdersVouchers({
    required String name,
    required int number,
  }) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.deepOrange),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/a.jpg'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          "Abdo Gaber",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OrdersVouchers(name: 'Orders', number: 50),
            OrdersVouchers(name: 'Vouchers', number: 10),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        const Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        titelItem(
          titel: 'Past Orders',
          icon: Icons.shopping_cart,
          subtitel: '',
        ),
        const Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        titelItem(
          titel: 'Avallable Vouchers',
          icon: Icons.card_travel_sharp,
          subtitel: '',
        ),
        const Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
