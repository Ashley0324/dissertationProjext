import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ARSceneButton extends StatelessWidget {
  const ARSceneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),

        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
              "images/AR.png",
            height: 20,
          ),
          const SizedBox(width: 10,),
          const Text(
            'AR scene',
            style: TextStyle(
                color:Colors.white,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          TextButton.icon(
              onPressed: null,
              icon: SvgPicture.asset(
                "assets/icons/shopping-bag.svg",
                height: 18,
              ),
              label: const Text(
                  'Like 💗',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 16,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
