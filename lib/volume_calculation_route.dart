import 'package:flutter/material.dart';

class VolumeCalculationRoute extends StatelessWidget {
  const VolumeCalculationRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Расчет объемов'),
        ),
        body: SizedBox(
            width: double.infinity,
            child: DataTable(
                showBottomBorder: true,
                dataRowHeight: 60,
                columns: const [
                  DataColumn(label: Text("Диаметр1")),
                  DataColumn(label: Text("Диаметр2"))
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "d1"),
                          keyboardType: TextInputType.number,
                        ),
                      )),
                      DataCell(Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "d2"),
                          keyboardType: TextInputType.number,
                        ),
                      ))
                    ],
                  ),
                  DataRow(cells: [
                    DataCell(Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(style: TextStyle(fontSize: 25),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Вес"),
                        keyboardType: TextInputType.number,
                      ),
                    )),
                    DataCell(Text("Результат", style: TextStyle(fontSize: 25),), placeholder: true)
                  ]),
                ])));
  }
}
