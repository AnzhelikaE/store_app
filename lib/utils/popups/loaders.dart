import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kit_store_start/utils/constants/colors.dart';

class TLoaders {
  TLoaders._();
// Единый метод для отображения ошибок и успехов
  static void _show({
    required String message,
    required String title,
    required Color backgroundColor,
    required IconData icon,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: backgroundColor,
      icon: Icon(icon, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      borderRadius: 12,
      margin: const EdgeInsets.all(16),
    );
  }

  // Успешные действия (вход в систему, регистрация, etc.)
  static void successSnackbar({required String message, required String title}) {
    _show(message: message, title: title, backgroundColor: TColors.success, icon: Icons.check_circle_outline);
  }

  // Ошибки (неверный пароль, неверный email, etc.)
  static void error({required String message, required String title}) {
    _show(message: message, title: title, backgroundColor: TColors.error, icon: Icons.error_outline);
  }

  // Предупреждения (недостаточно средств, etc.)
  static void warningSnackbar({required String message, required String title}) {
    _show(message: message, title: title, backgroundColor: TColors.warning, icon: Icons.warning_amber_outlined);
  }
}
