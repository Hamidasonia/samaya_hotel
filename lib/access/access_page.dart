import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:samaya_hotel/access/digital_key.dart';
import 'package:samaya_hotel/access/loading_access.dart';

class AccessPage extends StatefulWidget {
  const AccessPage({Key? key}) : super(key: key);

  @override
  _AccessPage createState() => _AccessPage();
}

class _AccessPage extends State<AccessPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late final width = MediaQuery.of(context).size.width;


  bool _anim = false;
  bool _animasiLoading = false;

  String _status = 'Tap to Unlock Room';

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    // _animationController.addStatusListener((status) {
    //   if (status == AnimationStatus.completed)
    //     setState(() {
    //       _anim = true;
    //     });
    // });
  }



  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  // void _onLoading ()async{
  //   if(_anim){
  //     setState((){
  //       _anim = true;
  //       _animasiLoading = true;
  //     });
  //     await Future.delayed(Duration(seconds: 3));
  //     setState((){
  //       _anim = false;
  //       _animasiLoading = true;
  //     });
  //   }
  // }


  @override
  Widget build(BuildContext context)
  // => _animasiLoading ? AccessLoading() :
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 180,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: SizedBox(
                      height: 120,
                      width: MediaQuery.of(context).size.width * 1,
                      child: SvgPicture.asset(
                        'images/rectangle1.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 0,
                    right: 0,
                    child: Align(
                      child: Container(
                          height: 82,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                // blurStyle: BlurStyle.outer,
                                color: Colors.black54,
                                offset: Offset(1, 4),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  'Hotel Samaya, Semarang',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                left: 10,
                                child: SizedBox(
                                  child: Row(
                                    children: const [
                                      Icon(Icons.calendar_month_outlined),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('1 July 2022 - 31 July 2022'),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 30,
                                  right: 10,
                                  child: SizedBox(
                                    child: Row(
                                      children: const [
                                        Icon(Icons.bed),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Room 0311')
                                      ],
                                    ),
                                  ))
                            ],
                          )),
                    ),
                  ),
                  const Positioned(
                    top: 50,
                    left: 35,
                    child: Text(
                      'Access',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap:
                // _onLoading
                ()async{
                  setState((){
                    _anim = true;
                    _animasiLoading = true;
                    _status = 'Proccess';
                  });
                  await Future.delayed(Duration(milliseconds: 3500));
                  setState((){
                    _anim = false;
                    _animasiLoading = false;
                   _status = 'Complete';
                  });
                }
                ,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.47,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _anim
                          ? Lottie.asset('images/assets/ncf_card.json')
                          : Lottie.asset(
                              'images/assets/ncf_card.json',
                              controller: _animationController,
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Text(
                              _status,
                              style: TextStyle(fontSize: 18),
                            )
                    ),
                  ],
                )),
            Expanded(
              flex: 0,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DigitalKey()));
                  },
                  child: const Text(
                    'Show 3D Key',
                    style: TextStyle(color: Colors.deepPurple),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
