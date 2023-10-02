import 'package:flutter/material.dart';
import './informacoes_motor.dart';

class DadosMaquinarioPage extends StatefulWidget {
  const DadosMaquinarioPage({ Key? key }) : super(key: key);

  @override
  State<DadosMaquinarioPage> createState() => _DadosMaquinarioPageState();
}

class _DadosMaquinarioPageState extends State<DadosMaquinarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Text('MPS', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20)
              ),
            ),
          )
        ]
      ),
      drawer: const Drawer(
        child: Text('data'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20, right:20),
        margin: const EdgeInsets.only(top: 20, bottom: 20, right: 15, left:15),
        child: Column(
          children: [
            TextField(
                            decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              borderSide: BorderSide(width:2, color: Colors.green),
                              ),
                            hintText: 'Procure um motor',
                            hintStyle: const TextStyle(color: Colors.green),
                            suffixIcon: IconButton(
                                        icon: const Icon(Icons.search),
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

                        Container(
                                  padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
                                  margin: const EdgeInsets.only(top: 15, bottom: 10),
                                  height: 140,
                                  decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.green,
                                        ),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))
                                      ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                                        color: Colors.white,
                                                                        border: Border.all(
                                                                          width: 2,
                                                                          color: Colors.green,
                                                                      ),
                                                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                                      image: const DecorationImage(
                                                                            image: AssetImage('assets/images/informacao_moto1.png'),
                                                                            fit: BoxFit.fill
                                                                            )
                                                                    ),
                                                  ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              margin: const EdgeInsets.only(left: 15),
                                              child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(bottom: 5, top: 15),
                                                      child: const Text('Motor: W22IR3', style: TextStyle(color: Colors.green, fontSize: 20)),
                                                    ),
                                                    Container(
                                                      child: const Text('Marca: WEG', style: TextStyle(color: Colors.green, fontSize: 15)),
                                                    ),
                                                  ],
                                                ),
                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                            InkWell(
                                                              child: Container(
                                                                            alignment: Alignment.center,
                                                                            height: 40,
                                                                            width: 80,
                                                                          decoration: BoxDecoration(
                                                                            color: Colors.green,
                                                                            border: Border.all(
                                                                              width: 2,
                                                                              color: Colors.green,
                                                                          ),
                                                                          borderRadius: const BorderRadius.all(Radius.circular(30))
                                                                          ),
                                                                        child: const Icon(Icons.arrow_forward, color: Colors.white,)
                                                                    ),
                                                                    onTap: (){
                                                                      Navigator.push(context, 
                                                                            MaterialPageRoute(
                                                                              builder: ((context) => const InformacoesMotorPage())
                                                                            )
                                                                          );
                                                                    },
                                                            )
                                                  ],
                                              ),
                                        ),
                                    ],
                                  )
                                ),

                                Container(
                                  padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
                                  margin: const EdgeInsets.only(top: 15, bottom: 10),
                                  height: 140,
                                  decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.green,
                                        ),
                                        borderRadius: const BorderRadius.all(Radius.circular(10))
                                      ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                                        color: Colors.white,
                                                                        border: Border.all(
                                                                          width: 2,
                                                                          color: Colors.green,
                                                                      ),
                                                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                                      image: const DecorationImage(
                                                                            image: AssetImage('assets/images/dados_maquinario2.png'),
                                                                            fit: BoxFit.fill
                                                                            )
                                                                    ),
                                                  ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              margin: const EdgeInsets.only(left: 15),
                                              child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(bottom: 5, top: 15),
                                                      child: const Text('Motor: C56', style: TextStyle(color: Colors.green, fontSize: 20)),
                                                    ),
                                                    Container(
                                                      child: const Text('Marca: WEG', style: TextStyle(color: Colors.green, fontSize: 15)),
                                                    ),
                                                  ],
                                                ),
                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                            InkWell(
                                                              child: Container(
                                                                            alignment: Alignment.center,
                                                                            height: 40,
                                                                            width: 80,
                                                                          decoration: BoxDecoration(
                                                                            color: Colors.green,
                                                                            border: Border.all(
                                                                              width: 2,
                                                                              color: Colors.green,
                                                                          ),
                                                                          borderRadius: const BorderRadius.all(Radius.circular(30))
                                                                          ),
                                                                        child: const Icon(Icons.arrow_forward, color: Colors.white,)
                                                                    ),
                                                                    onTap: (){},
                                                            )
                                                  ],
                                              ),
                                        ),
                                    ],
                                  )
                                )
          ],
        ),
      )
    );
  }
}