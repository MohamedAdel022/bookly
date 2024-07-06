import 'package:bookly/core/utils/api.dart';
import 'package:bookly/core/utils/errors/failures.dart';

import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
   try {
  var data= await apiService.get(
       'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
  List<BookModel> books = [];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return Right(books);
} on Exception catch (e) {
  return Left(ServerFailure(message: e.toString()));
}
  
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFearuredBooks() {
    // TODO: implement fetchFearuredBooks
    throw UnimplementedError();
  }
}
