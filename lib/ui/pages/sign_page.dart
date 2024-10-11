import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_buttom.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        child: Text(
          'Join us and get your journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection(){

      Widget nameInput(){
        return CustomTextFormField(
          title: 'Your Full Name',
          hintText: 'Your Full Name',          
        );
      }


      Widget emailInput(){
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your Email Address',          
        );
      }


      Widget passwordInput(){
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',   
          obscureText: true,       
        );
      }

      Widget hobbyInput(){
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',          
        );
      }

      Widget submitButton(){
        return CustomButtom(
          title: 'Get Started', 
          onPressed: (){
            Navigator.pushNamed(context, '/bonus');
          }
        );
      }


      
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton(){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}