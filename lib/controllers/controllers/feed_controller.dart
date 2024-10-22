import 'package:get/get.dart';
import 'package:pusher_client/pusher_client.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/data/apis/auth_api.dart';

class FeedController extends GetxController with StateMixin {
  RxList posts = RxList([]);
  late Channel channel;

  PusherClient pusher = PusherClient(
    '24d44c1bc2052b60000b',
    PusherOptions(
      cluster: 'ap2',
    ),
  );
  @override
  void onReady() {
    fetchFeed();
    connectWebSocket();
    super.onReady();
  }

  Future fetchFeed() async {
    try {
      var authApi = Get.find<AuthApi>();
      change(posts, status: RxStatus.loading());
      var res = await authApi.get('/tour');
      posts(authApi.errorHandler(res));
      change(posts, status: RxStatus.success());
    } catch (e) {
      change(posts, status: RxStatus.error(e.toString()));
    }
  }

  Future connectWebSocket() async {
    pusher.onConnectionStateChange((state) {
      appPrint(state!.currentState.toString(), 'w');
    });
    await pusher.connect();
    channel = pusher.subscribe("posts");
    channel.bind("post.created", (event) {
      appPrint(event!.data.toString(), 'e');
    });
  }

  @override
  void dispose() {
    pusher.unsubscribe('posts');
    pusher.disconnect();
    super.dispose();
  }
}
