import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';


class BonusPages extends StatelessWidget {
  const BonusPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget bonusCard(){
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_card.png'
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                          style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Imam',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(
                    right: 6
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    )
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium
              ),
            )
          ],
        ),
      );
    }

    Widget title(){
      return Container(
        margin: EdgeInsets.only(
          top: 80
        ),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }


    Widget subtitle(){
      return Container(
        margin: EdgeInsets.only(
          top: 10
        ),
        child: Text(
          'We give you early credit so that \n you can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }


    Widget startButton(){
        return CustomButtom(
          title: 'Start Fly Now', 
          margin: EdgeInsets.only(
            top: 55,
          ),
          width: 220,
          onPressed: (){
            Navigator.pushNamed(context, '/main');
          }
        );
      }



    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}