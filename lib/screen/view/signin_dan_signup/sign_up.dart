import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/signin_dan_signup/sign_in.dart';
import 'package:projectuas/screen/view/signin_dan_signup/text.dart';
import 'package:projectuas/screen/view/widget/button.dart';
import 'package:projectuas/screen/view/widget/textformfield.dart';
import 'package:projectuas/screen/view_model/view_model_signup.dart';
import 'package:provider/provider.dart';

double getAppBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top + kToolbarHeight;
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late SignUpViewModel viewModel;
  @override
  void initState() {
    viewModel = Provider.of<SignUpViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: size.width * 0.255,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
            ),
            const Text(
              'Daftar',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: size.width * .015),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
              child: const Text(
                'Masuk',
                style: TextStyle(
                  color: Color(0xFF00974A),
                  fontFamily: 'Helvetica',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: size.width * .05,
            end: size.width * .05,
            top: size.width * .05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: viewModel.formKeySignUp,
                child: customTextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: viewModel.daftar,
                  labelText: "Email atau Nomor Ponsel",
                  validator: (value) => viewModel.validateEmailOrPhone(value!),
                ),
              ),
              SizedBox(height: size.width * .02),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: size.width * .02,
                ),
                child: const Text(
                  'Contoh: 08123456789',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.5,
                  ),
                ),
              ),
              SizedBox(height: size.width * .035),
              ValueListenableBuilder<bool>(
                valueListenable: viewModel.isButtonEnabled,
                builder: (context, isEnabled, child) {
                  return customButton(
                    text: "Daftar",
                    bgColor: isEnabled
                        ? const Color(0xff00974a)
                        : CupertinoColors.inactiveGray,
                    onPressed: isEnabled
                        ? () {
                            if (viewModel.formKeySignUp.currentState!
                                .validate()) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const DummyScreen(),
                                ),
                              );
                              viewModel.setUlangGender();
                            }
                          }
                        : null,
                  );
                },
              ),
              SizedBox(height: size.width * .045),
              Row(
                children: <Widget>[
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                    child: const Text(
                      'atau daftar dengan',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * .045),
              SizedBox(
                height: size.width * .12,
                child: customButton(
                  text: "Metode Lain",
                  textColor: Colors.grey[600],
                  bgColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: size.width * .025),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 12.5,
                    color: Colors.black, // Default color for the text
                  ),
                  children: [
                    const TextSpan(
                        text: 'Dengan mendaftar di sini, kamu menyutujui ',
                        style: TextStyle(color: Color(0xffbfbfbf))),
                    TextSpan(
                      text: 'Syarat & Ketentuan',
                      style: const TextStyle(
                        color: Color(0xff258e65),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle "Syarat & Ketentuan" click
                        },
                    ),
                    const TextSpan(
                        text: ' serta ',
                        style: TextStyle(color: Color(0xffbfbfbf))),
                    TextSpan(
                      text: 'Pemberitahuan Privasi',
                      style: const TextStyle(
                        color: Color(0xff258e65),
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    const TextSpan(
                        text: 'Tokopedia.',
                        style: TextStyle(color: Color(0xffbfbfbf))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
