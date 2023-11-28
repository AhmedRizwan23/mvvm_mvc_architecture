import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/View_models/services/getxcontroller/home_controller/home_view_model.dart';
import 'package:mvvm_mvc_architecture/View_models/user_preferences/user_preference_view_model.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes_name.dart';
import 'package:mvvm_mvc_architecture/response/status.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final homecontroller = Get.put(Homeviewmodel());
  final Userpreference _userpreference = Userpreference();
  @override
  void initState() {
    // TODO: implement initState

    homecontroller.userlistapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  _userpreference.removeuser().then((value) {
                    Get.toNamed(Routename.loginview);
                  });
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Obx(() {
          switch (homecontroller.rxrequeststatus.value) {
            case Status.LOADING:
              return const CircularProgressIndicator();
            case Status.ERROR:
              return const Text("Something wrong");
            case Status.COMPLETED:
              return ListView.builder(
                itemCount: homecontroller.userlist.value.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(homecontroller
                              .userlist.value.data![index].avatar
                              .toString())),
                      title: Text(homecontroller
                          .userlist.value.data![index].firstName
                          .toString()),
                      subtitle: Text(homecontroller
                          .userlist.value.data![index].email
                          .toString()),
                    ),
                  );
                },
              );
          }
        }));
  }
}
