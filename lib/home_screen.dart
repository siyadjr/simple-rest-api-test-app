import 'package:api_testing_app/api_datas.dart';
import 'package:api_testing_app/api_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiModel api = ApiModel(id: '', advice: '');
  @override
  void initState() {
    getApidata();
    super.initState();
  }

  Future<void> getApidata() async {
    final value = await ApiDatas().getApiData();
    if (value != null) {
      setState(() {
        api = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            api.id == ''
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Text(api.id,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
            Text(api.advice,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))
          ],
        ),
      ),
    );
  }
}
