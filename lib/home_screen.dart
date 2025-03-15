import 'package:api_testing_app/api_datas.dart';
import 'package:api_testing_app/api_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiModel api = ApiModel(id: '5', advice: '52');
  @override
  void initState() {
    // TODO: implement initState
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
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(api.id,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            Text(api.advice,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))
          ],
        ),
      ),
    );
  }
}
