import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/controller/create_account/create_account_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class CommonCalender extends ConsumerWidget {
  const CommonCalender({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final notifier=ref.read(createAccountProvider.notifier);
    final state=ref.watch(createAccountProvider);
    return Container(
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey400, width: 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: InkWell(
              onTap: () {
               notifier.pickDate(context);
              },
              child: Image.asset(
                'assets/images/calendar2.png',
                height: 18,
                width: 18,
              ),
            ),
          ),
          SizedBox(width: 8),

          Text(state. selectedDate==null?"No Date Select":DateFormat("dd/MM/yyyy").format(state. selectedDate!)),
        ],
      ),
    );
  }
}
