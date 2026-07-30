// =============================================================================
// text_strings.dart — ВСЕ ТЕКСТОВЫЕ СТРОКИ ПРИЛОЖЕНИЯ
// =============================================================================
// Централизованное хранение UI-текстов. Преимущества:
//   1) Один файл для правок копирайта
//   2) Подготовка к локализации (i18n) — потом заменим на ключи переводов
//   3) Нет дублирования строк «Sign In» в 10 разных экранах
// Использование: Text(TTexts.signIn), labelText: TTexts.email
// =============================================================================

/// Все пользовательские тексты приложения T-Store в виде констант.
class TTexts {
  // ── Глобальные (общие для многих экранов) ──────────────────────────────
  static const appName = "Зримо";
  static const catalog = "Каталог";
  static const cart = "Корзина";
  static const profile = "Профиль";
  static const search = "Поиск";
  static const favorites = "Избранное";
  static const notifications = "Уведомления";
  static const seeAll = "Смотреть все";
  static const save = "Сохранить";
  static const cancel = "Отмена";
  static const close = "Закрыть";

  // ──Главная страница ──────────────────────────────────────────────────────
  static const homeGreeting = "Добрый день,";
  static const homeQuestion = "Что вам нужно сегодня?";
  static const popularProducts = "Популярные товары";
  static const promotions = "Акции и предложения";
  static const nearestSalon = "Салон рядом с вами";

  // ── Категории товаров ──────────────────────────────────────────────────────
  static const lenses = "Линзы";
  static const glasses = "Очки";
  static const appointment = "Запись";
  static const solutions = "Растворы";

  // ── Фильтры линз ────────────────────────────────────
  static const daily = "Однодневные";
  static const biweekly = "Двухнедельные";
  static const monthly = "Месячные";
  static const astigmatic = "Астигматические";
  static const colored = "Цветные";

  // ── Проверка зрения ────────────────────────────────────
  static const eyeExam = "Проверка зрения";
  static const bookAppointment = "Записаться";

  // ── Авторизация ────────────────────────────────────
  static const login = "Войти";
  static const register = "Регистрация";
  static const email = "Email";
  static const password = "Пароль";
  static const forgotPassword = "Забыли пароль?";
  static const continueText = "Продолжить";
  static const logout = "Выйти";
}
