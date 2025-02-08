import 'package:flutter/material.dart';

class CustomSizedBoxConstant {
  static final CustomSizedBoxConstant _instance =
      CustomSizedBoxConstant._init();
  static CustomSizedBoxConstant get instance => _instance;
  CustomSizedBoxConstant._init();

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
