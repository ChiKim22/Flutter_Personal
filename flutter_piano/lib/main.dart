import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(PianoApp());
  });
}

class PianoApp extends StatelessWidget {
  AudioCache player = AudioCache();
  // final player = AudioCache();

  // void playAudio({required String fileName}) {
  //   player.play(fileName);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Piano',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            PianoButton(
              onKeyPress: () {
                player.play('piano_notes/C4.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/D4.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Db4.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/E4.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Eb4.mp3');
              },
            ),
            PianoButton(
              onKeyPress: () {
                player.play('piano_notes/F4.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/G4.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Gb4.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/A4.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Ab4.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/B4.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Bb4.mp3');
              },
            ),
            PianoButton(
              onKeyPress: () {
                player.play('piano_notes/C5.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/D5.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Db5.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/E5.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Eb5.mp3');
              },
            ),
            PianoButton(
              onKeyPress: () {
                player.play('piano_notes/F5.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/G5.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Gb5.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/A5.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Ab5.mp3');
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {
                player.play('piano_notes/B5.mp3');
              },
              onSuperKeyPress: () {
                player.play('piano_notes/Bb5.mp3');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PianoButtonWithSuperKey extends StatelessWidget {
  final Function onMainKeyPress;
  final Function onSuperKeyPress;

  const PianoButtonWithSuperKey(
      {Key? key, required this.onMainKeyPress, required this.onSuperKeyPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 3.0, right: 3.0),
            child: SizedBox(
              width: 70.0,
              height: 400.0,
              child: ElevatedButton(
                onPressed: () {
                  onMainKeyPress();
                },
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: -20.0,
            child: SizedBox(
              width: 40.0,
              height: 200.0,
              child: ElevatedButton(
                onPressed: () {
                  onSuperKeyPress();
                },
                child: null,
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PianoButton extends StatelessWidget {
  final Function onKeyPress;

  const PianoButton({Key? key, required this.onKeyPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, left: 3.0, right: 3.0),
        child: SizedBox(
          width: 70.0,
          height: 400.0,
          child: ElevatedButton(
            onPressed: () {
              onKeyPress();
            },
            child: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
