import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  final currentUser = FirebaseAuth.instance.currentUser;


}