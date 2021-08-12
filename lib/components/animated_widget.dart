/// Demonstrates playing a one-shot animation on demand

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class PlayOneShotAnimation extends StatefulWidget {
  const PlayOneShotAnimation({Key? key}) : super(key: key);

  @override
  _PlayOneShotAnimationState createState() => _PlayOneShotAnimationState();
}

class _PlayOneShotAnimationState extends State<PlayOneShotAnimation> {
  SMIBool? _pressed;

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'anim_state',
    );
    artboard.addController(controller!);
    _pressed = controller.findInput<bool>('pressed') as SMIBool;
  }

  void _hitBump() => _pressed?.value = !_pressed!.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One-Shot Example'),
      ),
      body: Center(
        child: GestureDetector(
          child: RiveAnimation.asset(
            'assets/animations/test.riv',
            onInit: _onRiveInit,
            stateMachines: const ['anim_state'],
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
          onTapUp: (tapInfo) {
            var localTouchPosition = (context.findRenderObject() as RenderBox)
                .globalToLocal(tapInfo.globalPosition);

            var leftCenterPosition = localTouchPosition.dx <
                (MediaQuery.of(context).size.width / 3) * 2;
            var rightCenterPosition =
                localTouchPosition.dx > (MediaQuery.of(context).size.width / 3);

            if (leftCenterPosition && rightCenterPosition) _hitBump();
          },
        ),
      ),
    );
  }
}
