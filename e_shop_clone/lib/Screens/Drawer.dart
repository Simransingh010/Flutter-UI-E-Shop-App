import 'package:flutter/material.dart';

class DrawerCall extends StatelessWidget {
  const DrawerCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 5, 10),
        child: Column(
          children: [
            SizedBox(
              height: 170,
              width: 500,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('asset/Image/avatar.jpeg'),
                ),
                title: Text(
                  'Simranpreet Singh',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'simran.ahuja329@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 0,
              color: Colors.black,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    title: const Text(
                      'Information',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'E-Mail',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.password,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 0,
              color: Colors.black,
              thickness: 0,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    title: const Text(
                      'Preferences',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.language,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Languages',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.shortcut,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Shortcuts',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.design_services,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Themes',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 0,
              color: Colors.black,
              thickness: 0,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    title: const Text(
                      'Account',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Add Account',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.change_circle,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Switch Account',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
