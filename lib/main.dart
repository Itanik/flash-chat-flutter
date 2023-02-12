import 'package:flash_chat_flutter/screens/chat_screen.dart';
import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  FlashChat({super.key});

  final _router = GoRouter(initialLocation: '/', routes: [
    GoRoute(path: WelcomeScreen.id, builder: (context, state) => const WelcomeScreen()),
    GoRoute(path: LoginScreen.id, builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: RegistrationScreen.id,
        builder: (context, state) => const RegistrationScreen()),
    GoRoute(path: ChatScreen.id, builder: (context, state) => const ChatScreen()),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
