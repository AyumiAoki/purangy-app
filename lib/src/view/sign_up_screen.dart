import 'package:flutter/material.dart';
import 'package:purangy/src/view/components/custom_text_field.dart';
import 'package:purangy/src/view/config/custom_colors.dart';
import 'package:purangy/src/view/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeScreen.height,
          width: sizeScreen.width,
          child: Stack(
            children: [
              Column(children: [
                const Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cadastro",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomTextField(
                            label: 'Nome', icon: Icons.person_2_outlined),
                        const CustomTextField(
                            label: 'E-mail', icon: Icons.email_outlined),
                        const CustomTextField(
                          label: 'Senha',
                          icon: Icons.lock_outline,
                          password: true,
                        ),
                        const CustomTextField(
                          label: 'Confirmar Senha',
                          icon: Icons.lock_outline,
                          password: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              CustomColors.primaryColor),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                        ),
                      ]),
                ),
              ]),
              Positioned(
                top: 8,
                left: 8,
                child: SafeArea(
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (c) => const SignInScreen()));
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
