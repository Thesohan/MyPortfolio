import 'package:my_protfolio/models/project_model.dart';
import 'assets.dart';

final List<Project> projects = [
  Project(
      name: 'SharedNotice',
      image: Assets.sharedNotice,
      description:
      'SharedNotice is an information portal for SRTC students. The main aim of this app is to stay updated its user about the daily happening in the university',
      link:
      'https://github.com/Thesohan/SharedNotices'),
  Project(
      name: 'TopNotes',
      image: Assets.topnotes,
      description:
      'TopNotes is platform created for the students of NIT Uttarakhand to exchange the academic material such as notes, question papers of various subjects etc.',
      link: 'https://github.com/AndroidBoys/TopNotes'),
  Project(
      name: 'FoodHeaven',
      image: Assets.foodheaven,
      description:
      'A food delivery app. Created for a startup along with my friends',
      link: 'https://github.com/AndroidBoys/FoodHeaven'),
  Project(
      name: 'Local News Reader',
      image: Assets.local,
      description:
      'Uses Google api for authentication and News api to fetch latest news.',
      link:
      'http://play.google.com/store/apps/details?id=com.thesohan.thesohankathait.localnewsreader'),
  Project(
      name: 'ISafe',
      image: Assets.isafe,
      description: 'An initiative of Indian Road Safety Campaign and Ministry of Road Transport and Highways in association with Nehru Yuva Kendra Sangathan, Delhi Traffic Police and TRIPP (Demo).',link: 'https://github.com/Thesohan/iSafe'),
  Project(
      name: 'Make My Call ',
      image: Assets.mmc,
      description:
      'To automatically make a call on the mobile numbers fetched from the excel sheet after a particular time interval',
      link:
      'https://github.com/Thesohan/MakeMyCall'),
];