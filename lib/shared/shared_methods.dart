import 'package:bank_sha/shared/theme.dart';
import "package:flutter/material.dart";
import 'package:another_flushbar/flushbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

void showCustomSnackBar(BuildContext context, message) {
  Flushbar(
    message: message,
    duration: Duration(seconds: 2),
    backgroundColor: redColor,
    borderRadius: BorderRadius.circular(20),
    flushbarPosition: FlushbarPosition.TOP,
    margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
  ).show(context);
}

String formatCurrency(num number, {String symbol = "Rp "}) {
  return NumberFormat.currency(
    locale: "id",
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}

Future<XFile?> selectImage() async {
  XFile? selectedImage = await ImagePicker().pickImage(
    source: ImageSource.gallery,
  );

  return selectedImage;
}
