import 'package:fluttertoast/fluttertoast.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/enums/status.dart';

toastInfo({
  required String msg,
  required Status status,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    backgroundColor:
        status == Status.error ? AppColors.errorColor : AppColors.primaryColor,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM_LEFT,
    timeInSecForIosWeb: 6,
    webBgColor: status == Status.error
        ? 'rgba(${AppColors.errorColor.red}, ${AppColors.errorColor.green}, ${AppColors.errorColor.blue}, ${AppColors.errorColor.opacity})'
        : 'rgba(${AppColors.primaryColor.green}, ${AppColors.primaryColor.green}, ${AppColors.primaryColor.blue}, ${AppColors.primaryColor.opacity})',
  );
}
