import 'package:lavi_studio_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseConfiguration {
  static final FirebaseConfiguration _singleton =
      FirebaseConfiguration._internal();

  factory FirebaseConfiguration() {
    return _singleton;
  }

  FirebaseConfiguration._internal();

  Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
