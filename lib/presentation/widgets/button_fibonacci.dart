import 'package:flutter/material.dart';

class ButtonFibonacci extends StatelessWidget {
  final Function? onTap;
  final Widget child;
  final Key? keyId;
  const ButtonFibonacci({Key? key, this.onTap, required this.child, this.keyId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 227,
      child: TextButton(
        key: keyId,
          style: OutlinedButton.styleFrom(
              backgroundColor: onTap == null ? const Color(0xffA6A6A6) : const Color(0xff67C8FF),
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              elevation: 10),
          onPressed: onTap == null ? null : () => onTap!(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
              child: child
          )),
    );
  }
}
