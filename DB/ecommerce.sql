-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 09:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `name`, `description`, `price`, `gender`, `ratings`) VALUES
(1, 'T-Shirt', 'Cotton crew neck t-shirt', 19.99, 'Unisex', '4.5'),
(2, 'Jeans', 'Slim fit denim jeans', 49.99, 'Men', '4.7'),
(3, 'Jacket', 'Leather biker jacket', 199.99, 'Men', '4.8'),
(4, 'Sweater', 'Wool knit sweater', 59.99, 'Women', '4.6'),
(5, 'Dress', 'Floral print summer dress', 39.99, 'Women', '4.4'),
(6, 'Shorts', 'Casual cargo shorts', 29.99, 'Men', '4.3'),
(7, 'Suit', '2-piece business suit', 299.99, 'Men', '4.9'),
(8, 'Skirt', 'Pleated midi skirt', 49.99, 'Women', '4.5'),
(9, 'Blouse', 'Silk blouse', 79.99, 'Women', '4.8'),
(10, 'Hoodie', 'Pullover hoodie', 39.99, 'Unisex', '4.6'),
(11, 'Pants', 'Chino pants', 39.99, 'Men', '4.4'),
(12, 'Coat', 'Trench coat', 149.99, 'Women', '4.7'),
(13, 'Tank Top', 'Basic tank top', 14.99, 'Unisex', '4.2'),
(14, 'Leggings', 'High waist leggings', 24.99, 'Women', '4.3'),
(15, 'Cardigan', 'Button-down cardigan', 34.99, 'Women', '4.5');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Laptop', '14-inch laptop with Intel i7', 799.99, '4.7'),
(2, 'Tablet', '10-inch Android tablet', 299.99, '4.5'),
(3, 'Smartphone', 'Latest Android smartphone', 699.99, '4.6'),
(4, 'Smart TV', '55-inch 4K smart TV', 499.99, '4.4'),
(5, 'Headphones', 'Wireless noise-canceling headphones', 199.99, '4.3'),
(6, 'Smartwatch', 'Fitness tracking smartwatch', 149.99, '4.2'),
(7, 'Camera', 'DSLR camera with lens', 899.99, '4.8'),
(8, 'Bluetooth Speaker', 'Portable Bluetooth speaker', 79.99, '4.0'),
(9, 'Gaming Console', 'Next-gen gaming console', 499.99, '4.5'),
(10, 'E-Reader', 'E-ink e-reader', 129.99, '4.1'),
(11, 'Smart Home Hub', 'Voice-controlled smart home hub', 99.99, '4.0'),
(12, 'Drone', 'Quadcopter drone with camera', 299.99, '4.6'),
(13, 'VR Headset', 'Virtual reality headset', 399.99, '4.7'),
(14, 'External Hard Drive', '2TB external hard drive', 89.99, '4.2'),
(15, 'Wireless Router', 'High-speed wireless router', 149.99, '4.3');

-- --------------------------------------------------------

--
-- Table structure for table `footwears`
--

CREATE TABLE `footwears` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footwears`
--

INSERT INTO `footwears` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Sneakers', 'Running sneakers', 79.99, '4.5'),
(2, 'Boots', 'Leather ankle boots', 129.99, '4.7'),
(3, 'Sandals', 'Flip-flop sandals', 19.99, '4.0'),
(4, 'Heels', 'Stiletto heels', 89.99, '4.2'),
(5, 'Loafers', 'Leather loafers', 69.99, '4.4'),
(6, 'Slippers', 'Comfy house slippers', 24.99, '4.3'),
(7, 'Oxfords', 'Formal oxfords', 99.99, '4.6'),
(8, 'Ballet Flats', 'Casual ballet flats', 39.99, '4.1'),
(9, 'Running Shoes', 'Performance running shoes', 109.99, '4.8'),
(10, 'Espadrilles', 'Canvas espadrilles', 29.99, '4.0'),
(11, 'Wedges', 'Wedge sandals', 59.99, '4.3'),
(12, 'Moccasins', 'Suede moccasins', 49.99, '4.5'),
(13, 'Chukka Boots', 'Suede chukka boots', 89.99, '4.7'),
(14, 'Clogs', 'Comfortable clogs', 39.99, '4.2'),
(15, 'Chelsea Boots', 'Classic chelsea boots', 99.99, '4.6');

-- --------------------------------------------------------

--
-- Table structure for table `furnituers`
--

CREATE TABLE `furnituers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furnituers`
--

INSERT INTO `furnituers` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Sofa Set', 'Comfortable 3-seater sofa', 299.99, '4.5'),
(2, 'Dining Table', 'Wooden dining table with 6 chairs', 499.99, '4.7'),
(3, 'Office Chair', 'Ergonomic office chair', 149.99, '4.3'),
(4, 'Coffee Table', 'Modern glass coffee table', 89.99, '4.2'),
(5, 'Bookshelf', '5-tier wooden bookshelf', 129.99, '4.6'),
(6, 'Bed Frame', 'King size bed frame', 299.99, '4.4'),
(7, 'Wardrobe', '3-door wardrobe', 399.99, '4.8'),
(8, 'TV Stand', 'Wooden TV stand', 199.99, '4.1'),
(9, 'Recliner', 'Leather recliner chair', 249.99, '4.7'),
(10, 'Dresser', '6-drawer dresser', 189.99, '4.5'),
(11, 'Nightstand', '2-drawer nightstand', 79.99, '4.3'),
(12, 'Patio Set', 'Outdoor patio set with umbrella', 349.99, '4.6'),
(13, 'Bar Stool', 'Adjustable height bar stool', 59.99, '4.0'),
(14, 'Bean Bag', 'Large bean bag chair', 69.99, '4.2'),
(15, 'Accent Chair', 'Modern accent chair', 139.99, '4.4');

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Apples', 'Fresh red apples (1kg)', 2.99, '4.5'),
(2, 'Milk', 'Organic whole milk (1L)', 1.49, '4.3'),
(3, 'Bread', 'Whole grain bread', 2.49, '4.1'),
(4, 'Eggs', 'Free-range eggs (12pcs)', 3.99, '4.4'),
(5, 'Chicken Breast', 'Boneless chicken breast (500g)', 5.99, '4.2'),
(6, 'Rice', 'Basmati rice (1kg)', 4.99, '4.0'),
(7, 'Pasta', 'Italian pasta (500g)', 1.99, '4.1'),
(8, 'Olive Oil', 'Extra virgin olive oil (500ml)', 6.99, '4.6'),
(9, 'Cheese', 'Cheddar cheese (200g)', 3.49, '4.3'),
(10, 'Tomatoes', 'Fresh tomatoes (1kg)', 2.49, '4.2'),
(11, 'Bananas', 'Organic bananas (1kg)', 1.99, '4.3'),
(12, 'Orange Juice', 'Fresh orange juice (1L)', 2.99, '4.5'),
(13, 'Potatoes', 'Russet potatoes (2kg)', 3.99, '4.0'),
(14, 'Butter', 'Unsalted butter (200g)', 2.49, '4.2'),
(15, 'Yogurt', 'Greek yogurt (500g)', 3.49, '4.4');

-- --------------------------------------------------------

--
-- Table structure for table `home_appliances`
--

CREATE TABLE `home_appliances` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_appliances`
--

INSERT INTO `home_appliances` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Refrigerator', 'Double door fridge', 699.99, '4.7'),
(2, 'Washing Machine', 'Front load washing machine', 499.99, '4.6'),
(3, 'Microwave Oven', '800W microwave oven', 99.99, '4.3'),
(4, 'Air Conditioner', '1.5 ton split AC', 299.99, '4.5'),
(5, 'Vacuum Cleaner', 'Cordless vacuum cleaner', 149.99, '4.4'),
(6, 'Dishwasher', 'Built-in dishwasher', 399.99, '4.7'),
(7, 'Toaster', '2-slice toaster', 29.99, '4.0'),
(8, 'Blender', 'High-speed blender', 79.99, '4.2'),
(9, 'Coffee Maker', '12-cup coffee maker', 49.99, '4.1'),
(10, 'Water Heater', 'Instant water heater', 99.99, '4.3'),
(11, 'Air Purifier', 'HEPA air purifier', 199.99, '4.6'),
(12, 'Iron', 'Steam iron', 39.99, '4.0'),
(13, 'Electric Kettle', '1.7L electric kettle', 29.99, '4.1'),
(14, 'Slow Cooker', '6-quart slow cooker', 59.99, '4.5'),
(15, 'Food Processor', 'Multi-functional food processor', 129.99, '4.8');

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'iPhone 12', 'Apple iPhone 12 with 64GB storage', 799.99, '4.5'),
(2, 'Samsung Galaxy S21', 'Samsung Galaxy S21 with 128GB storage', 699.99, '4.3'),
(3, 'Google Pixel 6', 'Google Pixel 6 with 128GB storage', 599.99, '4.2'),
(4, 'OnePlus 9', 'OnePlus 9 with 256GB storage', 729.99, '4.4'),
(5, 'Xiaomi Mi 11', 'Xiaomi Mi 11 with 256GB storage', 749.99, '4.3'),
(6, 'Sony Xperia 5', 'Sony Xperia 5 with 128GB storage', 799.99, '4.5'),
(7, 'Oppo Find X3', 'Oppo Find X3 with 256GB storage', 699.99, '4.1'),
(8, 'Huawei P40', 'Huawei P40 with 128GB storage', 649.99, '4.0'),
(9, 'Nokia 8.3', 'Nokia 8.3 with 128GB storage', 499.99, '3.9'),
(10, 'LG Velvet', 'LG Velvet with 128GB storage', 599.99, '4.0'),
(11, 'Motorola Edge', 'Motorola Edge with 256GB storage', 699.99, '4.2'),
(12, 'Asus ROG Phone 5', 'Asus ROG Phone 5 with 256GB storage', 999.99, '4.6'),
(13, 'Realme GT', 'Realme GT with 256GB storage', 499.99, '4.1'),
(14, 'Vivo X60', 'Vivo X60 with 256GB storage', 649.99, '4.3'),
(15, 'Lenovo Legion Duel 2', 'Lenovo Legion Duel 2 with 512GB storage', 1199.99, '4.8');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Soccer Ball', 'Official size 5 soccer ball', 29.99, '4.5'),
(2, 'Basketball', 'Indoor/outdoor basketball', 24.99, '4.2'),
(3, 'Tennis Racket', 'Lightweight tennis racket', 59.99, '4.8'),
(4, 'Yoga Mat', 'Non-slip yoga mat', 19.99, '4.0'),
(5, 'Dumbbells', 'Set of 2 dumbbells (10kg each)', 49.99, '4.3'),
(6, 'Running Shoes', 'Performance running shoes', 89.99, '4.7'),
(7, 'Swim Goggles', 'Anti-fog swim goggles', 14.99, '4.1'),
(8, 'Baseball Glove', 'Leather baseball glove', 59.99, '4.4'),
(9, 'Golf Clubs', 'Set of 14 golf clubs', 499.99, '4.9'),
(10, 'Cricket Bat', 'Professional cricket bat', 79.99, '4.6'),
(11, 'Hockey Stick', 'Carbon fiber hockey stick', 99.99, '4.2'),
(12, 'Boxing Gloves', 'Leather boxing gloves', 39.99, '4.3'),
(13, 'Fishing Rod', 'Carbon fiber fishing rod', 89.99, '4.5'),
(14, 'Camping Tent', '4-person camping tent', 149.99, '4.8'),
(15, 'Skateboard', 'Complete skateboard', 59.99, '4.6');

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toys`
--

INSERT INTO `toys` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Action Figure', 'Superhero action figure', 14.99, '4.2'),
(2, 'Dollhouse', 'Wooden dollhouse with furniture', 99.99, '4.5'),
(3, 'Puzzle', '1000-piece jigsaw puzzle', 19.99, '4.0'),
(4, 'Board Game', 'Classic strategy board game', 39.99, '4.1'),
(5, 'Lego Set', 'Building block lego set', 59.99, '4.3'),
(6, 'RC Car', 'Remote control car', 49.99, '4.0'),
(7, 'Stuffed Animal', 'Large teddy bear', 29.99, '3.9'),
(8, 'Toy Train', 'Electric toy train set', 89.99, '4.2'),
(9, 'Doll', 'Fashion doll with accessories', 24.99, '3.8'),
(10, 'Play Kitchen', 'Childrens play kitchen set', 129.99, '4.6'),
(11, 'Action Playset', 'Adventure action playset', 39.99, '4.1'),
(12, 'Educational Toy', 'STEM learning kit', 49.99, '4.0'),
(13, 'Ride-On Toy', 'Kids ride-on car', 199.99, '4.7'),
(14, 'Musical Toy', 'Toy musical keyboard', 34.99, '4.0'),
(15, 'Art Set', 'Complete kids art set', 19.99, '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `watches`
--

CREATE TABLE `watches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watches`
--

INSERT INTO `watches` (`id`, `name`, `description`, `price`, `ratings`) VALUES
(1, 'Analog Watch', 'Classic analog wristwatch', 99.99, '4.3'),
(2, 'Digital Watch', 'LED digital watch', 49.99, '4.1'),
(3, 'Smartwatch', 'Fitness tracking smartwatch', 199.99, '4.5'),
(4, 'Chronograph Watch', 'Chronograph sports watch', 149.99, '4.4'),
(5, 'Dress Watch', 'Elegant dress watch', 199.99, '4.6'),
(6, 'Diving Watch', 'Waterproof diving watch', 249.99, '4.7'),
(7, 'Aviator Watch', 'Pilot\'s aviator watch', 299.99, '4.8'),
(8, 'Skeleton Watch', 'Mechanical skeleton watch', 399.99, '4.9'),
(9, 'Field Watch', 'Durable field watch', 99.99, '4.2'),
(10, 'Hybrid Smartwatch', 'Hybrid analog smartwatch', 179.99, '4.3'),
(11, 'Luxury Watch', 'Luxury gold watch', 999.99, '4.9'),
(12, 'Sports Watch', 'Digital sports watch', 89.99, '4.0'),
(13, 'Tactical Watch', 'Military tactical watch', 149.99, '4.2'),
(14, 'Pocket Watch', 'Vintage pocket watch', 59.99, '3.9'),
(15, 'Fitness Tracker', 'Advanced fitness tracker', 129.99, '4.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footwears`
--
ALTER TABLE `footwears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnituers`
--
ALTER TABLE `furnituers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groceries`
--
ALTER TABLE `groceries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_appliances`
--
ALTER TABLE `home_appliances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watches`
--
ALTER TABLE `watches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
