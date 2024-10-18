import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(
                bottom: 80
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_success.png'
                  ),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 32
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light
              ),
              textAlign: TextAlign.center,
            ),
            CustomButtom(
              title: 'My Bookings', 
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(
                top: 50
              ),
            )
          ],
        ),
      ),
    );
  }
}