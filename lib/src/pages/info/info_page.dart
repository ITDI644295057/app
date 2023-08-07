import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('My Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircleAvatar(radius: 50, backgroundColor:  Colors.amber),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/ken.jpg'),
              //backgroundImage: NetworkImage('https://entertain.kaazip.com/wp-content/uploads/2023/06/collage-183.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Panuwat Jantong',
              style: TextStyle(
                fontSize: 50,
                //color: Colors.deepOrange,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'STUDENT',
              style: TextStyle(
                fontSize: 30,
                color: Colors.yellowAccent.shade200,
                fontFamily: 'CrimsonText',
              ),
            ),
            SizedBox(
              height: 30,
              width: 150,
              child: Divider(
                color: Colors.deepOrange,
                thickness: 5,
              ),
            ),
            // Image.asset('assets/images/ken.jpg')
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    ' Nickname : Ken',
                    style: TextStyle(
                      fontSize: 22,
                      // fontFamily: 'ChelaOne-Regular.ttf',
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  Text(
                    ' Tel - 0981514997',
                    style: TextStyle(
                      fontSize: 22,
                      // fontFamily: 'ChelaOne-Regular.ttf',
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  Text(
                    ' panuwat23jantong@gmail.com',
                    style: TextStyle(
                      fontSize: 22,
                      // fontFamily: 'ChelaOne-Regular.ttf',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
