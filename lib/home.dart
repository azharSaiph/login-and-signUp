import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26263F),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF26263F),
        title: Text(
          'Azhar Reading Books',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            letterSpacing: 1.5,
            wordSpacing: 2.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('images/allah.png'),
              SizedBox(height: 30.0),
              Text(
                'Welcome To Azhar Reading',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  letterSpacing: 2.1,
                  wordSpacing: 1.5,
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 25.0),
                child: Text(
                  'Halkaan waxaa ka baran kartaa cashiro ku saabsan diinta kuwaas oo aad wax badan ka faa\'iidoonto i.a marka fadlan hor isku day in aad Subscribtion samayso sida aad u hesho warbixinada la xiriira bixinta cashirada iyo soo jeedinta muxaadarooyinka',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    letterSpacing: 1.5,
                    wordSpacing: 2.0,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Buttons(
                title: 'Subscribe Now',
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    autoHide: Duration(seconds: 10),
                    headerAnimationLoop: true,
                    dialogType: DialogType.noHeader,
                    desc:
                        'Waraa waxa ma kuu sheegaa meesha waxa ma yaalaan ee ka carar.',
                    descTextStyle: TextStyle(
                      fontSize: 14.0,
                      letterSpacing: 1.5,
                      wordSpacing: 2.0,
                    ),
                    btnOkOnPress: () {
                      debugPrint('OnClcik');
                    },
                    btnOkIcon: Icons.check_circle,
                  ).show();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
