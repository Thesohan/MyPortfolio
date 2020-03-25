import 'package:my_protfolio/models/project_model.dart';
import 'assets.dart';

final List<Project> projects = [
  Project(
      name: 'SharedNotice',
      image: Assets.sharedNotice,
      description:
      'Sharednotice is an information portal for SRTC students; This is an information portal of SRTC student, And the main aim of this app is to update its user related to daily happening in the university',
      link:
      'https://github.com/Thesohan/SharedNotices'),
  Project(
      name: 'TopNotes',
      image: Assets.topnotes,
      description:
      'roject descriptionTopNotes is an educational platform created for the students of NIT Uttarakhand to exchange the academic material such as notes, question papers of various subjects for good results.',
      link: 'https://github.com/AndroidBoys/TopNotes'),
  Project(
      name: 'FoodHeaven',
      image: Assets.foodheaven,
      description:
      'A food delivery app.',
      link: 'https://github.com/AndroidBoys/FoodHeaven'),
  Project(
      name: 'Local News Reader',
      image: Assets.local,
      description:
      'Google api in order to authenticate user via gmail. News api to fetch latest news. Apart from this app allows user to publish his own news and share the news among all the user',
      link:
      'http://play.google.com/store/apps/details?id=com.thesohan.thesohankathait.localnewsreader'),
  Project(
      name: 'ISafe',
      image: Assets.isafe,
      description: 'It is an initiative of Indian Road Safety Campaign and Ministry of Road Transport and Highways in association with Nehru Yuva Kendra Sangathan, Delhi Traffic Police and TRIPP, IIT Delhi held for colleges all across India.'
  ,link: 'https://github.com/Thesohan/iSafe'),
  Project(
      name: 'Make My Call ',
      image: Assets.mmc,
      description:
      'TO AUTOMATICALLY CALL THE MOBILE NUMBERS THRU MOBILE SIMCARD ONE BY ONE AND MAKE A CALL TO NEXT NUMBER IN EXCEL SHEET IN A PERTICULAR TIME INTERVAL.',
      link:
      'https://github.com/Thesohan/MakeMyCall'),
];