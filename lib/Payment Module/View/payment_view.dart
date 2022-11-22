import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../View Model/payment_view_model.dart';

class PaymentView extends StatelessWidget {
  PaymentView({Key? key}) : super(key: key);

  final paymentVM = Get.put(PaymentVM());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stripe Payment Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Make Payment of 50\$'),
              onPressed: () async => await paymentVM.makePayment(context),
            ),
          ],
        ),
      ),
    );
  }
}
