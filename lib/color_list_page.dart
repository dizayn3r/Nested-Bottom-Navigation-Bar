import 'package:flutter/material.dart';

class ColorsListPage extends StatelessWidget {
  ColorsListPage(
      {super.key, required this.color, required this.title, this.onPush});

  final MaterialColor color;
  final String title;
  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Container(
        color: Colors.white,
        child: _buildList(),
      ),
    );
  }

  final List<int> materialIndices = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50
  ];

  Widget _buildList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      itemCount: materialIndices.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8.0);
      },
      itemBuilder: (BuildContext context, int index) {
        int materialIndex = materialIndices[index];
        return InkWell(
          onTap: () => onPush?.call(materialIndex),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: color[materialIndex],
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2, 2),
                    blurRadius: 2,
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$materialIndex',
                  style: const TextStyle(fontSize: 24.0),
                ),
                const Icon(
                  Icons.chevron_right_rounded,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
