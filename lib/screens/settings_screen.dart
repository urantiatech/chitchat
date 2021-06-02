import 'package:chitchat/config/cc_icons_icons.dart';
import 'package:chitchat/config/theme.dart';
import 'package:chitchat/main.dart';
import 'package:chitchat/screens/chat_list_screen.dart';
import 'package:chitchat/widgets/settings_list_tile.dart';
import 'package:chitchat/widgets/settings_profile_field.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              SizedBox(height: 16),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: Icon(
                        CcIcons.person,
                        color: Theme.of(context).primaryColor,
                        size: 60,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: FloatingActionButton(
                        backgroundColor: isThemeDark ? chatFieldBg : whiteColor,
                        splashColor: normalTextColor.withOpacity(0.12),
                        onPressed: () {},
                        child: Icon(
                          CcIcons.camera,
                          color: Theme.of(context).primaryColor,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              SettingsProfileField(
                leadIconData: CcIcons.person,
                fieldTitle: 'Name',
                fieldData: 'Mattie Blooman',
              ),
              SizedBox(height: 28),
              SettingsProfileField(
                leadIconData: CcIcons.email,
                fieldTitle: 'Email',
                fieldData: 'MattieBlooman@yahoo.com',
              ),
              SizedBox(height: 24),
              Divider(
                height: 1,
              ),
              SizedBox(height: 24),
              SettingsListTile(
                leadIconData: CcIcons.moon,
                fieldTitle: 'Dark Mode',
                tailWidget: Switch(
                  onChanged: (value) {
                    currentThemeMode = value ? ThemeMode.dark : ThemeMode.light;
                    isThemeDark = currentThemeMode == ThemeMode.dark;
                    updateTextColors();
                    globalSetState();
                  },
                  value: currentThemeMode == ThemeMode.dark,
                  activeColor: Theme.of(context).primaryColor,
                  activeTrackColor:
                      Theme.of(context).primaryColor.withOpacity(0.38),
                  inactiveThumbColor: subtleTextColor,
                  inactiveTrackColor: subtleTextColor.withOpacity(0.38),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
