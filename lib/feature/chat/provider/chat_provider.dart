import 'package:govision/feature/chat/model/chat_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatNotifier extends _$ChatNotifier {
  @override
  Future<List<ChatItem>> build() async {
    return fetchChatItems();
  }

  List<ChatItem> fetchChatItems() {
    final List<ChatItem> chatList = [
      ChatItem(
          chatId: 'c500e37e-abf6-4939-9e4e-42df1d89c1ee',
          name: 'dr. Grimaldi Ihsan, Sp.M',
          message:
              'Mata Anda terlihat sehat, tetap jaga kesehatan mata Anda dengan mengonsumsi makanan yang bergizi dan hindari paparan sinar UV',
          time: '13:20',
          avatarUrl: 'assets/avatar_dokter_2.png',
          isRead: false),
    ];

    return chatList;
  }
}
