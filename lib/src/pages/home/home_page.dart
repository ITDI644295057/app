import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Column(
        children: [
          FlutterLogo(
            size: 250,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Panuwat App',
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Last Sunday’s season premiere of “Game of Thrones” was '
            'watched by 16.1 million viewers across all platforms,'
            ' including cable, online streaming and on-demand viewing. ',
            style: TextStyle(fontSize: 22, color: Colors.deepOrange.shade500),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/ken.jpg'),
              //backgroundImage: NetworkImage('https://entertain.kaazip.com/wp-content/uploads/2023/06/collage-183.jpg'),
            ),
            accountName: Text('Panuwat Jantong'),
            accountEmail: Text('644295057@parichat.skru.ac.th'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, 'info');
            },
            leading: Icon(
              Icons.account_box,
              color: Colors.orange,
            ),
            title: Text('My Info'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, 'login');
            },
            leading: Icon(
              Icons.login,
              color: Colors.orange,
            ),
            title: Text('Login'),
          ),
          Spacer(),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text('Logout'),
          )
        ],
      ),
    );
  }
}
