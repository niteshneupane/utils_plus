import 'package:example/data_model.dart';
import 'package:flutter/material.dart';

class TableWithHeader extends StatelessWidget {
  const TableWithHeader({
    super.key,
    required this.headerTitle,
    required this.datas,
  });

  final String headerTitle;
  final List<DataModel> datas;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerTitle,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(),
        Table(
          border: TableBorder.all(),
          children: [
            const TableRow(
              decoration: BoxDecoration(color: Colors.blue),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Input",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Result",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            for (DataModel data in datas) ...[
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.getInput,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.result,
                    ),
                  ),
                ],
              )
            ]
          ],
        ),
      ],
    );
  }
}
