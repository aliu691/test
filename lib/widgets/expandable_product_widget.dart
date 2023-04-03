import 'package:flutter/material.dart';

class ExpandableProductWidget extends StatefulWidget {
  const ExpandableProductWidget(
      {super.key, required this.label, required this.content});

  final String label;
  final String content;

  @override
  State<ExpandableProductWidget> createState() =>
      _ExpandableProductWidgetState();
}

class _ExpandableProductWidgetState extends State<ExpandableProductWidget> {
  bool isMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isMoreDetails = !isMoreDetails;
            });
          },
          child: Row(
            children: [
              Text(
                widget.label,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18),
              ),
              const SizedBox(width: 40),
              const Icon(Icons.expand_more)
            ],
          ),
        ),
        Visibility(
          visible: isMoreDetails,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                widget.content,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
