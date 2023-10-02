import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformacoesMotorPage extends StatefulWidget {
  const InformacoesMotorPage({ Key? key }) : super(key: key);

  @override
  State<InformacoesMotorPage> createState() => _InformacoesMotorPageState();
}

class _InformacoesMotorPageState extends State<InformacoesMotorPage> {
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
              padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right:10),
              margin: const EdgeInsets.only(top: 20, bottom: 20, right: 5, left:5),
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Informações do Motor', 
                  style: TextStyle(color: Colors.green, fontSize:19, fontWeight: FontWeight.bold)),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
                        margin: const EdgeInsets.only(top: 15, bottom: 10),
                        height: 225,
                        decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                    width: 2,
                                    color: Colors.green,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(0))
                        ),
                            child: Row(
                                  children: [
                                     Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text('Dados técnicos', 
                                          style: TextStyle(color: Colors.green, fontSize:19, fontWeight: FontWeight.bold)),
                                          const SizedBox(
                                            height: 10,
                                            ),
                                          Row(
                                            children: const [
                                              Text('Motor: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('W22IR3', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: const [
                                                    Text('Marca: ', 
                                                    style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                                    Text('WEG', 
                                                    style: TextStyle(color: Colors.green, fontSize:15)),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: const [
                                                    Text('Cor: ', 
                                                    style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                                    Text('Azul', 
                                                    style: TextStyle(color: Colors.green, fontSize:15)),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text('Local: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('Caldeira', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text('Posição de instal.: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('Horizontal', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text('Lubrificação: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('Mobi Polyex', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text('Rolamento Dianteiro: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('6314-C4', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text('Rolamento Traseiro: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('6314-C3', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Text('Possui Acoplamento: ', 
                                              style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                                              Text('Sim', 
                                              style: TextStyle(color: Colors.green, fontSize:15)),
                                            ],
                                          ),
                                        ],
                                      ),
                                     ),
                                     const Expanded(
                                      flex: 1,
                                      child: SizedBox()
                                     )
                                    ],
                                  ),    
                        ),

                        Container(
                                 width: 130,
                                 height: 120,
                                 margin: const EdgeInsets.only(right: 10),
                                 alignment: Alignment.topCenter,
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
                    ],
                  ),
                  const Text('Histórico de Falhas', 
                  style: TextStyle(color: Colors.green, fontSize:18, fontWeight: FontWeight.bold)),
                  Container(
                        padding: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        height: 250,
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
                                  padding: EdgeInsets.only(top: 5, bottom:5, left: 5, right: 5),
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
                                              hintText: 'Procure um motor',
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
                                        child: Text('Detalhes', 
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
                                        child: Text('Hora', 
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                      ),
                                      
                                    ],
                                  )
                                 ),
                                ),
                                const Divider(color: Colors.grey,),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                  margin: const EdgeInsets.only(top: 0, left: 5, right:5),
                                  height: 35,
                                  child: IntrinsicHeight(
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Expanded(
                                        flex: 1,
                                        child: Text('Problema de Mancal', 
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
                                        child: Text('19:00:53', 
                                        style: TextStyle(color: Colors.black),),
                                      ),             
                                    ],
                                  )
                                 ),
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
                                        child: Text('Falta de Fase', 
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
                                        child: Text('01:00:53', 
                                        style: TextStyle(color: Colors.black),),
                                      ),             
                                    ],
                                  )
                                 ),
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
                                        child: Text('Sobrecarga', 
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
                                        child: Text('14:00:03', 
                                        style: TextStyle(color: Colors.black),),
                                      ),             
                                    ],
                                  )
                                 ),
                                ),
                                const Divider(color: Colors.grey,),
                              ],
                            )
                    ),
                    
                    const Text('Acervo Técnico', 
                    style: TextStyle(color: Colors.green, fontSize:19, fontWeight: FontWeight.bold)),
                    Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
                        margin: const EdgeInsets.only(top: 15, bottom: 10),
                        height: 210,
                        decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                    width: 1,
                                    color: Colors.green,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(0))
                        ),
                            child: Row(
                                  children: [
                                     Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('1 - Carcaça;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('2 - Ventilador;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('3 - Anel Orign;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('4 - Defletora;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('5 - Anel Vedação;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('6 - Anel Vring;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('7 - Parafuso eixo;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('8 - Anel de fixo. Rol.;', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                          Text('9 - Câmara de proteção.', 
                                          style: TextStyle(color: Colors.green, fontSize:18)),
                                        ],
                                      ),
                                     ),
                                     const Expanded(
                                      flex: 1,
                                      child: SizedBox()
                                     )
                                    ],
                                  ),    
                        ),

                        Container(
                                 width: 170,
                                 height: 150,
                                 margin: const EdgeInsets.only(right: 10),
                                 alignment: Alignment.topCenter,
                                 decoration: BoxDecoration(
                                             color: Colors.white,
                                             border: Border.all(
                                             width: 2,
                                             color: Colors.green,
                                 ),
                                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                                 image: const DecorationImage(
                                              image: AssetImage('assets/images/informacao_motor2.png'),
                                              fit: BoxFit.fill
                                        )
                                  ),
                           ),
                    ],
                  ),
                ],
              ),
              ),
            )
          );
  }
}