import 'package:flutter/material.dart';
import 'calculation.dart';

const Color myRed1 = Color(0xFFC60240);
const Color myGreen = Color(0xFF429E03);
const Color myGrey = Color(0xFF1F1F1F);

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  Widget calBtn( text, Color btnColor, Color txtColor){
    return ElevatedButton(
      onPressed: () {
         onBtnClick(text);
        setState(() {
        });
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(80, 80),
        shape: const CircleBorder(),
        backgroundColor: btnColor,
        // padding: const EdgeInsets.all(23),
      ),
      child: Text(text,
        style: TextStyle(
          fontSize: 30,
          color: txtColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //input
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.all(10.0),
                  child: Text(
                    hideInput ? '' : input,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                    ),
                  ),
                )
              ],
            ),
            //output
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.all(10.0),
                  child: Text(output.toString(),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 71,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calBtn('AC', myGrey, myRed1),
                calBtn('Del', myGrey, myGreen),
                calBtn('%', myGrey, myGreen),
                calBtn('/', myGrey, myGreen),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calBtn('7', myGrey, Colors.white),
                calBtn('8', myGrey, Colors.white),
                calBtn('9', myGrey, Colors.white),
                calBtn('x', myGrey, myGreen),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calBtn('4', myGrey, Colors.white),
                calBtn('5', myGrey, Colors.white),
                calBtn('6', myGrey, Colors.white),
                calBtn('-', myGrey, Colors.green), //myGreen),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calBtn('1', myGrey, Colors.white),
                calBtn('2', myGrey, Colors.white),
                calBtn('3', myGrey, Colors.white),
                calBtn('+', myGrey, myGreen),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calBtn('0', myGrey, Colors.white),
                calBtn('', myGrey, Colors.white),
                calBtn('.', myGrey, Colors.white),
                calBtn('=', myGreen, Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


