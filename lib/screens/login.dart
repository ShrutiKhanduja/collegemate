import 'package:collegemate/responsive/size_config.dart';
import 'package:collegemate/screens/sign_up.dart';
import 'package:collegemate/utils/custom_color.dart';
import 'package:collegemate/widgets/custom_text_field.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 50, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.black,
                height: 64,
              ),
              SizedBox(height: SizeConfig.deviceHeight * 0.0654),
              CustomTextField(
                textEditingController: _emailcontroller,
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter Your E-mail',
                icon: Icon(Icons.email),
              ),
              SizedBox(height: SizeConfig.deviceHeight * 0.032),
              CustomTextField(
                textEditingController: _passwordcontroller,
                textInputType: TextInputType.visiblePassword,
                hintText: 'Enter Your Password',
                icon: Icon(Icons.lock),
                suffixicon: InkWell(
                  onTap: () {
                    setState(() {
                      isHiddenPassword = !isHiddenPassword;
                    });
                  },
                  child: Icon(isHiddenPassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                isPass: isHiddenPassword,
              ),
              SizedBox(height: SizeConfig.deviceHeight * 0.032),
              InkWell(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Text(
                    'Log-in',
                    style: TextStyle(color: Colors.white),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: activeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.deviceHeight * 0.016),
              Container(
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.016,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Colors.grey.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: SizeConfig.deviceHeight * 0.04,
                        child: Image.asset(
                          'assets/images/google.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: SizeConfig.deviceWidth * 0.03),
                      Text('Login With Google'),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: MyText(
                      text: "Don't have an account ?",
                      size: 20,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  SizedBox(
                    width: SizeConfig.deviceWidth * 0.024,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    },
                    child: Container(
                      child: MyText(
                        text: 'Register',
                        fontColor: Colors.blue,
                        size: 22,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
