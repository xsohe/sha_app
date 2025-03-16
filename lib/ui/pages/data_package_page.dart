import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/data_package_item.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paket Data",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            "Phone Number",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 14),
          CustomFormField(
            title: "+62",
            isShowTitle: false,
          ),
          const SizedBox(height: 40),
          Text(
            "Select Package",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              DataPackageItem(
                amount: 10,
                price: 50000,
              ),
              DataPackageItem(
                amount: 25,
                price: 100000,
              ),
              DataPackageItem(
                amount: 40,
                price: 150000,
                isSelected: true,
              ),
              DataPackageItem(
                amount: 100,
                price: 250000,
              ),
            ],
          ),
          const SizedBox(height: 85),
          CustomFilledButon(
            title: "Continue",
            onPressed: () async {
              if (await Navigator.pushNamed(context, "/pin") == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/data-success", (route) => false);
              }
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
