import 'package:firebase_auth/firebase_auth.dart';
import 'package:music_app/modules/shared/auth/repositories/auth_repository_interface.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<User> getGoogleLogin() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final GoogleAuthCredential googleCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final UserCredential googleUserCredential =
        await FirebaseAuth.instance.signInWithCredential(googleCredential);
    print("signed in" + googleUserCredential.user.displayName);

    return googleUserCredential.user;
  }

  @override
  User getUser() {
    return _auth.currentUser;
  }

  @override
  Future getLogout() {
    return _auth.signOut();
  }
}
