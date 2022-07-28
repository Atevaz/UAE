import 'package:flutter/material.dart';
import 'package:h_m/presentation/widget/chat_message.dart';
import 'package:h_m/presentation/widget/icon.dart';
import 'constants/assets_manager.dart';
import 'presentation/widget/switch_tab_bar.dart';

class Component extends StatelessWidget {
  Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: ChatMessage.reciever(
                content: 'faskdljkashdkhjfkajlshdfjkhsadkljfhaksjldhfjkadfs',
                time: '1:26 am',
                imageAddress:
                    'https://static.generated.photos/vue-static/face-generator/landing/wall/20.jpg'),
          )),
    );
  }
}
