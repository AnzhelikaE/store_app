
import 'package:flutter/material.dart';

class TColors{
  /// Основной цвет бренда
  static const primary = Color(0xFF2F80FF); // Основной цвет бренда
  static const primaryDark = Color(0xFF1565F7); 
  static const primaryLight = Color(0xFF6EA8FF);
  static const primarySoft = Color(0xFFEAF3FF);

  // Цвета текста
  static const textPrimary = Color(0xFF1A1A1A); // Заголовки, основные тексты
  static const textSecondary = Color(0xFF6B7280); // Вторичный текст
  static const textTertiary = Color(0xFFA0A7B4); // Неактивный текст
  static const textWhite = Color(0xFFFFFFFF); // Белый текст на кнопках

  // Цвета фона
  static const background = Color(0xFFF5F6F8); // Основной фон экрана
   
  // Цвета границ
  static const border = Color(0xFFE5E7EB); // Границы карточек, блоков секции и т.д.

  // Цвета контейнеров(карточки, блоки секции и т.д.)
  static const surface = Color(0xFFFFFFFF); // Фон карточек блоков секции и т.д.
  static const appointmentCard = Color(0xFFF2F7FF); // Фон записи на прием
  static const categoryCard = Color(0xFFFFFFFF); // Фон категорий товаров

  // Цвета кнопок
  static const buttonPrimary = Color(0xFF2F80FF); // Основная кнопка
  static const buttonPrimaryPressed = Color(0xFF1565F7); // Нажатая кнопка
  static const buttonDisabled = Color(0xFFD1D5DB); // Неактивная кнопка
  static const buttonLight = Color(0xFFFFFFFF); //Белая кнопка на баннере

  // Цвета иконок
  static const iconPrimary = Color(0xFF2F80FF); // Основная иконка
  static const iconSecondary = Color(0xFF9CA3AF); // Неактивная иконка
  static const iconFavorite = Color(0xFFD1D5DB); // Иконка избранного

  // Цвета рейтинга
  static const star = Color(0xFFFFC940); // Звезды рейтинга

  // Цвет товара
  static const price = Color(0xFF111827); 

  // Цвета индикаторов
  static const filterActive = Color(0xFF2F80FF); // Активный фильтр
  static const indicatorInactive = Color(0xFFD9E2F2); // Неактивный фильтр

  // Цвета статусов, ошибок, успехов, предупрждений
  static const success = Color(0xFF22C55E); //Успех
  static const warning = Color(0xFFF59E0B); //Предупреждение
  static const error = Color(0xFFEF4444); //Ошибка

  // изучить принципы  SOLID
}