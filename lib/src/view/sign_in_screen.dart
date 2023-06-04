import 'package:flutter/material.dart';
import 'package:purangy/src/view/config/custom_colors.dart';
import 'package:purangy/src/view/sign_up_screen.dart';
import 'package:purangy/src/view/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeScreen.height,
          width: sizeScreen.width,
          child: Column(children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logoWhite.png',
                )
              ],
            )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                        label: 'E-mail', icon: Icons.person_2_outlined),
                    const CustomTextField(
                      label: 'Senha',
                      icon: Icons.lock_outline,
                      password: true,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                          onPressed: () {},
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 24),
                              child: Text(
                                "Esqueceu a senha?",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: CustomColors.primaryColor),
                              ))),
                    ),
                    SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        CustomColors.primaryColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                )),
                            onPressed: () {},
                            child: const Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ))),
                    //Divisor
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 48),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            color: Colors.grey.shade300,
                            thickness: 2,
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Ou",
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            color: Colors.grey.shade300,
                            thickness: 2,
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 50,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: CustomColors.primaryColor,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (c) => const SignUpScreen()));
                            },
                            child: Text(
                              "Criar conta",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.primaryColor),
                            ))),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
