import 'package:flutter/material.dart';

class CloningUiMain extends StatelessWidget {
  const CloningUiMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 400,
                    // color: Colors.yellow,
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/z/arabic-muslim-man-beard-portrait-36217895.jpg?w=992'),
                      radius: 50,
                      backgroundColor: Colors.green,
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Naran Tour is for best for you now ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ],
              ),
            ),
            Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RowVlaues('20', Icons.favorite),
                    RowVlaues('37', Icons.send),
                    RowVlaues('82', Icons.message),
                    RowVlaues('399', Icons.face),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "To Live in Harmony with Nature — Krishnamurti is one of the greatest thinkers and religious teachers of all time. 'If you lose relationship with nature, you lose relationship with humanity.' Established in 1968."),
            )
          ],
        ),
      ),
    );
  }

  RowVlaues(String texts, IconData Iconss) {
    return Row(
      children: [
        Text(texts),
        SizedBox(
          width: 20,
        ),
        Icon(Iconss)
      ],
    );
  }
}
// Container(
//                 // height: MediaQuery.of(context).size.height * 0.5,
//                 height: 500,
//                 color: Colors.yellow,
//                 child: Stack(
//                   children: [
//                     Container(
//                       // height: MediaQuery.of(context).size.height * 0.45,
//                       height: 450,
//                       color: Colors.red,
//                     ),
//                     Positioned(
//                         bottom: 0,
//                         right: 0,
//                         child: CircleAvatar(
//                           radius: 50,
//                           backgroundColor: Colors.green,
//                         ))
//                   ],
//                 ),
//               )
