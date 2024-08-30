import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/theme/styles/input_styles.dart';
import 'package:flutter/material.dart';

SliverAppBar listAppBar(
  BuildContext context,
) {
  return SliverAppBar(
    toolbarHeight: 70,
    expandedHeight: 130,
    collapsedHeight: 70,
    backgroundColor: context.surfaceColor,
    flexibleSpace: LayoutBuilder(
      builder: (context, constraints) {
        final isCollapsed = constraints.biggest.height <= 130;
        return FlexibleSpaceBar(
          centerTitle: true,
          title: AnimatedSwitcher(
            duration: Durations.long1,
            child: isCollapsed ? _buildSearchBar(context) : _buildText(context),
          ),
        );
      },
    ),
    floating: false,
    pinned: true,
  );
}

Widget _buildSearchBar(BuildContext context) => Padding(
      padding: MarginsK.l20r20top30b0,
      child: TextFormField(
        autocorrect: false,
        decoration: textInputDecoration(context, "Search for cryptocurrency"),
        maxLines: 1,
        cursorColor: context.tertiaryFixed,
        textInputAction: TextInputAction.go,
        keyboardType: TextInputType.text,
        style: context.titleMedium,
        onChanged: (value) {},
      ),
    );

Widget _buildText(BuildContext context) => Container(
      width: double.infinity,
      padding: MarginsK.h10,
      child: Text(
        "Cryptocurrency List",
        style: context.titleLarge,
      ),
    );
