-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 19 2023 г., 18:25
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `faber`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `slug`) VALUES
(1, 0, 'uhod'),
(2, 0, 'makiyazh'),
(3, 0, 'parfumeriya'),
(4, 2, 'lizo'),
(5, 2, 'nogti'),
(6, 0, 'moda'),
(7, 0, 'zdorovye'),
(11, 2, 'guby'),
(12, 1, 'kozha');

-- --------------------------------------------------------

--
-- Структура таблицы `category_description`
--

CREATE TABLE `category_description` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `title`, `description`, `keywords`, `content`) VALUES
(1, 1, 'Уход', '', '', '<p>Каждая женщина стремится быть идеальной. Выискивает секретные рецепты красоты, спрашивает совета у старшего поколения, читает журналы о моде. Дамы &nbsp;хотят стать привлекательными не только для мужчин, но и для самих себя. Красота придает уверенности и чувства собственного достоинства.<br>Ответ на вопрос как стать красивой, ухоженной и женственной девушкой лежит на поверхности. Современная косметологическая индустрия предлагает большое количество услуг, которые помогут достичь совершенства.<br>&nbsp;</p>'),
(1, 2, 'Care', '', '', '<p>Every woman strives to be perfect. He seeks out secret recipes for beauty, asks the older generation for advice, reads fashion magazines. Ladies want to become attractive not only to men, but also to themselves. Beauty gives confidence and self-esteem.<br>The answer to the question of how to become a beautiful, well-groomed and feminine girl lies on the surface. The modern cosmetology industry offers a large number of services that will help you achieve perfection.</p>'),
(2, 1, 'Макияж', '', '', '<p>Ощущение собственной красоты и привлекательности очень важно для представительниц прекрасного пола. Ухоженная и красивая женщина – это настоящее произведение искусства. Макияж нужен для того, чтобы дополнить образ, сделать вид женщины завершенным, аккуратным, привлечь внимание. В макияже важно помнить, что главное – это сама женщина, &nbsp;и уж точно не макияж.</p>'),
(2, 2, 'Makeup', '', '', '<p>The feeling of one\'s own beauty and attractiveness is very important for the fair sex. A well-groomed and beautiful woman is a real work of art. Makeup is needed in order to complement the image, to make the woman look complete, neat, to attract attention. In makeup, it is important to remember that the main thing is the woman herself, and certainly not makeup.</p>'),
(3, 1, 'Парфюмерия', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(3, 2, 'Perfumery', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(4, 1, 'Лицо', '', '', '<p>Свое лицо, только лучше - это легкие натуральные макияжи, которые подчеркивают собственную внешность - цвет губ, оттенок глаз, освежают лицо и делают внешность более гармоничной.</p>'),
(4, 2, 'Face', '', '', '<p>Your face, only better - these are light natural make-ups that emphasize your own appearance - lip color, eye shade, refresh your face and make your appearance more harmonious.</p>'),
(5, 1, 'Ногти', '', '', '<p>Чистые и здоровые ногти визуально удлиняют руки и придают им благородный вид. А длинные, сильные ногти – предмет зависти для всех. Однако помните, что, если вы решили отрастить ногти, вам понадобятся месяцы, чтобы достичь желаемого результата.</p>'),
(5, 2, 'Nails', '', '', '<p>Clean and healthy nails visually lengthen the hands and give them a noble look. And long, strong nails are the envy of everyone. However, remember that if you decide to grow your nails, it will take you months to achieve the desired result.</p>'),
(6, 1, 'Мода', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(6, 2, 'Fashion', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(7, 1, 'Здоровье', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(7, 2, 'Health', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(11, 1, 'Губы', 'Губы', 'Губы', '<p>Макияж губ необходим для привлечения внимания к образу женщины. С правильно подобранным макияжем можно изменить имидж, подкорректировать форму и объем губ. Модницы, которые привыкли следовать тенденциям моды, экспериментируют с различными его видами и техниками. В этом случае велика вероятность того, что они смогут подобрать стильный и эффектный макияж, а также кардинально изменить свой образ. Бьюти-индустрия с каждым годом предлагает более разнообразную и устойчивую декоративную косметику, которая сделает каждую женщину яркой и привлекательной.</p>'),
(11, 2, 'Lips', 'Lips', 'Lips', '<p>Lip makeup is necessary to draw attention to the image of a woman. With the right makeup, you can change the image, correct the shape and volume of the lips. Fashionistas who are accustomed to following fashion trends are experimenting with its various types and techniques. In this case, it is highly likely that they will be able to pick up a stylish and spectacular make-up, as well as radically change their image. The beauty industry every year offers more diverse and sustainable decorative cosmetics that will make every woman bright and attractive.</p>'),
(12, 1, 'Кожа', '', '', '<p>Первое, о чем никогда нельзя забывать – это правильный уход за кожей лица и тела. Увлажнение, питание, уход за нежной кожей в области глаз, пилинги – все эти средства разработаны профессиональными косметологами, состав тщательно просчитан, а комплекс компонентов направлен на достижение максимального эффекта от процедур.</p><p>&nbsp;</p>'),
(12, 2, 'Leather', '', '', '<p>The first thing you should never forget is the right care for the skin of the face and body. Moisturizing, nutrition, care for delicate skin in the eye area, peelings - all these products are developed by professional cosmetologists, the composition is carefully calculated, and the complex of components is aimed at achieving the maximum effect from the procedures.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `download`
--

CREATE TABLE `download` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `download`
--

INSERT INTO `download` (`id`, `filename`, `original_name`) VALUES
(1, 'price.zip.RNv58WWAW1mF6ly3gTPiq4gHA00tQQ2B', 'price.zip'),
(2, 'test.txt.fdkrwrcsflytryz23423cf', 'test.txt');

-- --------------------------------------------------------

--
-- Структура таблицы `download_description`
--

CREATE TABLE `download_description` (
  `download_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `download_description`
--

INSERT INTO `download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 1, 'Файл 1'),
(1, 2, 'File 1'),
(2, 1, 'Файл 2'),
(2, 2, 'File 2');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(4) NOT NULL,
  `title` varchar(20) NOT NULL,
  `base` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `code`, `title`, `base`) VALUES
(1, 'ru', 'Русский', 1),
(2, 'en', 'English', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` double NOT NULL,
  `qty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_download`
--

CREATE TABLE `order_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `download_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `sum` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `slug`) VALUES
(1, 'o-magazine'),
(2, 'oplata-i-dostavka'),
(3, 'kontakty');

-- --------------------------------------------------------

--
-- Структура таблицы `page_description`
--

CREATE TABLE `page_description` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page_description`
--

INSERT INTO `page_description` (`page_id`, `language_id`, `title`, `content`, `keywords`, `description`) VALUES
(1, 1, 'О магазине', 'Контент страницы О магазине', NULL, NULL),
(1, 2, 'About shop', 'Content of the About shop page', NULL, NULL),
(2, 1, 'Оплата и доставка', 'Контент страницы Оплата и доставка', NULL, NULL),
(2, 2, 'Payment and delivery', 'Content of the page Payment and delivery', NULL, NULL),
(3, 1, 'Контакты', 'Контент страницы Контакты', NULL, NULL),
(3, 2, 'Contact', 'Contact page content', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `old_price` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `hit` tinyint(4) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'public/uploads/no_image.jpg',
  `is_download` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `slug`, `price`, `old_price`, `status`, `hit`, `img`, `is_download`) VALUES
(2, 4, 'ekstraobemnay-tush-dly-resniz-glam-team', 20, 0, 1, 1, '/public/uploads/images/makeup/face/23-03-19/2.jpg', 0),
(3, 5, 'lak-dla-nogtey-ekzotik-voyage', 25, 0, 1, 1, '/public/uploads/images/makeup/nails/23-03-19/3.jpg', 0),
(7, 3, 'probnik-parfumernoy-vody', 22, 0, 1, 1, '/public/uploads/images/perfumery/23-03-19/4.jpg', 0),
(8, 6, 'trusy-slipy', 23, 0, 1, 1, '/public/uploads/images/fashion/23-03-19/1001397912019_16755206261.jpg', 0),
(9, 7, 'proteinovy-kokteyl-vellness', 24, 0, 1, 1, '/public/uploads/images/health/23-03-19/1001123663929_16138271681.jpg', 0),
(18, 11, 'zhidkaya-glyancevaya-pomada-dlya-gub-lip-code-glam-team', 4, 0, 1, 0, '/public/uploads/images/makeup/lips/23-03-19/1001299758960_16432762263.jpg', 0),
(19, 12, 'dnevnoy-krem-dlya-vseh-tipov-kozhi-spf-10-verbena', 6, 0, 1, 0, '/public/uploads/images/care/leather/23-03-19/1001347568172_16774176602.jpg', 0),
(20, 12, 'krem-dnevnoy-dlya-lica-55-bloom', 4, 0, 1, 1, '/public/uploads/images/care/leather/23-03-19/1.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_description`
--

CREATE TABLE `product_description` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `exerpt` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `title`, `content`, `exerpt`, `keywords`, `description`) VALUES
(2, 1, 'Экстраобъемная тушь для ресниц Volum Glam Team', '<p>В 2 раза более объемные, яркие и пышные ресницы. Сложный эфир увлажняет поверхность ресниц, придавая им мягкость и гладкость. Синергия различных натуральных восков – пчелиного, карнаубского и канделильского – способствует кондиционированию и укреплению ресниц.</p><p>Специально разработанная гибкая силиконовая кисть придает экстраобъем и приподнимает каждую ресничку.</p><ul><li>Соблазнительный изгиб.</li><li>Идеально подходит для коротких и тонких ресниц.</li><li>Дерматологически и офтальмологически протестировано.</li></ul>', 'Объемнее – значит выразительнее! ', '', ''),
(2, 2, 'Extra volume mascara Volume Glamour Team', '<p>2x more voluminous, brighter and fuller lashes. The ester moisturizes the surface of the eyelashes, making them soft and smooth. The synergy of various natural waxes - beeswax, carnauba and candelilla - helps to condition and strengthen the eyelashes.</p><p>Specially designed flexible silicone brush adds extra volume and lifts each lash.</p><p>Seductive twist.<br>Ideal for short and thin lashes.<br>Dermatologically and ophthalmologically tested.</p>', 'Bigger means more expressive!', '', ''),
(3, 1, 'Лак для ногтей Color & Stay: Exotic Voyage', '<p><strong>Лак для ногтей Color&amp;Stay </strong>превратит твой маникюр в настоящее произведение искусства!</p><ul><li>Безопасное нанесение без вреда для ногтей, без UV-ламп.</li><li>Простое удаление покрытия с помощью обыкновенного средства для снятия лака.</li><li>Технология ФОТОИНИЦИАТОР с запатентованным олигомером, при которой покрытие затвердевает от контакта с дневным светом.</li><li>Запатентованный ГЕКСАНАЛ в составе питает и укрепляет ногти.</li><li>Усовершенствованная французская формула для стойкого маникюра с ярким блеском.</li><li>Быстросохнущее покрытие для легкого нанесения.</li><li>Стойкость лака до 6 дней.</li></ul>', 'Лак для ногтей Color&Stay превратит твой маникюр в настоящее произведение искусства!', '', ''),
(3, 2, 'Nail Polish Color & Stay: Exotic Voyage', '<p>Color&amp;Stay nail polish will turn your manicure into a real work of art!</p><p>Safe application without harm to nails, no UV lamps.<br>Easy removal of the coating with ordinary nail polish remover.<br>PHOTOINITIATOR technology with a patented oligomer, in which the coating hardens on contact with daylight.<br>The patented HEXANAL in the composition nourishes and strengthens the nails.<br>An advanced French formula for long-wearing, high-shine manicures.<br>Quick dry coating for easy application.<br>Lacquer durability up to 6 days.</p>', 'Color&Stay nail polish will turn your manicure into a real work of art!', '', ''),
(7, 1, 'Пробник парфюмерной воды для женщин Queenship femmepowerment', '<p>Мир женщин – королевство, где правит красота. Женская сила внутри нас. Мы находим в лице друг друга союзниц, дарим взаимную поддержку. Истинные властительницы мира уверены в себе и самодостаточны. Мы не соперничаем между собой – мы поправляем друг другу короны.</p><p><strong>Направление:</strong> цветочно-фруктовый аромат.</p><p>Сладость малины сменяется властными миксами розы и ревеня, терпкого грейпфрута и розового перца. Шипровый шлейф коронует композицию, раскрываясь аристократичным аккордом.</p><p><strong>Ольфакторная пирамида</strong><br>Верхние ноты: грейпфрут, малина, красные фрукты.<br>Ноты сердца: чёрная смородина, ревень, роза, жасмин, розовый перец, мох.<br>Шлейф: кедр, мускус, сандал, пачули.</p><p>Аромат создан французским парфюмером Мэри Гугенот.</p>', 'Мир женщин – королевство, где правит красота. Женская сила внутри нас. Мы находим в лице друг друга союзниц, дарим взаимную поддержку. Истинные властительницы мира уверены в себе и самодостаточны. Мы не соперничаем между собой – мы поправляем друг другу к', '', ''),
(7, 2, 'Perfume Water Sampler for women Queenship femmepowerment', '<p>The world of women is a kingdom where beauty rules. The feminine power is within us. We find allies in each other, we give mutual support. The true rulers of the world are self-confident and self-sufficient. We do not compete with each other - we correct each other\'s crowns.</p><p>Direction: floral-fruity aroma.</p><p>The sweetness of raspberry gives way to powerful mixes of rose and rhubarb, tart grapefruit and pink pepper. A chypre trail crowns the composition, revealing itself with an aristocratic accord.</p><p>Olfactory pyramid<br>Top notes: grapefruit, raspberry, red fruits.<br>Heart notes: black currant, rhubarb, rose, jasmine, pink pepper, moss.<br>Loop: cedar, musk, sandalwood, patchouli.</p><p>The fragrance was created by French perfumer Mary Huguenot.</p>', 'The world of women is a kingdom where beauty rules. The feminine power is within us. We find allies in each other, we give mutual support. The true rulers of the world are self-confident and self-sufficient. We do not compete with each other - we correct ', '', ''),
(8, 1, 'Трусы слипы с завышенной талией, цвет черный', '<p><strong>Lace Intimates&nbsp;-&nbsp;</strong>для тех, кто любит тонкое ажурное белье. Изящество кроя подчеркнет красоту, создаст ощущение хрупкости и невесомости. Модели из нежного кружева в сочетании с ультратонкой сеткой и мягкой микрофиброй создают тонкий и очень элегантный образ.</p><p><strong>Трусы c завышенной талией&nbsp;</strong>выполнены из мягкой эластичной микрофибры.</p><ul><li>Кружевная отделка.</li><li>Двухслойная деталь из сетки с бесшовными краями сзади.</li><li>Идеальный вариант для тех, кто ищет женственное белье, незаметное под облегающей одеждой.</li><li>Ластовица из 100% хлопка.</li></ul>', 'Lace Intimates - для тех, кто любит тонкое ажурное белье. Изящество кроя подчеркнет красоту, создаст ощущение хрупкости и невесомости. Модели из нежного кружева в сочетании с ультратонкой сеткой и мягкой микрофиброй создают тонкий и очень элегантный образ', '', ''),
(8, 2, 'High-waisted slip briefs, color black', '<p>Lace Intimates - for those who love thin openwork lingerie. The elegance of the cut will emphasize the beauty, create a feeling of fragility and weightlessness. Delicate lace models combined with ultra-fine mesh and soft microfiber create a delicate and very elegant look.</p><p>Briefs with a high waist are made of soft elastic microfiber.</p><p>Lace trim.<br>Double-layered mesh detail with seamless edges at the back.<br>Ideal for those who are looking for feminine lingerie, invisible under tight clothing.<br>100% cotton gusset.</p>', 'Lace Intimates - for those who love thin openwork lingerie. The elegance of the cut will emphasize the beauty, create a feeling of fragility and weightlessness. Delicate lace models combined with ultra-fine mesh and soft microfiber create a delicate and v', '', ''),
(9, 1, 'Протеиновый коктейль Wellness с коллагеном и CLA. Вкус: банан', '<p>WELNESS КОКТЕЙЛЬ – это источник силы и энергии, максимальная польза для организма с минимальным количеством калорий!</p><ul><li>Эффективный контроль веса. Диета без голода и дефицита полезных веществ.</li><li>Бьюти-эффект (COLLAGEN, CLA (конъюгированная линолевая кислота) и БИОТИН).</li><li>В составе – 53% белка.</li><li>В одной порции – 98 калорий.</li><li>Без сахара,&nbsp;без&nbsp;глютена, без ГМО.</li></ul><p>Одна порция содержит сбалансированный набор белков, жиров, углеводов, пищевых волокон, витаминов и минералов, конъюгированную линолевую кислоту, биотин и коллаген.</p><p>Такой состав обеспечивает баланс питательных веществ, улучшает состояние кожи, волос и ногтей. Благодаря коллагену, входящему в состав коктейля, кожа разглаживается, становится упругой, эластичной и увлажненной, а морщинки исчезают без следа. Кости укрепляются, улучшается состояние мышц, сухожилий и связок.</p><p>С коктейлем Faberlic Wellness легко быть в идеальной форме, оставаться здоровым и радоваться отражению в зеркале!</p><p><strong>Коллаген и биотин</strong>&nbsp;делают волосы крепкими и блестящими, препятствуют выпадению волос, снижают их ломкость. Ногти заметно укрепляются и становятся здоровее.<br><strong>Волокна клетчатки</strong>&nbsp;обеспечивают чувство насыщения, улучшают пищеварение, помогают вывести шлаки и токсины. Способствуют похудению.<br><strong>Конъюгированная линолевая кислота</strong>&nbsp;активизирует обмен веществ. Организм лучше усваивает белки, сжигает жиры и теряет вес.</p><p>&nbsp;</p>', 'WELNESS КОКТЕЙЛЬ – это источник силы и энергии, максимальная польза для организма с минимальным количеством калорий!', '', ''),
(9, 2, 'Wellness Protein Shake with Collagen and CLA. Taste: banana', '<p>WELNESS COCKTAIL is a source of strength and energy, maximum benefit for the body with a minimum amount of calories!</p><p>Effective weight control. A diet without hunger and deficiency of nutrients.<br>Beauty effect (COLLAGEN, CLA (conjugated linoleic acid) and BIOTIN).<br>Contains 53% protein.<br>One serving has 98 calories.<br>No sugar, no gluten, no GMOs.</p><p>One serving contains a balanced array of proteins, fats, carbohydrates, dietary fiber, vitamins and minerals, conjugated linoleic acid, biotin and collagen.</p><p>This composition provides a balance of nutrients, improves the condition of the skin, hair and nails. Thanks to the collagen, which is part of the cocktail, the skin is smoothed, it becomes firm, elastic and hydrated, and wrinkles disappear without a trace. Bones are strengthened, the condition of muscles, tendons and ligaments improves.</p><p>Faberlic Wellness cocktail makes it easy to be in perfect shape, stay healthy and enjoy the reflection in the mirror!</p><p>Collagen and biotin make hair strong and shiny, prevent hair loss, reduce hair breakage. Nails are noticeably stronger and healthier.<br>Fiber fibers provide a feeling of satiety, improve digestion, and help remove toxins. Promote weight loss.<br>Conjugated linoleic acid activates metabolism. The body absorbs proteins better, burns fats and loses weight.</p>', 'WELNESS COCKTAIL is a source of strength and energy, maximum benefit for the body with a minimum amount of calories!', '', ''),
(18, 1, 'Жидкая глянцевая помада для губ Lip Code Glam Team', '<p>Маленькое черное платье – синоним моды и женственности. С ним открыты все двери. Оно хорошо и для офиса, и для вечеринки. Помада Lip Code – твое маленькое черное платье. Всегда стильно. Всегда выглядит дорого. Всегда очаровывает.</p><p>&nbsp;</p>', 'Жидкая глянцевая помада для губ Lip Code – это твой пропуск и визитная карточка на любом мероприятии. Кремовая текстура, блеск и устойчивость в сочетании с комфортом.', 'Жидкая глянцевая помада для губ Lip Code Glam Team', 'Жидкая глянцевая помада для губ Lip Code Glam Team'),
(18, 2, 'Lip Code Glam Team Liquid Lipstick', '<p>The little black dress is synonymous with fashion and femininity. With him, all doors are open. It is good for both office and party. Lip Code is your little black dress. Always stylish. Always looks expensive. Always charming.</p><p>&nbsp;</p>', 'Lip Code liquid glossy lipstick is your pass and business card at any event. Creamy texture, shine and durability combined with comfort.', 'Lip Code Glam Team Liquid Lipstick', 'Lip Code Glam Team Liquid Lipstick'),
(19, 1, 'Дневной крем для всех типов кожи SPF 10 Verbena', '<p>Дневной крем для всех типов кожи подходит для ежедневного ухода.<br>Смягчает и увлажняет кожу<br>Защищает от солнечных лучей – SPF 10<br>Легкая текстура не оставляет ощущения липкости<br>Активный комплекс Vitalayer комплексно борется с 7 признаками старения: сокращает морщины, возвращает эластичность, улучшает цвет лица, восстанавливает упругость и выравнивает поверхность кожи, делает поры менее заметными, укрепляет защитный барьер кожи.<br>&nbsp;</p>', 'Verbena – серия 30+ на основе активного комплекса Vitalayer из вербены. Это средства с комфортной текстурой, которые имеют действие против 7 признаков старения. Расцветай день за днем!', '', ''),
(19, 2, 'Day cream for all skin types SPF 10 Verbena', '<p>Day cream for all skin types suitable for daily care.<br>Softens and moisturizes the skin<br>Sun protection - SPF 10<br>Light texture does not leave a sticky feeling<br>The Vitalayer active complex comprehensively fights 7 signs of aging: reduces wrinkles, restores elasticity, improves complexion, restores elasticity and evens out the surface of the skin, makes pores less visible, strengthens the skin\'s protective barrier.</p>', 'Verbena is a 30+ series based on Vitalayer active complex from verbena. These are products with a comfortable texture that work against 7 signs of aging. Bloom day by day!', '', ''),
(20, 1, 'Крем дневной для лица 55+ Bloom', '<p>Bloom – инновационная серия антивозрастного ухода за кожей лица, созданная с использованием биокапсул с активными клетками цветов.<br>Сохранить все полезные вещества и свойства растений удаётся с помощью специальных биотехнологий. Капсулы целенаправленно доставляют ценные компоненты точно в проблемные зоны и успешно решает задачи для каждого возраста.<br>Основу линейки 55+ составляют биокапсулы с активными клетками ириса, который по праву называют эликсиром молодости, ведь он повышает упругость и эластичность кожи, активизирует регенерацию клеток.<br>Крем для лица дневной 55+:<br>обеспечивает эффективный антивозрастной уход;<br>способствует сокращению морщин, оказывает омолаживающий эффект;<br>повышает плотность кожи;<br>возвращает ей естественный здоровый блеск и свежесть, заставляя кожу светиться изнутри;<br>не содержит парабенов;<br>Подходит для всех типов кожи.<br>Результат: сокращение морщин, повышение плотности кожи, естественный здоровый блеск кожи.</p>', 'Bloom – инновационная серия антивозрастного ухода за кожей лица, созданная с использованием биокапсул с активными клетками цветов.', '', ''),
(20, 2, 'Day cream for face 55+ Bloom', '<p>Bloom is an innovative series of anti-aging facial skin care created using bio-capsules with active flower cells.<br>It is possible to preserve all the useful substances and properties of plants with the help of special biotechnologies. Capsules purposefully deliver valuable components exactly to problem areas and successfully solve problems for every age.<br>The basis of the 55+ line is biocapsules with active iris cells, which is rightly called the elixir of youth, because it increases skin firmness and elasticity, activates cell regeneration.<br>Day face cream 55+:<br>provides effective anti-aging care;<br>helps to reduce wrinkles, has a rejuvenating effect;<br>increases skin density;<br>returns to her natural healthy shine and freshness, making the skin glow from the inside;<br>does not contain parabens;<br>Suitable for all skin types.<br>Result: wrinkle reduction, increased skin density, natural healthy skin glow.<br>&nbsp;</p>', 'Bloom is an innovative series of anti-aging facial skin care created using bio-capsules with active flower cells.', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `product_download`
--

CREATE TABLE `product_download` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `download_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `product_id`, `img`) VALUES
(10, 18, '/public/uploads/images/makeup/lips/23-03-19/1001127290232_15985333042.jpg'),
(11, 18, '/public/uploads/images/makeup/lips/23-03-19/1001174646040_16317054701.jpg'),
(12, 18, '/public/uploads/images/makeup/lips/23-03-19/1001205804970_16303916171.jpg'),
(13, 18, '/public/uploads/images/makeup/lips/23-03-19/1001245843592_16243428511.jpg'),
(14, 19, '/public/uploads/images/care/leather/23-03-19/1001347568172_16774176602%20(1).jpg'),
(15, 3, '/public/uploads/images/makeup/nails/23-03-19/1001245843595_16243432451.jpg'),
(16, 8, '/public/uploads/images/fashion/23-03-19/1001397912019_16755206272.jpg'),
(17, 8, '/public/uploads/images/fashion/23-03-19/1001397912019_16755206273.jpg'),
(18, 8, '/public/uploads/images/fashion/23-03-19/1001397912019_16755206284.jpg'),
(19, 8, '/public/uploads/images/fashion/23-03-19/1001397912019_16755206285.jpg'),
(20, 8, '/public/uploads/images/fashion/23-03-19/1001397912019_16755206296.jpg'),
(21, 7, '/public/uploads/images/perfumery/23-03-19/1001266688846_16687844231.jpg'),
(22, 7, '/public/uploads/images/perfumery/23-03-19/1001266688846_16784565682.jpg'),
(23, 7, '/public/uploads/images/perfumery/23-03-19/1001266688846_16784565703.jpg'),
(24, 7, '/public/uploads/images/perfumery/23-03-19/1001266688846_16784565714.jpg'),
(25, 9, '/public/uploads/images/health/23-03-19/6.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `img`) VALUES
(1, '/public/uploads/images/slider/1.jpeg'),
(2, '/public/uploads/images/slider/2.jpeg'),
(3, '/public/uploads/images/slider/3.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `address`, `role`) VALUES
(1, 'user@mail.com', '$2y$10$/9Ey.UA3E9lBj4jMEh8.xO4heQwKAyGSv/TKiQe4zU7nJKHz0T6We', 'User ', 'Some address on SPb Metro', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Индексы таблицы `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `download_description`
--
ALTER TABLE `download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_download`
--
ALTER TABLE `order_download`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `page_description`
--
ALTER TABLE `page_description`
  ADD PRIMARY KEY (`page_id`,`language_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`);

--
-- Индексы таблицы `product_download`
--
ALTER TABLE `product_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `download`
--
ALTER TABLE `download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `order_download`
--
ALTER TABLE `order_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
