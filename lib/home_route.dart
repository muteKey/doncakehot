import 'package:flutter/material.dart';
import 'package:doncakehot/volume_calculation_route.dart';

/// This is the stateless widget that the main application instantiates.
class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showBottomBorder: true,
      headingRowHeight: 0,
      columns: const [DataColumn(label: Text(""))],
      rows: [
        DataRow(cells: <DataCell>[
          DataCell(
              const Text(
                "Расчет объемов",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ), onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VolumeCalculationRoute()),
            );
          }),
        ]),
      ],
    );
  }
}
