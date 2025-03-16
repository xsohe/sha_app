import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Beli Data",
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              Text(
                "From Walltet",
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    "assets/images/img_wallet.png",
                    width: 80,
                    height: 55,
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
                      const SizedBox(height: 2),
                      Text(
                        "Balance: ${formatCurrency(180000000)}",
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40),
              Text(
                "Select Provider",
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 14),
              const DataProviderItem(
                imageUrl: "assets/images/img_provider_telkomsel.png",
                name: "Telkomsel",
                stock: "Available",
                isSelected: true,
              ),
              const DataProviderItem(
                imageUrl: "assets/images/img_provider_indosat.png",
                name: "Indosat Ooredoo",
                stock: "Available",
              ),
              const DataProviderItem(
                imageUrl: "assets/images/img_provider_singtel.png",
                name: "Singtel ID",
                stock: "Available",
              ),
              const SizedBox(height: 135),
              CustomFilledButon(
                title: "Continue",
                onPressed: () {
                  Navigator.pushNamed(context, "/data-package");
                },
              ),
              const SizedBox(height: 57),
            ],
          ),
        ));
  }
}
