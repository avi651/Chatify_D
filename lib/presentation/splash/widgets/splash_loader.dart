import 'package:flutter/material.dart';

class ProgressiveDots extends StatefulWidget {
  const ProgressiveDots({super.key, this.size = 10});

  final double size;

  @override
  State<ProgressiveDots> createState() => _ProgressiveDotsState();
}

class _ProgressiveDotsState extends State<ProgressiveDots>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,

      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return AnimatedBuilder(
      key: const Key("progressive_dots"),

      animation: _controller,

      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,

          children: List.generate(3, (index) {
            final opacity = (_controller.value * 3 - index).clamp(0.3, 1.0);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),

              child: Dot(
                key: Key("dot_$index"),

                size: widget.size,

                color: color.withValues(alpha: opacity),
              ),
            );
          }),
        );
      },
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({super.key, required this.size, required this.color});

  final double size;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,

      height: size,

      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
