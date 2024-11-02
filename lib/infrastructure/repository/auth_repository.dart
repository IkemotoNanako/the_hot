import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  AuthRepository();
  final SupabaseClient supabase = Supabase.instance.client;
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.auth.signUp(
        email: email,
        password: password,
      );
    } on Exception catch (_) {
      // todo: エラーハンドリング
      rethrow;
    }
  }

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      return await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
    } on Exception catch (_) {
      // todo: エラーハンドリング
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await supabase.auth.signOut();
    } on Exception catch (_) {
      // todo: エラーハンドリング
      rethrow;
    }
  }
}
