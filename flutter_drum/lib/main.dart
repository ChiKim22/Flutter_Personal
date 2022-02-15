import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(DrumApp());
  });
}

class DrumApp extends StatelessWidget {
  const DrumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Drum',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 300,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/cr.wav');
                        player.play('drum_sounds/ki.wav');
                      },
                      onKeyImage: 'assets/images/ride.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/tom1.wav');
                      },
                      onKeyImage: 'assets/images/tom.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/tom2.wav');
                      },
                      onKeyImage: 'assets/images/tom.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/rL.wav');
                      },
                      onKeyImage: 'assets/images/ride.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/hi.wav');
                      },
                      onKeyImage: 'assets/images/hi-hat.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/sn.wav');
                      },
                      onKeyImage: 'assets/images/snap.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/snoff.wav');
                      },
                      onKeyImage: 'assets/images/snap.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/rS.wav');
                      },
                      onKeyImage: 'assets/images/ride.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/snst.wav');
                      },
                      onKeyImage: 'assets/images/snap.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/ki.wav');
                      },
                      onKeyImage: 'assets/images/bass.png',
                    ),
                    DrumButton(
                      onKeyPress: () {
                        player.play('drum_sounds/tom3.wav');
                      },
                      onKeyImage: 'assets/images/tom.png',
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

class DrumButton extends StatelessWidget {
  final Function onKeyPress;
  final String onKeyImage;

  const DrumButton(
      {Key? key, required this.onKeyPress, required this.onKeyImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          onKeyPress();
        },
        child: Image(
          image: AssetImage(onKeyImage),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
      ),
    );
  }
}
