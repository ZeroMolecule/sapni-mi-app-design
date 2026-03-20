import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class GradientShowcase extends StatelessWidget {
  const GradientShowcase({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gradients.background',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: Gradients.background,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Linear · top-left → bottom-right · stops: 0.0, 0.35, 0.71',
            style: TextStyle(fontSize: 11, color: Colors.black38),
          ),
          const SizedBox(height: 32),
          const Text(
            'In context — GradientScaffold',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 300,
            child: GradientScaffold(
              child: Center(
                child: Text(
                  'Screen content',
                  style: Theme.of(context).textStyles.message,
                ),
              ),
            ),
          ),
        ],
      ),
    );
}

@UseCase(name: 'Gradients', type: GradientShowcase)
Widget buildGradients(BuildContext context) => const GradientShowcase();
