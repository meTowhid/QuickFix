import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/feature/calendar/widgets/service_tile.dart';
import 'package:quick_fix/feature/home/widgets/section_header.dart';
import 'package:quick_fix/shared/constants/spacing.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.only(
              top: Sp.def5x * 2,
              bottom: Sp.def5x,
              left: Sp.def2x,
              right: Sp.def2x,
            ),
            decoration: const BoxDecoration(
              color: AppColor.darkBlue,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(Sp.def3x)),
            ),
            child: const Text(
              'Calender',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            elevation: 3,margin: const EdgeInsets.all(Sp.def2x),
            child: TableCalendar(
              firstDay: DateTime.now(),
              lastDay: DateTime.now().add(const Duration(days: 365)),
              focusedDay: DateTime.now(),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SectionHeader('Booked Services')),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) => const ServiceTile(),
          ),
        ),
      ],
    );
  }
}
