// ignore_for_file: use_build_context_synchronously
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/homescreen/homescreen_view.dart';
import 'package:projectuas/screen/view/signin_dan_signup/sign_up.dart';
import 'package:projectuas/screen/view/widget/button.dart';
import 'package:projectuas/screen/view/widget/textformfield.dart';
import 'package:projectuas/screen/view_model/view_model_navigation.dart';
import 'package:projectuas/screen/view_model/view_model_signin.dart';
import 'package:provider/provider.dart';

double getAppBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top + kToolbarHeight;
}

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late SignInViewModel viewModel;
  late NavigationProvider navigator;
  @override
  void initState() {
    viewModel = Provider.of<SignInViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: size.width * 0.265,
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
              'Masuk',
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
                    builder: (context) => const SignUp(),
                  ),
                );
              },
              child: const Text(
                'Daftar',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  color: Color(0xFF00974A),
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
                key: viewModel.formKeySignin,
                child: customTextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: viewModel.masuk,
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
              SizedBox(height: size.width * .02),
              const Align(
                alignment: AlignmentDirectional(1, 0),
                child: Text(
                  'Butuh Bantuan?',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    color: Color(0xFF00974A),
                    fontSize: 13.5,
                  ),
                ),
              ),
              SizedBox(height: size.width * .035),
              ValueListenableBuilder<bool>(
                valueListenable: viewModel.isButtonEnabled,
                builder: (context, isEnabled, child) {
                  return customButton(
                    text: "Selanjutnya",
                    bgColor: isEnabled
                        ? const Color(0xff00974a)
                        : CupertinoColors.inactiveGray,
                    onPressed: isEnabled
                        ? () {
                            if (viewModel.formKeySignin.currentState!
                                .validate()) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomescreenView(),
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
                      'atau masuk dengan',
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
                width: double.infinity,
                child: customButtonWithIcon(
                  textLabel: 'Sidik Jari',
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0, 0, size.width * .3, 0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0, 0, size.width * .27, 0),
                  bgColor: Colors.white,
                  textColor: const Color(0xff6e7582),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.fingerprint,
                    size: 18,
                    color: Color(0xff00974A),
                  ),
                ),
              ),
              SizedBox(height: size.width * .022),
              SizedBox(
                height: size.width * .12,
                child: customButton(
                  text: "Metode Lain",
                  textColor: const Color(0xff6e7582),
                  bgColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: size.width * .025),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 13,
                      color: Colors.black, // Default color for the text
                    ),
                    children: [
                      const TextSpan(
                        text: 'Belum punya akun Tokopedia? ',
                        style: TextStyle(
                          color: Color(0xffbfbfbf),
                        ),
                      ),
                      TextSpan(
                        text: 'Daftar',
                        style: const TextStyle(
                          color: Color(0xff00974a),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
