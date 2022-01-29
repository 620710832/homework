import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       alignment: Alignment.center,
       color: Colors.black12,
       child: Padding(
         padding: const EdgeInsets.all(125.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               children: const [
                 Icon(
                   Icons.lock,
                   size: 75.0,
                   color: Colors.black38,
                 ),
                 Padding(
                   padding: EdgeInsets.all(20.0),
                   child: Text(
                     "กรุณาใส่รหัสผ่าน",
                     style: TextStyle(fontSize: 20.0, color: Colors.black38),
                   ),
                 )
               ],
             ),
             Padding(
               padding: const EdgeInsets.all(50.0),
               child: Container(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         _buildButton(1),
                         _buildButton(2),
                         _buildButton(3),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         _buildButton(4),
                         _buildButton(5),
                         _buildButton(6),
                       ],
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildButton(7),
                          _buildButton(8),
                          _buildButton(9),
                   ],
                 ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 75.0,height: 75.0
                              ),
                              _buildButton(0),
                              Container(
                                  width: 75.0,height: 75.0,
                                  child: const Icon(Icons.backspace,size:30.0,color: Colors.black38),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: TextButton(onPressed: (){}, child: const Text('ลืมรหัสผ่าน')),
                     )
                   ]),
             )
     )],
         ),
       ),
     ),
   );
  }
}
Widget _buildButton(int? num) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 75.0,
        height: 75.0,
        child: Center(child: Text('$num')),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black54, width: 4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // สีเงา
                offset: const Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]
        ),
      ),
    ),
  );
}


