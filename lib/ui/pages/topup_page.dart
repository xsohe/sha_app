import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Top Up",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 40),
          Text(
            "Wallet",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/img_wallet.png",
                width: 80,
                height: 55,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8008 2208 1996",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Angga Risky",
                    style: greyTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Selected Bank",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 14),
          Column(
            children: [
              BankItem(
                imgUrl: "assets/images/img_bank_bca.png",
                bankName: "Bank BCA",
                isSelected: true,
              ),
              BankItem(
                imgUrl: "assets/images/img_bank_bni.png",
                bankName: "Bank BNI",
              ),
              BankItem(
                imgUrl: "assets/images/img_bank_mandiri.png",
                bankName: "Bank Mandiri",
              ),
              BankItem(
                imgUrl: "assets/images/img_bank_ocbc.png",
                bankName: "Bank OCBC",
              ),
              const SizedBox(height: 12),
              CustomFilledButon(
                title: "Continue",
                onPressed: () {
                  Navigator.pushNamed(context, "/topup-amount");
                },
              ),
              const SizedBox(height: 57),
            ],
          )
        ],
      ),
    );
  }
}
