class SettingsModel {
  int id;
  String image;
  String title;

  SettingsModel({this.id, this.image, this.title});
}

List<SettingsModel> settingsModelList = [
  SettingsModel(id: 1, image: 'assets/Icons/discover_people.png', title: 'Follow and Invite Friends'),
  SettingsModel(id: 2, image: 'assets/Icons/notification.png', title: 'Notifications'),
  SettingsModel(id: 3, image: 'assets/Icons/privacy.png', title: 'Privacy'),
  SettingsModel(id: 4, image: 'assets/Icons/security.png', title: 'Security'),
  SettingsModel(id: 5, image: 'assets/Icons/ads.png', title: 'Ads'),
  SettingsModel(id: 6, image: 'assets/Icons/account.png', title: 'Account'),
  SettingsModel(id: 7, image: 'assets/Icons/help.png', title: 'Help'),
  SettingsModel(id: 8, image: 'assets/Icons/about.png', title: 'About'),
  SettingsModel(id: 9, image: 'assets/Icons/theme.png', title: 'Theme'),
];