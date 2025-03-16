import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatestTrasactionItem extends StatelessWidget {
  final String iconUrl;
  final String time;
  final String title;
  final String value;

  const HomeLatestTrasactionItem({
    super.key,
    required this.iconUrl,
    required this.time,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 48,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  time,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                )
              ],
            ),
          ),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
