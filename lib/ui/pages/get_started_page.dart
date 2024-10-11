import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';


class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let yourself get an amazing experiences',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              CustomButtom(
                title: 'Get Started',
                width: 220,
                margin: EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/sign-up');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}