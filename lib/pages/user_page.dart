import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './requerimento_page.dart';
import './dados_maquinario_page.dart';
import './ordens_servico_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({ Key? key }) : super(key: key);

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
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right:20),
                      height: 100,
                      margin: const EdgeInsets.only(top: 20, bottom: 10, right: 15, left:15),
                      decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.green,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                children: const [
                                                  Icon(Icons.person, color: Colors.green, size: 50,),
                                                  Text('João da Silva', 
                                                      style: TextStyle(
                                                      fontSize: 20, 
                                                      color: Colors.green),
                                                    ),
                                                ],
                                              ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top:10),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: const [
                                          Text('Usuário de manutenção', 
                                            style: TextStyle(
                                              fontSize: 20, 
                                              color: Colors.green),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                      ),
          ),
    
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(top:10, left:20, right: 20, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.green,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.build_circle,
                                  color: Colors.green,
                                  size: 50,
                                ),
                                Text(
                                  'Requerimento de Manutenção',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                           ),
                           onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: ((context) => const RequerimentoPage())
                                  )
                                );
                              },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.green,
                                        ),
                                        borderRadius: const BorderRadius.all(Radius.circular(20))
                                      ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.file_copy,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      Text(
                                        'Ver Ordens de Serviço',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: ((context) => const OrdemServicoPage())
                                  )
                                  );
                                },
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                          ),
                        )
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                                  child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.green,
                                        ),
                                        borderRadius: const BorderRadius.all(Radius.circular(20))
                                      ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.precision_manufacturing,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      Text(
                                        'Dados do Maquinário',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  )
                                ),
                                onTap: () {
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: ((context) => const DadosMaquinarioPage())
                                  )
                                );
                              },
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.green,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.inbox_rounded,
                                  color: Colors.green,
                                  size: 50,
                                ),
                                Text(
                                  'Requisição de Estoque',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                         Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          )

        ],
      ),
    );
  }
}