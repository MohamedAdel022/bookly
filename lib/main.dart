import 'package:bookly/core/utils/api.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  HomeRepoImp homeRepoImp = HomeRepoImp(apiService: ApiService(Dio()));
  homeRepoImp.fetchNewestBooks();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Bookly',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimeryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
