import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String username;
  final bool isVerified;

  const TransferRecentUserItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 23,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '@$username',
                style: greyTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  "Verified",
                  style: greenTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 11,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
