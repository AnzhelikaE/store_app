# Зримо – Интернет-магазин оптики

Мобильное приложение для покупки контактных линз, очков и растворов с записью на проверку зрения и поиском ближайшего салона.

**Клиент:** Flutter (Android/iOS)  
**Backend / Auth:** Firebase (Authentication, Core)

---

## 📋 Содержание

- [Основные возможности](#-основные-возможности)
- [Архитектура проекта](#-архитектура-проекта)
- [Функциональность](#-функциональность)
- [Технологии](#-технологии)
- [Структура проекта](#-структура-проекта)
- [Установка и запуск](#-установка-и-запуск)
- [Firebase](#-firebase)
- [Разработка](#-разработка)

---

## ✨ Основные возможности

### 🔐 Авторизация
- Вход и регистрация через Firebase Authentication
- Восстановление пароля
- Валидация email и пароля
- Auth Gate для маршрутизации авторизованных / гостевых пользователей

### 🛍️ Каталог товаров
- Категории: линзы, очки, растворы
- Фильтрация линз (однодневные, двухнедельные, месячные, астигматические, цветные)
- Баннеры акций и популярные товары
- Поиск по каталогу

### 📅 Запись на приём
- Запись на проверку зрения
- Карточка «Салон рядом с вами»
- Уведомления о статусе записи

### 🛒 Корзина и профиль
- Корзина покупок
- Избранное
- Личный кабинет пользователя

---

## 🏗️ Архитектура проекта

Приложение построено на **feature-first** структуре с разделением ответственности (SOLID, KISS):

- UI отделён от данных и сервисов
- Общие утилиты вынесены в `utils/`
- Переиспользуемые виджеты — в `common/`
- Работа с Firebase — через слой `data/services`

### Слои архитектуры

#### 1. **Features** (функциональные модули)

```
lib/features/
├── authentication/     # Вход, регистрация, сброс пароля
├── shop/               # Каталог, главная, категории
└── personalization/    # Профиль, настройки пользователя
```

Каждый модуль содержит:
- `screens/` — экраны UI
- `controllers/` — логика состояния (GetX)
- `models/` — модели данных фичи

#### 2. **Data Layer** (данные и сервисы)

```
lib/data/
├── repositories/       # Абстракции и реализации репозиториев
└── services/           # Firebase Auth и другие сервисы
```

#### 3. **Common & Utils** (общая инфраструктура)

```
lib/common/             # Переиспользуемые виджеты и стили
lib/utils/
├── constants/          # Цвета, размеры, тексты, пути к assets
├── theme/              # Тема Material 3 + Poppins
├── validators/         # Валидация форм
├── helpers/            # Хелперы (цены, UI)
├── popups/             # Лоадеры и snackbar
└── exeptions/          # Обработка ошибок Firebase / платформы
```

#### 4. **Presentation / DI**

```
lib/
├── app.dart            # MaterialApp, тема, home
├── main.dart           # Точка входа
├── bindings/           # GetX bindings
└── routes/             # Маршруты навигации
```

### Принципы SOLID

- **SRP** — экраны, контроллеры и сервисы отвечают за одну зону
- **OCP** — новые фичи добавляются модулями без ломки существующих
- **LSP** — реализации сервисов взаимозаменяемы через интерфейсы
- **ISP** — узкие контракты вместо «божественных» классов
- **DIP** — UI зависит от абстракций (`AuthService`), а не от Firebase напрямую

---

## 🎯 Функциональность

### 1. Авторизация (`authentication`)

| Экран | Назначение |
|-------|------------|
| `login` | Вход по email и паролю |
| `signup` | Регистрация нового пользователя |
| `forget_password` | Запрос сброса пароля |
| `reset_password_success` | Подтверждение отправки письма |
| `auch_gate` | Роутинг по статусу сессии |
| `home_screen` | Временный home после старта |

### 2. Магазин (`shop`)

| Экран | Назначение |
|-------|------------|
| `home` | Главная: приветствие, баннеры, категории, популярные товары |
| `category` | Список товаров выбранной категории |

**Категории:**
- Линзы
- Очки
- Растворы
- Запись на проверку зрения

### 3. Персонализация (`personalization`)

- Профиль пользователя
- Избранное
- Настройки аккаунта

---

## 🛠️ Технологии

### Frontend (Flutter)
- **Flutter / Dart SDK** ^3.8.1
- **State Management:** `get` ^4.7.3
- **UI:** Material Design 3
- **Шрифты:** Poppins, Coolvetica
- **Линты:** `flutter_lints` ^5.0.0

### Backend / Services
- **Firebase Core** ^4.11.0
- **Firebase Auth** ^6.5.4

### Платформы
- Android
- iOS
- (заготовки: Web, macOS, Windows, Linux)

---

## 📁 Структура проекта

```
kit_app/
├── lib/
│   ├── app.dart                              # Корневой виджет приложения
│   ├── main.dart                             # Точка входа
│   ├── firebase_options.dart                 # Конфиг Firebase (FlutterFire)
│   │
│   ├── bindings/
│   │   └── general_bindings.dart             # GetX DI
│   │
│   ├── routes/
│   │   └── routes.dart                       # Именованные маршруты
│   │
│   ├── common/                               # Общие виджеты и стили
│   │   ├── styles/
│   │   └── widgets/
│   │
│   ├── data/
│   │   ├── repositories/
│   │   │   └── authetication/
│   │   └── services/
│   │       ├── auch_serfice.dart             # Абстракция Auth
│   │       └── firebase_auch_service.dart    # Реализация Firebase Auth
│   │
│   ├── features/
│   │   ├── authentication/
│   │   │   ├── controllers/
│   │   │   ├── models/
│   │   │   └── screens/
│   │   │       ├── auch_gate/
│   │   │       ├── login/
│   │   │       ├── signup/
│   │   │       ├── forget_password/
│   │   │       └── home/
│   │   │
│   │   ├── shop/
│   │   │   ├── controllers/
│   │   │   ├── models/
│   │   │   └── screens/
│   │   │       ├── home/
│   │   │       └── category/
│   │   │
│   │   └── personalization/
│   │       ├── controllers/
│   │       ├── models/
│   │       └── screens/
│   │
│   ├── localizations/                        # Локализация (в развитии)
│   │
│   └── utils/
│       ├── constants/                        # colors, sizes, texts, images…
│       ├── theme/                            # Тема и widget themes
│       ├── validators/
│       ├── helpers/
│       ├── popups/
│       ├── http/
│       ├── device/
│       ├── formatters/
│       ├── logging/
│       ├── local_storage/
│       └── exeptions/
│
├── assets/                                   # Логотипы, иконки, изображения, шрифты
├── android/ / ios/                           # Нативные проекты
├── firebase.json                             # FlutterFire конфиг
├── pubspec.yaml
└── README.md
```

---

## 🚀 Установка и запуск

### Требования

- **Flutter SDK** >= 3.8.1
- **Dart SDK** >= 3.8.1
- **Xcode** (для iOS, только macOS)
- **Android Studio / SDK** (для Android)
- **Firebase-проект** (уже подключён: `kit-store-start-ed4aa`)
- **Git**

### 1. Клонирование репозитория

```bash
git clone https://github.com/AnzhelikaE/store_app.git
cd store_app
```

### 2. Установка зависимостей

```bash
flutter pub get
```

> **Важно:** в `pubspec.yaml` пути к assets должны указывать на папку `assets/`.  
> Если ресурсы лежат в `assets 16.15.52/`, переименуйте/скопируйте её в `assets/` либо поправьте пути в `pubspec.yaml`.

### 3. Firebase

Конфигурация уже сгенерирована через FlutterFire CLI:
- `lib/firebase_options.dart`
- `android/app/google-services.json`
- `ios/Runner/GoogleService-Info.plist`
- `firebase.json`

Инициализация в `main.dart` (после подключения):

```dart
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());
```

### 4. Запуск приложения

```bash
# Список устройств
flutter devices

# Android
flutter run

# iOS (macOS)
flutter run -d ios

# Конкретное устройство
flutter run -d <device-id>
```

---

## 🔥 Firebase

### Подключённые сервисы

| Сервис | Статус | Назначение |
|--------|--------|------------|
| Firebase Core | ✅ | Инициализация SDK |
| Firebase Auth | ✅ | Email/password вход и регистрация |

### Проект

- **Project ID:** `kit-store-start-ed4aa`
- Платформы: Android, iOS, macOS, Web, Windows

### Планируемые сервисы

- [ ] Cloud Firestore — каталог, заказы, профиль
- [ ] Firebase Storage — изображения товаров
- [ ] Cloud Messaging — push-уведомления
- [ ] Analytics — аналитика поведения

---

## 💻 Разработка

### Стиль кода

- `flutter_lints` ^5.0.0
- Форматирование: `dart format`
- Именование констант: префикс `T` (`TColors`, `TTexts`, `TImages`, `TSizes`)

### Полезные команды

```bash
# Анализ
flutter analyze

# Форматирование
dart format lib/

# Тесты
flutter test

# Сборка Android
flutter build apk --release
flutter build appbundle --release

# Сборка iOS
flutter build ios --release
```

### Hot Reload

- **VS Code / Cursor:** `Cmd+S` / Hot Reload
- **Терминал:** `r` в консоли Flutter, `R` — Hot Restart

---

## 📝 Особенности реализации

1. **Централизованные тексты** — все UI-строки в `TTexts` (подготовка к i18n)
2. **Дизайн-токены** — цвета, отступы и типографика в `utils/constants`
3. **Тема** — Material 3 + шрифт Poppins
4. **GetX** — навигация, DI (`bindings`) и контроллеры фич
5. **Абстракция Auth** — UI не завязан напрямую на Firebase SDK

### Возможные улучшения

- [ ] Полноценный каталог с фильтрами и карточкой товара
- [ ] Корзина и оформление заказа
- [ ] Онлайн-запись на проверку зрения
- [ ] Карта салонов / «салон рядом»
- [ ] Избранное и история заказов
- [ ] Локализация (ru / en)
- [ ] Тёмная тема
- [ ] Push-уведомления о статусе заказа и записи

---

## 📄 Лицензия

Проект для учебного / коммерческого использования. Уточните лицензию у владельца репозитория.
