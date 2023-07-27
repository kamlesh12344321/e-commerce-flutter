import 'package:ecommerce_flutter_new/utils/pref.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:ecommerce_flutter_new/view/screens/home_screen.dart';
import 'package:ecommerce_flutter_new/view/screens/login_screen.dart';
import 'package:ecommerce_flutter_new/view_model/auth_view_model.dart';
import 'package:ecommerce_flutter_new/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefs = SharedPrefUtil();
  await sharedPrefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel())
      ],
      child: MaterialApp(
        title: 'E-Commerce',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
