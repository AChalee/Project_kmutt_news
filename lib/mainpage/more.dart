import 'package:flutter/material.dart';

class AddMore extends StatefulWidget {
  static const routeName ='/more';
  @override
  State<StatefulWidget> createState() {
    
    return _AddMoreState();
  }
}

class _AddMoreState extends State<AddMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'เพิ่มเติม',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),

      ),
body:  ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      );
    
  }
}
class Entry{
  Entry(this.title,[this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'คณะ',
    <Entry>[
      Entry('วิศวกรรมศาสตร์',
      <Entry>[
        Entry('วิศวกรรมเครื่องกล'),
      ],
      ),
      Entry('วิทยาศาสตร์'),
      Entry('ครุศาสตร์อุุตสาหกรรมและเทคโนดลยี'),
      Entry('โครงการร่วมบริหารหลักสูตรมีเดียอาร์ตและเทคโนโลยี'),
      Entry('เทคดนโลยีสารสนเทศ'),
      Entry('สถาปัตยกรรมศาสตร์และการออกแบบ'),
      Entry('สถาบันวิทยาการหุ่นยนต์ภาคสนาม'),
      Entry('วิทยาลัยสหวิทยาการ'),
    ],
  ),
  Entry(
    'ชั้นปี'
  ),
Entry(
  'อื่นๆ',
  <Entry>[
    Entry('ปริญญาโท'),
    Entry('ปริญญาเอก'),
  ],
),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title : Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),      
    );
  }
  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
