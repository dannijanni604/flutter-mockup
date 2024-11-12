import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/controllers/controllers.dart';
import 'package:tourism/views/auth/login_view.dart';

class HomeView extends GetView<FeedController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home'), actions: [
          IconButton(
              onPressed: () {
                GetStorage().remove('auth_token');
                Get.offAll(() => const LoginView());
              },
              icon: const Icon(Icons.logout))
        ]),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RefreshIndicator(
                onRefresh: () async {
                  controller.fetchFeed();
                },
                child: controller.obx((state) => ListView.separated(
                    itemCount: controller.posts.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) => Material(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller.posts[index]['title'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  const SizedBox(height: 5),
                                  Text(controller.posts[index]['body'])
                                ]))))))));
  }
}
