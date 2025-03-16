import 'dart:math';

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transfer",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Search",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          CustomFormField(
            title: "by username",
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResultUsers(context),
          // Row(
          //   children: [
          //     buildResultUsers(),
          //   ],
          // )
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Users",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 14),
          const TransferRecentUserItem(
            imgUrl: "assets/images/img_friend1.png",
            name: "Yonna Jie",
            username: "yoenna",
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imgUrl: "assets/images/img_friend2.png",
            name: "John Hi",
            username: "@jhi",
          ),
          const TransferRecentUserItem(
            imgUrl: "assets/images/img_friend3.png",
            name: "Masayoshi",
            username: "@form",
          )
        ],
      ),
    );
  }

  Widget buildResultUsers(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Result",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: const [
              TransferResultUserItem(
                imgUrl: "assets/images/img_friend1.png",
                name: "Yonna Lie",
                username: "yoenna",
                isVerified: true,
              ),
              TransferResultUserItem(
                imgUrl: "assets/images/img_friend1.png",
                name: "Yonna Lie",
                username: "yoenna",
                isSelected: true,
              ),
            ],
          ),
          const SizedBox(height: 274),
          CustomFilledButon(
            title: "Continue",
            onPressed: () {
              Navigator.pushNamed(context, "/transfer-amount");
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
