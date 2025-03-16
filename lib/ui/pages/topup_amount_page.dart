import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: "0");

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text.replaceAll(".", "");

      if (text.isNotEmpty && int.tryParse(text) != null) {
        amountController.value = amountController.value.copyWith(
          text: NumberFormat.currency(
            locale: "id",
            decimalDigits: 0,
            symbol: "",
          ).format(int.parse(text)),
        );
      }
    });
  }

  addAmount(String number) {
    if (amountController.text == "0") {
      amountController.text = "";
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);

        if (amountController.text == "") {
          amountController.text = "0";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(height: 36),
          Center(
            child: Text(
              "Top Up Amount",
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 67),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                enabled: false,
                style: TextStyle(
                  fontWeight: medium,
                  fontSize: 36,
                  color: whiteColor,
                ),
                decoration: InputDecoration(
                  fillColor: whiteColor,
                  prefixIcon: Text(
                    "Rp ",
                    style: TextStyle(
                      fontWeight: medium,
                      fontSize: 36,
                      color: whiteColor,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 66),
          Wrap(
            spacing: 32,
            runSpacing: 32,
            children: [
              CustomInputButton(
                title: "1",
                onTap: () {
                  addAmount("1");
                },
              ),
              CustomInputButton(
                title: "2",
                onTap: () {
                  addAmount("2");
                },
              ),
              CustomInputButton(
                title: "3",
                onTap: () {
                  addAmount("3");
                },
              ),
              CustomInputButton(
                title: "4",
                onTap: () {
                  addAmount("4");
                },
              ),
              CustomInputButton(
                title: "5",
                onTap: () {
                  addAmount("5");
                },
              ),
              CustomInputButton(
                title: "6",
                onTap: () {
                  addAmount("6");
                },
              ),
              CustomInputButton(
                title: "7",
                onTap: () {
                  addAmount("7");
                },
              ),
              CustomInputButton(
                title: "8",
                onTap: () {
                  addAmount("8");
                },
              ),
              CustomInputButton(
                title: "9",
                onTap: () {
                  addAmount("9");
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomInputButton(
                title: "0",
                onTap: () {
                  addAmount("0");
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
          CustomFilledButon(
            title: "Checkout Now",
            onPressed: () async {
              if (await Navigator.pushNamed(context, "/pin") == true) {
                await launchUrl(Uri.parse("https://demo.midtrans.com/"));

                Navigator.pushNamedAndRemoveUntil(
                    context, "/topup-success", (route) => false);
              }
            },
          ),
          const SizedBox(height: 25),
          CustomTextButton(
            title: "Terms & Conditions",
            onPressed: () {},
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
