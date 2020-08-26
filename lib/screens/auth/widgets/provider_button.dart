import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class ProviderButton extends StatefulWidget {
  final BuildContext context;
  final String signInType;
  const ProviderButton({this.context, this.signInType});
  @override
  _ProviderButtonState createState() => _ProviderButtonState();
}

class _ProviderButtonState extends State<ProviderButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.signInType) {
      case "google":
        return InkWell(
          onTap: () => context.signInWithGoogle(),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)),
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.center,
            child: LitAuthIcon.google(size: Size(30.0, 30.0)),
          ),
        );
        break;
      case "Apple":
        return InkWell(
          onTap: () => context.signInWithTwitter(),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)),
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            child: Transform.translate(
                offset: const Offset(-1, 0),
                child: LitAuthIcon.appleWhite(size: const Size(30.0, 30.0))),
          ),
        );
        break;
      case "twitter":
        return InkWell(
          onTap: () => context.signInWithTwitter(),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)),
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.center,
            child: Transform.scale(
                scale: 1.2, child: LitAuthIcon.twitter(size: Size(30.0, 30.0))),
          ),
        );
        break;
      default:
        return const Text("Error");
    }
  }
}
