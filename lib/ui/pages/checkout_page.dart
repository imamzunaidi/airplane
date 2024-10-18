import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout.dart';
import 'package:airplane/ui/widgets/booking_detail_item.dart';
import 'package:airplane/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';


class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget route(){
      return Container(
        margin: EdgeInsets.only(
          top: 50
        ),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(
                bottom: 10
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png')
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                       
                        fontWeight: light
                      ),
                    )
                  ],
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                       
                        fontWeight: light
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetail(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png')
                    )
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(
                        right: 2,
                        left: 3
                        ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png')
                        ),
                      ),
                      
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    
                    )
                  ],
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(
                top: 20
              ),
              child: Text(
                'Booking Detail',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
                ),
              ),
            ),

            BookingDetailItem(
              title: 'Traveler',
              valueText: '2 Person',
              valueColor: kBlackColor,  
            ),

            BookingDetailItem(
              title: 'Seatt',
              valueText: 'A3, B3',
              valueColor: kBlackColor,  
            ),

            BookingDetailItem(
              title: 'Insurance',
              valueText: 'YES',
              valueColor: kGreenColor,  
            ),

            BookingDetailItem(
              title: 'Refundable',
              valueText: 'No',
              valueColor: kRedColor,  
            ),

            BookingDetailItem(
              title: 'Vat',
              valueText: '45 %',
              valueColor: kBlackColor,  
            ),

            BookingDetailItem(
              title: 'Price',
              valueText: 'IDR 8.600.000',
              valueColor: kBlackColor,  
            ),

            BookingDetailItem(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: kPrimaryColor,  
            )

          ],
        ),
      );
    }

    Widget paymentDetail(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    margin: EdgeInsets.only(
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image_card.png')
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 6
                            ),
                            decoration: BoxDecoration(
                              
                              image: DecorationImage(
                                image: AssetImage('assets/icon_plane.png')
                              )
                            ),
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                              fontSize:16,
                              fontWeight: medium, 
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 80.000.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Current Balance',
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget payNowBotton(){
      return CustomButtom(
          title: 'Pay Now',
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => SuccessCheckout()
              )
            );
          },
          margin: EdgeInsets.only(
            top: 30
          ),
      );
    }


    Widget tacButton(){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(   
          'Term and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          route(),
          bookingDetail(),
          paymentDetail(),
          payNowBotton(),
          tacButton(),
        ],
      )
    );
  }
}