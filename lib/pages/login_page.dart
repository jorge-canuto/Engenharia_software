import 'package:flutter/material.dart';
import './user_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
          child: Column(
                  children: [
                    Container(
                    height: 800,
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                          image: AssetImage('assets/images/Login.png'),
                          fit: BoxFit.fill
                          )
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 120, bottom: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                                  decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(width:2, color: Colors.green),
                                    ),
                                  hintText: 'E-mail',
                                  hintStyle: const TextStyle(color: Colors.green),
                                  suffixIcon: IconButton(
                                              icon: const Icon(Icons.email_outlined),
                                              iconSize: 35,
                                              color: Colors.green,
                                              onPressed: () {},),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(width:2, color: Colors.green),
                                    )
                                ),
                              ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                                  decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(width:2, color: Colors.green),
                                    ),
                                  hintText: 'Senha',
                                  hintStyle: const TextStyle(color: Colors.green),
                                  suffixIcon: IconButton(
                                              icon: const Icon(Icons.visibility_outlined),
                                              iconSize: 35,
                                              color: Colors.green,
                                              onPressed: () {},),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(width:2, color: Colors.green),
                                    )
                                ),
                                obscureText: true,
                              ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 100),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.green,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(30))
                        ),
                        child: InkWell(
                          child: const Text('Entrar', style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                                    ),
                                    onTap: () {
                                      Navigator.push(context, 
                                        MaterialPageRoute(
                                          builder: ((context) => const UserPage())
                                        )
                                      );
                                    },
                        )
                        )
                      ],
                    ),
                )
            ], 
          )
        ),
        )
      )
    );
  }
}