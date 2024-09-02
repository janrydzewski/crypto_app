import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/interval_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/interval/interval_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickIntervalWidget extends StatelessWidget {
  const PickIntervalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntervalBloc, IntervalState>(
      builder: (context, state) {
        return Padding(
          padding: MarginsK.h20v10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _IntervalWidget(
                interval: IntervalEntity.day(),
                isSelected: state.interval == IntervalEntity.day(),
              ),
              _IntervalWidget(
                interval: IntervalEntity.week(),
                isSelected: state.interval == IntervalEntity.week(),
              ),
              _IntervalWidget(
                interval: IntervalEntity.month(),
                isSelected: state.interval == IntervalEntity.month(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _IntervalWidget extends StatelessWidget {
  final IntervalEntity interval;
  final bool isSelected;
  const _IntervalWidget({required this.interval, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<IntervalBloc>()
            .add(IntervalEvent.changeInterval(interval: interval));
      },
      child: Container(
        padding: MarginsK.a10,
        decoration: BoxDecoration(
            borderRadius: MarginsK.circular10,
            color: Colors.green.withOpacity(isSelected ? 0.3 : 0.1)),
        child: Text(
          interval.interval,
          style: context.titleSmall,
        ),
      ),
    );
  }
}
