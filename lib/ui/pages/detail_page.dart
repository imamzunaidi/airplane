import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custom_buttom.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget backgroundImage(){
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_destination1.png'
            ),
          ),
        ),
      );
    }
    
    Widget custommShadow(){
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 236
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.98)
            ],
          )
        ),
      );
    }

    Widget content(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              width: 108,
              height: 24,
               margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png')
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 256
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
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
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        
                        )
                      ],
                    ),
                ],
              ),
            ),

            // deskription
            Container(
              width: double.infinity,
              
              margin: EdgeInsets.only(
                top: 30,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(
                      height: 2.2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(
                        imageURL: 'assets/image_photo1.png',
                      ),
                      PhotoItem(
                        imageURL: 'assets/image_photo2.png',
                      ),
                      PhotoItem(
                        imageURL: 'assets/image_photo3.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interest',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        text: 'Kids Park'
                      ),
                      InterestItem(
                        text: 'Honor Bridge'
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        text: 'City Museum'
                      ),
                      InterestItem(
                        text: 'Central Mall'
                      ),
                    ],
                  )       
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(
                vertical: 30,
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Per Orang',
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),

                  CustomButtom(
                    title: 'Book Now', 
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => ChooseSeatPage(),
                        )
                      );
                    },
                    width: 170,
                    
                    )
                ],
              ),
            )


          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            custommShadow(),
            content(),
          ],  
        ),
      ),
    );
  }
}