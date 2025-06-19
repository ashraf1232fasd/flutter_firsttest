import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF626ce3),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 70,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Sister',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('CALLING...',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.person,
                            size: 40,
                            color: Colors.white,),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.add,
                            size: 40,
                            color: Colors.white,),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.mic_off,
                            size: 40,
                            color: Colors.white,),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.pause,
                            size: 40,
                            color: Colors.white,),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.videocam,
                            size: 40,
                            color: Colors.white,),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.record_voice_over_rounded,
                            size: 40,
                            color: Colors.white,),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.volume_up,
                            size: 40,
                            color: Colors.white,),
                        ),
                        Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                            ),
                            child: Icon(
                              Icons.call_end,
                              color: Colors.white,
                              size: 40,)
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12
                          ),
                          child: Icon(Icons.dialpad,
                            size: 40,
                            color: Colors.white,),
                        ),
                      ],
                    ),
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