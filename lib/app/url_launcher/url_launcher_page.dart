import 'package:flutter/material.dart';
import 'package:proximity/app/customized_widgets/custom_app_bar.dart';
import 'package:proximity/constants/proximity_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends StatelessWidget {
  const UrlLauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        documentUrl: 'https://pub.dev/packages/url_launcher',
        title: 'url_launcher',
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: ProximityColors.secondaryBlue),
          onPressed: () => _launchURL('https://github.com/mafreud/proximity'),
          child: Text('launch! 🚀🚀'),
        ),
      ),
    );
  }

  void _launchURL(String _url) async {
    final uri = Uri.parse(_url);
    await canLaunchUrl(uri) ? await launchUrl(uri) : throw 'Could not launch $_url';
  }
}
