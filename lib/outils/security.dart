import 'dart:convert';
import 'package:crypto/crypto.dart';

/// Transforme un mot de passe en clair en une empreinte SHA-256.
/// On ne stocke et on ne compare jamais le mot de passe en clair.
String hashPassword(String password) {
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}