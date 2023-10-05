import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './user_page.dart';

class RequererOrdemPage extends StatefulWidget {
  const RequererOrdemPage({ Key? key }) : super(key: key);

  @override
  State<RequererOrdemPage> createState() => _RequererOrdemPageState();
}

class _RequererOrdemPageState extends State<RequererOrdemPage> {
  // Initial Selected Value
  String dropdownvalueTAG = 'MO213'; 
  String dropdownvalueSETOR = 'Caldeira';   
  
  // List of items in our dropdown menu
  var itemsTAG = [    
    'MO213',
    'MO214',
    'MO215',
    'MO216',
    'MO217',
  ];
  var itemsSETOR = [    
    'Caldeira',
    'Casa de Máquinas',
    'Preparação',
    'Montagem',
    'Embalagem',
  ];

   DateTime ?_selectedDate;

  //Method for showing the date picker
  void _pickDateDialog() {
    showDatePicker(
            builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.green, // header background color
              onPrimary: Colors.white, // header text color
              surface: Colors.green,
              onSurface: Colors.black, // body text color
            ),
            
          ),
          child: child!,
        );
      },
            context: context,
            initialDate: DateTime.now(),
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime(
                2100)) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;
      });
    });
  }

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
          height: double.infinity,
          margin: const EdgeInsets.only(top: 20, bottom: 20, right: 15, left:15),
          decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.green,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Setor', style: TextStyle(color: Colors.green, fontSize: 18)),
                        DropdownButton(
                        isExpanded: true,
                        style: const TextStyle(color: Colors.green, fontSize: 20),
                        // Initial Value
                        value: dropdownvalueSETOR,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),    
                        // Array list of items
                        items: itemsSETOR.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items.toString()),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) { 
                          setState(() {
                            dropdownvalueSETOR = newValue!;
                          });
                        },
                      ),
                      ],
                    ),
                  ),
                  Container(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('TAG do motor', style: TextStyle(color: Colors.green, fontSize: 18)),
                        DropdownButton(
                        isExpanded:true,
                        style: const TextStyle(color: Colors.green, fontSize: 20),
                        // Initial Value
                        value: dropdownvalueTAG,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),    
                        // Array list of items
                        items: itemsTAG.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items.toString()),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) { 
                          setState(() {
                            dropdownvalueTAG = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Descrição do problema', style: TextStyle(color: Colors.green, fontSize: 18)),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.only(top: 10),
                    child: const TextField(
                            maxLines: null,
                            minLines: 10,
                            decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width:2, color: Colors.green),
                              ),
                            hintText: 'Descreva aqui o problema...',
                            hintStyle: TextStyle(color: Colors.green),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width:2, color: Colors.green),
                              )
                          ),
                        ),
                  )
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Parecer da manutenção', style: TextStyle(color: Colors.green, fontSize: 18)),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.only(top: 10),
                    child: const TextField(
                            maxLines: null,
                            minLines: 10,
                            decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width:2, color: Colors.green),
                              ),
                            hintText: 'Descreva aqui o paracer da manutenção...',
                            hintStyle: TextStyle(color: Colors.green),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width:2, color: Colors.green),
                              )
                          ),
                        ),
                  )
                ],
              )
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                                  children: [
                                    const Text('Programação de parada', style: TextStyle(color: Colors.green, fontSize: 14)),
                                    InkWell(
                                      child: Container(
                                      margin: const EdgeInsets.only(top:10),
                                      padding: const EdgeInsets.all(5),
                                      height: 50,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.green,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(5))
                                    ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.date_range, color: Colors.black,),
                                          Text(_selectedDate == null //ternary expression to check if date is null
                                                ? 'Selecionar data'
                                                : '${DateFormat.yMMMd().format(_selectedDate!)}')
                                        ],
                                      ),
                                    ),
                                    onTap: _pickDateDialog,
                                    )
                                  ],
                                ),
                        ),
                        const SizedBox(width: 15,),
                        Expanded(
                          flex: 1,
                          child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const[
                                    Text('Situação OS', style: TextStyle(color: Colors.green, fontSize: 14)),
                                    SizedBox(height: 20,),
                                    Text('Aberta', style: TextStyle(color: Colors.green, fontSize: 15)),
                                    Divider()
                                  ],
                                ), 
                        )

                      

                    ],
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Responsável pela OS', style: TextStyle(color: Colors.green, fontSize: 15),),
                        Container(
                          margin: const EdgeInsets.only(left: 0, top: 5, right: 5, bottom: 5),
                          child: const Text('Carlos', style: TextStyle(color: Colors.green, fontSize: 25),),
                        ),
                        const Divider(
                          color: Colors.grey,
                          height: 2,
                        )
                      ],
                    ),
                  ),

                  InkWell(
                    child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top:50, left: 150),
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        width: 2,
                        color: Colors.green,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                    child: const Text('Requerer', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                  onTap: (){
                    Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: ((context) => const UserPage())
                                  )
                              );
                  },
                  )
                ],
              ),
            ),
          ],
          ),
          ),
      ),
    );
  }
}