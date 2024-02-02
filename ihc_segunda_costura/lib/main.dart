import 'package:flutter/material.dart';
import 'package:ihc_segunda_costura/user/home.dart';
import 'admin/minha_loja.dart';

void main() {
  runApp(const LoginScreen());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          LoginPage(),
        ]),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 26,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Stack(children: []),
                ),
              ),
              Positioned(
                left: 15,
                top: 84,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Acesse',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Com o e-mail e senha',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 23),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Digite seu e-mail',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Opacity(
                          opacity: 0.40,
                          child: Container(
                            width: 330,
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 12,
                              right: 10,
                              bottom: 20,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF949EA6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: TextField(
                              controller: emailController,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'E-mail', // Placeholder text
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                                border: InputBorder.none, // Remove border
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 23),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Digite sua senha',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Opacity(
                          opacity: 0.40,
                          child: Container(
                            width: 330,
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 12,
                              right: 10,
                              bottom: 20,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF949EA6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Senha', // Placeholder text
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                                border: InputBorder.none, // Remove border
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 132,
                top: 410,
                child: Opacity(
                  opacity: 0.40,
                  child: Container(
                      width: 100,
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 12,
                        right: 10,
                        bottom: 20,
                      ),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFB618EE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Handle button click here
                          // For example, you can navigate to another screen or perform some action.
                          if (passwordController.text.isEmpty) {
                            final snackBar = SnackBar(
                              content: const Text('Insira a sua senha!'),
                              action: SnackBarAction(
                                label: 'Ok',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          print('Email: ${emailController.text}');
                          print('Password: ${passwordController.text}');
                          if (emailController.text == "admin") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MinhaLoja()),
                            );
                          } else if (emailController.text == 'user') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeUser()),
                            );
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // Add any decoration you need for the button
                            color: const Color(
                                0xFFB618EE), // Change the color as needed
                            borderRadius: BorderRadius.circular(
                                8.0), // Optional: Add border radius
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 45,
                                child: Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFFF2F2),
                                    fontSize: 16,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
