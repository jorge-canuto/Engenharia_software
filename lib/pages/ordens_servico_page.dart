import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:nps_project/pages/informacao_ordem_page.dart';
import 'package:nps_project/pages/requerer_ordem_page.dart';
import './requerimento_page.dart';

class OrdemServicoPage extends StatefulWidget {
  const OrdemServicoPage({ Key? key }) : super(key: key);

  @override
  State<OrdemServicoPage> createState() => _OrdemServicoPageState();
}

class _OrdemServicoPageState extends State<OrdemServicoPage> {
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
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 15, left: 15),
                    child: const Text('Ordens de Serviço', 
                          style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                          ),
                  Container(
                        padding: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        height: 500,
                        width: double.infinity,
                        decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(0))
                        ),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  padding: const EdgeInsets.only(top: 5, bottom:5, left: 5, right: 5),
                                  color: Colors.grey,
                                  child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: IconButton(
                                        icon: const Icon(Icons.filter_list, color: Colors.grey, size: 15,),
                                        onPressed: (){}
                                        ),
                                      ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          height: 40,
                                          child: TextField(
                                              decoration: InputDecoration(
                                              border: const OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                                borderSide: BorderSide(width:2, color: Colors.green),
                                                ),
                                              hintText: 'Procurar',
                                              hintStyle: const TextStyle(color: Colors.green, ),
                                              prefixIcon: IconButton(
                                                          icon: const Icon(Icons.search),
                                                          iconSize: 28,
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
                                      )
                                      ],
                                    ),
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                  margin: const EdgeInsets.only(top: 0, left: 5, right:5),
                                  height: 35,
                                  child: IntrinsicHeight(
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text('Número', 
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                      ),
                                      const VerticalDivider(
                                        color: Colors.grey,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            const Expanded(
                                          child: Text('Data', 
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                        ),
                                        Expanded(
                                          child: IconButton(
                                            icon: const Icon(Icons.swap_vert, size: 20),
                                            onPressed: (){},
                                          ),
                                        )
                                          ],
                                        )
                                      ),
                                      const VerticalDivider(
                                        color: Colors.grey,
                                      ),
                                      const Expanded(
                                        flex: 1,
                                        child: Text('Status', 
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                      ),
                                      
                                    ],
                                  )
                                 ),
                                ),
                                const Divider(color: Colors.grey,),
                                InkWell(
                                  child: Container(
                                      alignment: Alignment.bottomCenter,
                                      padding: const EdgeInsets.only(top: 5, left: 5),
                                      margin: const EdgeInsets.only(top: 0, left: 5, right:5),
                                      height: 25,
                                      child: IntrinsicHeight(
                                        child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Expanded(
                                            flex: 1,
                                            child: Text('001', 
                                            style: TextStyle(color: Colors.black),),
                                          ),
                                          VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text('14/02/2015', 
                                            style: TextStyle(color: Colors.black),),
                                          ),
                                          VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text('ABERTO', 
                                            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                                          ),             
                                        ],
                                      )
                                    ),
                                    ),
                                    onTap: () {
                                      Navigator.push(context, 
                                              MaterialPageRoute(
                                                builder: ((context) => const RequererOrdemPage())
                                              )
                                        );
                                    },
                                ),
                                const Divider(color: Colors.grey,),
                                InkWell(
                                  child: Container(
                                          alignment: Alignment.bottomCenter,
                                          padding: const EdgeInsets.only(top: 5, left: 5),
                                          margin: const EdgeInsets.only(top: 0, left: 5, right:5),
                                          height: 25,
                                          child: IntrinsicHeight(
                                            child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Expanded(
                                                flex: 1,
                                                child: Text('002', 
                                                style: TextStyle(color: Colors.black),),
                                              ),
                                              VerticalDivider(
                                                color: Colors.grey,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text('14/02/2015', 
                                                style: TextStyle(color: Colors.black),),
                                              ),
                                              VerticalDivider(
                                                color: Colors.grey,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text('EM ANDAMENTO', 
                                                style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold,)),
                                              ),             
                                            ],
                                          )
                                        ),
                                        ),
                                        onTap: () {
                                          Navigator.push(context, 
                                              MaterialPageRoute(
                                                builder: ((context) => const InformacaoOrdemPage())
                                              )
                                          );
                                        },
                                ),
                                const Divider(color: Colors.grey,),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                  margin: const EdgeInsets.only(top: 0, left: 5, right:5),
                                  height: 25,
                                  child: IntrinsicHeight(
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Expanded(
                                        flex: 1,
                                        child: Text('003', 
                                        style: TextStyle(color: Colors.black),),
                                      ),
                                      VerticalDivider(
                                        color: Colors.grey,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text('14/01/2015', 
                                        style: TextStyle(color: Colors.black),),
                                      ),
                                      VerticalDivider(
                                        color: Colors.grey,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text('FINALIZADO', 
                                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      ),             
                                    ],
                                  )
                                 ),
                                ),
                                const Divider(color: Colors.grey,),
                                Container(
                                  margin: const EdgeInsets.all(15),
                                  alignment: Alignment.centerRight,
                                  child: FloatingActionButton(
                                      backgroundColor: Colors.green,
                                      child: const Icon(Icons.add),
                                      onPressed: () {
                                        Navigator.push(context, 
                                              MaterialPageRoute(
                                                builder: ((context) => const RequerimentoPage())
                                              )
                                        );
                                      },
                                    ),
                                )
                              ],
                            )
                    ),
      ],
    ),
    );
  }
}