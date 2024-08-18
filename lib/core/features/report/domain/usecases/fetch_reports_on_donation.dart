import 'package:fpdart/fpdart.dart';
import 'package:myapp/core/error/failure.dart';
import 'package:myapp/core/features/report/domain/entities/report.dart';

import 'package:myapp/core/features/report/domain/repository/report_repository.dart';
import 'package:myapp/core/usecase/usecase.dart';

class FetchReportsOnDonation implements Usecase<List<Report>, String> {
  final ReportRepository reportRepositpry;

  FetchReportsOnDonation(this.reportRepositpry);
  @override
  Future<Either<Failure, List<Report>>> call(String params) async {
    return await reportRepositpry.fetchDonationReports(params);
  }
}
