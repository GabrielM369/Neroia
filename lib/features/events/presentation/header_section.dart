import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/localizations/translations_extension.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';

class HeaderSection extends ConsumerWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(context.i18n.event.currentLocation, style: ref.textStyle.cardDescription),
                      Icon(Icons.arrow_drop_down, size: 26, color: ref.colors.text),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text('New York, USA', style: ref.textStyle.cardText),
                ],
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(HugeIcons.strokeRoundedNotification01, size: 26, color: ref.colors.text),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      width: 11,
                      height: 11,
                      decoration: BoxDecoration(
                        color: ref.colors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
