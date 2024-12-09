class Message {
  Message({
    required this.user,
    required this.message,
    required this.timestamp,
  });

  final String user;
  final String message;
  final DateTime timestamp;
}
