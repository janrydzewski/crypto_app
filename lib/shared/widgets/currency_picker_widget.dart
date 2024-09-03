import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/features/other_features/currency/domain/entities/currency_entity.dart';
import 'package:crypto_app/shared/widgets/dialog_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Future<T?> currencyPickerWidget<T>(
  BuildContext appContext,
  List<CurrencyEntity> items,
  String selectedItem,
) async =>
    await dialogBuilder<T>(
      appContext,
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(appContext).dialogBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        items[index].code.toUpperCase(),
                        style: context.titleMedium,
                      ),
                      trailing: items[index].code == selectedItem
                          ? const Icon(Icons.check)
                          : null,
                      onTap: () {
                        appContext
                            .read<UserBalanceCubit>()
                            .changeCurrency(items[index]);
                        appContext.pop();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
