import 'package:base_dependencies/main.dart';
import 'package:base_ds/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/help_controller.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/states/help_state.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  late HelpController _helpController;

  @override
  void initState() {
    super.initState();

    _helpController = context.read<HelpController>();
  }

  @override
  void dispose() {
    _helpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Screen'),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.symmetric(
            horizontal: defaultSpace, vertical: defaultSpace),
        child: Column(
          children: <Widget>[
            ValueListenableBuilder<HelpState>(
                valueListenable: _helpController,
                builder: (BuildContext internalContext, HelpState state,
                    Widget? child) {
                  if (state is SuccessHelpState) {
                    return Center(child: Text(state.value));
                  }
                  return const Center(child: Text('Initial'));
                }),
            ElevatedButton(
                onPressed: () => _helpController.changeName(),
                child: const Text('Change Name')),
          ],
        ),
      ),
    );
  }
}
