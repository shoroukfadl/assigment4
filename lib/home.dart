
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentCountA=0;
  int currentCountB=0;
  void IncrementcounterA_1point()
  {
    setState(() {
      currentCountA++;
    });
  }

  void IncrementcounterA_2point()
  {
    setState(() {
      currentCountA+=2;
    });
  }

  void IncrementcounterA_3point()
  {
    setState(() {
      currentCountA+=3;
    });
  }

  void IncrementcounterB_1point()
  {
    setState(() {
      currentCountB++;
    });
  }

  void IncrementcounterB_2point()
  {
    setState(() {
      currentCountB+=2;
    });
  }

  void IncrementcounterB_3point()
  {
    setState(() {
      currentCountA+=3;
    });
  }

  void Reset_2Counters()
  {
    setState(() {
      currentCountA=0;
      currentCountB=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Basketball Score Counter"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text("TEAM A",style: TextStyle(
                        fontSize: 25
                    ),),
                    const SizedBox(height: 20,),
                    Text("${currentCountA}",style:const TextStyle(
                        fontSize: 50
                    ),),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          minimumSize: const Size(150, 50)
                      ),
                      onPressed: (){
                          IncrementcounterA_1point();
                      }, child: const Text("+1 POINT",style: TextStyle(
                        fontSize: 20
                    ),),

                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: (){
                          IncrementcounterA_2point();
                        }, style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        minimumSize: const Size(150, 50)
                    ),
                        child: const Text("+2 POINT",style: TextStyle(
                            fontSize: 20
                        ),)),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: (){
                        IncrementcounterA_3point();
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("+3 POINT",style: TextStyle(
                          fontSize: 20
                      ),),),
                  ],
                ),
                const SizedBox(width: 10,),
                Container(
                  width: 10,
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.black.withOpacity(0.3),
                    thickness: 2,
                    indent: 5,
                    endIndent:0,
                    width: 20,
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    const Text("TEAM B",style: TextStyle(
                        fontSize: 25
                    ),),
                    const SizedBox(height: 20,),
                    Text("${currentCountB}",style:const TextStyle(
                        fontSize: 50
                    ),),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          minimumSize: const Size(150, 50)
                      ),
                      onPressed: (){
                        IncrementcounterB_1point();
                      }, child: const Text("+1 POINT",style: TextStyle(
                        fontSize: 20
                    ),),

                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: (){
                          IncrementcounterB_2point();
                        }, style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        minimumSize: const Size(150, 50)
                    ),
                        child: const Text("+2 POINT",style: TextStyle(
                            fontSize: 20
                        ),)),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: (){
                        IncrementcounterB_3point();
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("+3 POINT",style: TextStyle(
                          fontSize: 20
                      ),),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
               Reset_2Counters();
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.grey.withOpacity(0.6),
                  minimumSize: const Size(150, 50)
              ),
              child: const Text("Reset",style: TextStyle(
                  fontSize: 20
              ),),),
          ],
        ),
      ),
    );
  }
}
