import 'package:cheers/UI/layouts/menu_layout.dart';
import 'package:cheers/UI/themes/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';

void main() {
  setupApp();
  runApp(const Cheers());
}

class Cheers extends StatefulWidget {
  const Cheers({Key? key}) : super(key: key);

  @override
  State<Cheers> createState() => _CheersState();
}

class _CheersState extends State<Cheers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      title: 'Cheers',
      home: Menu(key: widget.key),
    );
  }
}

Future<void> setupApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
