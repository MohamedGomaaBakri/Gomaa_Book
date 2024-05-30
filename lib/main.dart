import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gomaabook/constant.dart';
import 'package:gomaabook/core/utils/api_request.dart';
import 'package:gomaabook/features/home/data/repos/home_repo.dart';
import 'package:gomaabook/features/home/data/repos/home_repo_impl.dart';
import 'package:gomaabook/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_cubit_cubit.dart';
import 'package:gomaabook/features/home/presentation/view_models/featured_books_cubit/featuredbookscubit_cubit.dart';
import 'package:gomaabook/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const GomaaBookApp());
}

class GomaaBookApp extends StatelessWidget {
  const GomaaBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedbookscubitCubit(
            HomeRepoImpl(
              ApiRequest(
                Dio(),
              ),
            ),
          )..fetchfeaturedbooks(),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubitCubit(
            HomeRepoImpl(
              ApiRequest(
                Dio(),
              ),
            ),
          ),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        home: const SplashView(),
      ),
    );
  }
}
