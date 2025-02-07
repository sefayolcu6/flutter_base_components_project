import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

mixin Utils {
  double screenHeigth(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  onlyDateFormat({required DateTime dateTime}) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(dateTime);
    return formatted;
  }

  onlyDateFormatForString({required String dateString}) {
    DateTime dateTime = DateTime.parse(dateString);

    // Tarih formatlayıcı oluştur
    final DateFormat formatter = DateFormat('yyyy-MM-dd');

    // DateTime'ı formatla
    final String formatted = formatter.format(dateTime);

    return formatted;
  }

  Widget sizedBox5H() {
    return const SizedBox(
      height: 5,
    );
  }

  Widget sizedBox10H() {
    return const SizedBox(
      height: 10,
    );
  }

  Widget sizedBox20H() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget sizedBox10W() {
    return const SizedBox(
      width: 10,
    );
  }

  Widget sizedBox20W() {
    return const SizedBox(
      width: 20,
    );
  }
}
