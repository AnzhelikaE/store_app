// =============================================================================
// sizes.dart — СИСТЕМА РАЗМЕРОВ И ОТСТУПОВ
// =============================================================================
// Единая шкала размеров для всего UI. Вместо «на глаз» ставим TSizes.md,
// и все экраны выглядят согласованно. Основано на 4px grid (xs=4, sm=8...).
// =============================================================================

/// Константы размеров для отступов, иконок, шрифтов, кнопок и компонентов.
class TSizes {
// ── Отступы  ─────────────────────────────────
static const double xs = 4;
static const double sm = 8;
static const double md = 16;
static const double lg = 24;
static const double xl = 32;
static const double  xxl = 64;


// ── Размеры иконок ─────────────────────────────────────────────────────
static const double iconXs = 12;
static const double iconSm = 16;
static const double iconMd = 24;
static const double iconLg = 32;


// ── Размеры шрифтов ────────────────────────────────────────────────────
static const double fontSizeSm = 12;
static const double fontSizeMd = 16;
static const double fontSizeLg = 18;
  

// ── Скругление углов ────────────────────────────────────────────────────
static const double radiusSm = 4;
static const double radiusMd = 8;
static const double radiusLg = 12;


// Баннеры главной страницы ────────────────────────────────────────────────
static const double homeBannerHeight = 160;
static const double homeBannerRadius = 20;
  

// -- Размеры кнопок ------
static const double buttonHeight = 18;
static const double buttonRadius = 12;
static const double buttonBorderWidth = 120;
static const double buttonElevation = 4;


// ----- AppBar -----
static const double appBarHeight = 56;


// Изображения  ----------------------
static const double imageThumbnailSize = 80;


// Расстояние между секциями
static const double defaultSpace = 24;
static const double spaeBtwItems = 16;
static const double spaeBtwSections = 32;


// ------ Разделитель --------
static const double dividerHeight = 1;


// Карточки товаров в каталоге ───────────────────────────────────────────────────────
static const double productImageSize = 120;
static const double productImageRadius = 16;
static const double productItemHeight = 160;


  // ------ Поля ввода ----------
static const double inputFielRadius= 12;
static const double spaceBetweenFields = 16;


// ------ Карточки ----------
static const double cardElevation =2; 
static const double cardRadiusXs = 6;
static const double cardRadiusSm = 10;
static const double cardRadiusMd = 12;
static const double cardRadiusLg = 16;

  
  // ------ Карусель изображений товаров ----------
static const double imageCarouselHeight = 200;


  // ---------- Индикатор загрузки ----------
static const double loadingIndicatorSize = 36;


  // --------- Сетка товаров -------
static const double gridViewSpacing = 16;
}

