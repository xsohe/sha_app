import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataPackageItem extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;

  const DataPackageItem({
    super.key,
    required this.amount,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: isSelected
            ? Border.all(
                color: blueColor,
                width: 2,
              )
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${amount}GB",
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            formatCurrency(price),
            style: greyTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
