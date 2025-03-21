import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';

import 'package:flutter/material.dart';

class DataSuccessPage extends StatelessWidget {
  const DataSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Paket Data\nBerhasil Terbeli",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 26),
            Text(
              "Use the money wisely and\ngrow your finance",
              style: greyTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomFilledButon(
              width: 183,
              title: "Back To Home",
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
