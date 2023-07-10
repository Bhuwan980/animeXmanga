import 'package:anime_world/colors.dart';
import 'package:flutter/material.dart';
import 'package:anime_world/widgets/feature_box.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 251),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Logo part
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    decoration: const BoxDecoration(
                      color: MyColor.secondary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
              ],
            ),
            // message part
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: MyColor.secondary,
                ),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero,
                ),
              ),
              margin: const EdgeInsets.all(29).copyWith(
                top: 40,
              ),
              child: const Text(
                "Master, waiting for your command.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Column(
              children: [
                FeatureBox(
                    color: MyColor.secondary,
                    title: 'Dall-E',
                    desc:
                        'Get inspired and stay creative with your assistant powered by Dall-E.'),
                FeatureBox(
                    color: Color.fromARGB(255, 251, 192, 55),
                    title: 'Chat-GPT',
                    desc:
                        'A smart way to informed and organized with ChatGPT.'),
                FeatureBox(
                    color: MyColor.secondary,
                    title: 'Smart Voice Assistant',
                    desc:
                        'Your voice assistant powered by Dall-E and ChatGPT.'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: MyColor.secondary,
        backgroundColor: MyColor.secondary,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
