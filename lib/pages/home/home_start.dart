import 'package:flutter/material.dart';
import 'package:shopping_app/apps/utils/size.dart';

class HomeStart extends StatelessWidget {
  const HomeStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.png',
              height: getHight(context) * 0.3,
            ),
            SizedBox(
              height: getHight(context) * 0.05,
            ),
            const Text(
              'Cùng mua sắm ngay hôm nay',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(
              height: getHight(context) * 0.05,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'homePage');
              },
              child: Container(
                width: getWidth(context) * 0.6,
                height: getHight(context) * 0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green),
                child: const Text('Bắt đầu',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
