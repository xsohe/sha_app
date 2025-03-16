import 'dart:ffi';

import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/widgets/home_latest_trasaction_item.dart';
import 'package:bank_sha/ui/widgets/home_tips_item.dart';
import 'package:bank_sha/ui/widgets/home_user_item.dart';
import 'package:bank_sha/ui/widgets/home_services_item.dart';
import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 10,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 10,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_overview.png",
                width: 20,
                color: blueColor,
              ),
              label: "Overview",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_history.png",
                width: 20,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_statistic.png",
                width: 20,
              ),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/ic_reward.png",
                width: 20,
              ),
              label: "Reward",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: purpleColor,
        child: Image.asset(
          "assets/icons/ic_plus-circle.png",
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildHomeServices(context),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/profile");
      },
      child: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Howdy",
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  "shaynahan",
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/img_profile.png"),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 220,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/img_bg_card.png"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shayna Hanna",
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 28),
          Text(
            "**** **** **** 1280",
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
              letterSpacing: 4,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            "Balance",
            style: whiteTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14,
            ),
          ),
          Text(
            formatCurrency(12500),
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Level 1",
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                "55% ",
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 14,
                ),
              ),
              Text(
                "of Rp 20.000",
                style:
                    blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          )
        ],
      ),
    );
  }

  Widget buildHomeServices(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "Do Something",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServicesItem(
              iconUrl: "assets/icons/ic_topup.png",
              title: "Top Up",
              onTap: () {
                Navigator.pushNamed(context, "/topup");
              },
            ),
            HomeServicesItem(
              iconUrl: "assets/icons/ic_send.png",
              title: "Send",
              onTap: () {
                Navigator.pushNamed(context, "/transfer");
              },
            ),
            HomeServicesItem(
              iconUrl: "assets/icons/ic_withdraw.png",
              title: "With Draw",
              onTap: () {},
            ),
            HomeServicesItem(
              iconUrl: "assets/icons/ic_more.png",
              title: "More",
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => MoreDialog(),
                );
              },
            ),
          ],
        )
      ],
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transaction",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          Container(
            padding: EdgeInsets.all(22),
            margin: EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                HomeLatestTrasactionItem(
                  iconUrl: "assets/icons/ic_transaction_topup.png",
                  time: "Yesterday",
                  title: "Top Up",
                  value: "+ ${formatCurrency(450000, symbol: "")}",
                ),
                HomeLatestTrasactionItem(
                  iconUrl: "assets/icons/ic_transaction_cashback.png",
                  time: "Sep 11",
                  title: "Cashback",
                  value: "+ ${formatCurrency(22000, symbol: "")}",
                ),
                HomeLatestTrasactionItem(
                  iconUrl: "assets/icons/ic_transaction_withdraw.png",
                  time: "Sep 2",
                  title: "Withdraw",
                  value: "- ${formatCurrency(5000, symbol: "")}",
                ),
                HomeLatestTrasactionItem(
                  iconUrl: "assets/icons/ic_transaction_transfer.png",
                  time: "Aug 27",
                  title: "Transfer",
                  value: "- ${formatCurrency(123000, symbol: "")}",
                ),
                HomeLatestTrasactionItem(
                  iconUrl: "assets/icons/ic_transaction_electric.png",
                  time: "Feb 11",
                  title: "Electric",
                  value: "- ${formatCurrency(12300000, symbol: "")}",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send Again",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: "assets/images/img_friend1.png",
                  username: "yuanita",
                ),
                HomeUserItem(
                  imageUrl: "assets/images/img_friend2.png",
                  username: "jani",
                ),
                HomeUserItem(
                  imageUrl: "assets/images/img_friend3.png",
                  username: "urip",
                ),
                HomeUserItem(
                  imageUrl: "assets/images/img_friend4.png",
                  username: "masa",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 12,
            runSpacing: 14,
            children: [
              HomeTipsItem(
                imageUrl: "assets/images/img_tips1.png",
                title: "Best tips for using a credit card",
                url: "https://www.google.com",
              ),
              HomeTipsItem(
                imageUrl: "assets/images/img_tips2.png",
                title: "Spot the good pie of finance model",
                url: "https://www.google.com",
              ),
              HomeTipsItem(
                imageUrl: "assets/images/img_tips3.png",
                title: "Great hack to get better advices",
                url: "https://www.google.com",
              ),
              HomeTipsItem(
                imageUrl: "assets/images/img_tips4.png",
                title: "Save more penny buy this instead",
                url: "https://www.google.com",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Do More With Us",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 13),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                HomeServicesItem(
                  iconUrl: "assets/icons/ic_product_data.png",
                  title: "Data",
                  onTap: () {
                    Navigator.pushNamed(context, "/data-provider");
                  },
                ),
                HomeServicesItem(
                  iconUrl: "assets/icons/ic_product_water.png",
                  title: "Water",
                  onTap: () {},
                ),
                HomeServicesItem(
                  iconUrl: "assets/icons/ic_product_stream.png",
                  title: "Stream",
                  onTap: () {},
                ),
                HomeServicesItem(
                  iconUrl: "assets/icons/ic_product_movie.png",
                  title: "Movie",
                  onTap: () {},
                ),
                HomeServicesItem(
                  iconUrl: "assets/icons/ic_product_food.png",
                  title: "Food",
                  onTap: () {},
                ),
                HomeServicesItem(
                  iconUrl: "assets/icons/ic_product_travel.png",
                  title: "Travel",
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
