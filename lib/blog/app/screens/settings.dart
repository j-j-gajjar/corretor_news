import 'package:corretor_news/providers/theme_provider.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String devInfo = "";

  String aboutBlog = "";
  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: isThemeChange.mTheme == false
                              ? AssetImage('assets/images/logo.png')
                              : AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    Text(
                      aboutBlog,
                      style: TextStyle(
                        fontSize: setTextSize(15),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Divider(),
              ListTile(
                title: Text(
                  "Modo Claro/Escuro",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "Subscribe to notifications (Not Available Yet!)",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Switch(value: true, onChanged: null),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  "Notificações",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "Subscribe to notifications (Not Available Yet!)",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Switch(value: true, onChanged: null),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Sobre",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "About the developer",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing:
                    Icon(Icons.info_outline, color: Colors.lightBlue, size: 32),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text(
                          "About the Developer",
                          style: TextStyle(),
                        ),
                        content: Text(
                          devInfo,
                          style: TextStyle(
                            fontSize: setTextSize(15),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Politica de Privacidade",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "About the developer",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Icon(Icons.privacy_tip_outlined,
                    color: Colors.lightBlue, size: 32),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text(
                          "About the Developer",
                          style: TextStyle(),
                        ),
                        content: Text(
                          devInfo,
                          style: TextStyle(
                            fontSize: setTextSize(15),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Fontes",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "About the developer",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Icon(Icons.new_label_sharp,
                    color: Colors.lightBlue, size: 32),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text(
                          "About the Developer",
                          style: TextStyle(),
                        ),
                        content: Text(
                          devInfo,
                          style: TextStyle(
                            fontSize: setTextSize(15),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Contato",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "Contact the developer",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Icon(Icons.mark_email_read_outlined,
                    color: Colors.lightBlue, size: 32),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text(
                          "Developer Contact",
                          style: TextStyle(),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(
                                Icons.email,
                              ),
                              title: Text(
                                "godsendjoseph@gmail.com",
                                style: TextStyle(
                                  fontSize: setTextSize(15),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.phone,
                              ),
                              title: Text(
                                "+234 8140864923",
                                style: TextStyle(
                                  fontSize: setTextSize(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Compartilhar",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "Share the app with friends",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Icon(Icons.share, color: Colors.lightBlue, size: 32),
                onTap: () {
                  Share.share('check out my blog app for Naija Tech Guy',
                      subject: 'Look what I made!');
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Avaliar",
                  style: TextStyle(
                    fontSize: setTextSize(20),
                  ),
                ),
                subtitle: Text(
                  "Rate the app on play store",
                  style: TextStyle(
                    fontSize: setTextSize(18),
                  ),
                ),
                trailing: Icon(Icons.star, color: Colors.lightBlue, size: 32),
                onTap: () {
                  LaunchReview.launch(
                    androidAppId: "com.viewus.wp_blog",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
