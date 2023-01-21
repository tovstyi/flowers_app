import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/flowers/presentation/screens/home_page.dart';
import 'features/flowers/presentation/widgets/custom_app_bar.dart';
import 'features/flowers/presentation/widgets/custom_app_bar_title.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const FlowersApp());
}

class FlowersApp extends StatelessWidget {
  const FlowersApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flowers App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContentWrap(),
    );
  }
}

class ContentWrap extends StatefulWidget {
  const ContentWrap({Key? key}) : super(key: key);

  @override
  _ContentWrapState createState() => _ContentWrapState();
}

class _ContentWrapState extends State<ContentWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          title: const CustomAppBarTitle(
            text: 'Flowers',
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: const HomePage());
  }
}
