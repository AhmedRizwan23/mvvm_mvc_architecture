import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/View_models/services/getxcontroller/login_controller.dart';
import 'package:mvvm_mvc_architecture/resources/components/round_button.dart';
import 'package:mvvm_mvc_architecture/utils/utils.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  var loginvm = Get.put(Loginviewmodel());
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (Value) {
                      if (Value!.isEmpty) {
                        Utils.showsnack("Email", "Please enter a valid email");
                      }
                      return null;
                    },
                    onFieldSubmitted: (Value) {
                      Utils.fieldfocuschange(
                          context,
                          loginvm.emailfocusnode.value,
                          loginvm.passwordfocusnode.value);
                    },
                    controller: loginvm.emailcontroller.value,
                    focusNode: loginvm.emailfocusnode.value,
                    decoration: const InputDecoration(
                        hintText: "Email", border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.showsnack(
                            "Passoword", "Please enter a valid password");
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldfocuschange(
                          context,
                          loginvm.emailfocusnode.value,
                          loginvm.passwordfocusnode.value);
                    },
                    controller: loginvm.passwordcontroller.value,
                    focusNode: loginvm.passwordfocusnode.value,
                    decoration: const InputDecoration(
                        hintText: "Password", border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Obx(() => Roundbuttoncustom(
                  title: "Login",
                  height: 50,
                  width: 150,
                  loading: loginvm.loading.value,
                  onpresss: () {
                    if (formkey.currentState!.validate()) {
                      loginvm.loginapi();
                    }
                  },
                ))
          ],
        ),
      ),
    );
  }
}
