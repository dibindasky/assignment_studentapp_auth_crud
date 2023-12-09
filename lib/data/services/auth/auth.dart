import 'package:assignment_wandoor_kayla/domain/repositories/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService implements AuthRepo{

  Future<UserCredential> signInWithGoogle() async {
  // Create a new Google Sign-In instance.
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the Google user.
  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

  // Create a new credential using the Google credentials.
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Sign in with the credential.
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

}