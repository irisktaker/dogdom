import '/widgets/add.dart';
import '/widgets/circle.dart';
import '/widgets/home.dart';
import '/widgets/message.dart';
import '/widgets/user.dart';

class BtnNavBarBloc {
  int screenIndex = 0;

  final List<Map<String, dynamic>> screens = [
    {
      'screen': const HomeScreen(),
      'title': 'Home',
    },
    {
      'screen': const CircleScreen(),
      'title': 'Circle',
    },
    {
      'screen': const AddScreen(),
      'title': 'Add',
    },
    {
      'screen': const MessageScreen(),
      'title': 'Message',
    },
    {
      'screen': const UserScreen(),
      'title': 'User',
    },
  ];
}
