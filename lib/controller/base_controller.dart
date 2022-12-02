import 'package:flutter/cupertino.dart';
// import 'package:littleswanpreschool/Helper/bottom_sheet_helper.dart';
// import 'package:littleswanpreschool/Helper/dialog_helper.dart';
// import 'package:littleswanpreschool/Services/app_exception.dart';

import '../app_exception.dart';
import '../dialog_helper.dart';

class BaseController {
  void handleError(error) {
    hideLoading();
    if (error is BadRequestException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message!);
    } else if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message!);
    } else if (error is ApiNotRespondingException) {
      DialogHelper.showErrorDialog(
          description: 'Oops! It took longer to respond.');
    }
  }

  showLoading([String? message]) {
    DialogHelper.showLoading(message);
  }

  hideLoading() {
    DialogHelper.hideLoading();
  }

}