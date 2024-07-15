-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 04:32 PM
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
-- Stand-in structure for view `all_products`
-- (See below for the actual view)
--
CREATE TABLE `all_products` (
`category` varchar(11)
,`id` int(11)
,`name` varchar(255)
,`description` mediumtext
,`price` decimal(10,2)
,`ratings` varchar(5)
,`images` varchar(1500)
);

-- --------------------------------------------------------

--
-- Table structure for table `appliances`
--

CREATE TABLE `appliances` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appliances`
--

INSERT INTO `appliances` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Refrigerator', 'Double door fridge', 18000.00, '4.7', 'https://image.made-in-china.com/2f0j00hUFfGIWPqCgp/Side-by-Side-Double-Door-Refrigerator-No-Frost-Fridge-with-Ice-Maker.webp'),
(2, 'Washing Machine', 'Front load washing machine', 20000.00, '4.6', 'https://m.media-amazon.com/images/I/51igvNDFZeL._AC_UF1000,1000_QL80_.jpg'),
(3, 'Microwave Oven', '800W microwave oven', 7000.00, '4.3', 'https://res.cloudinary.com/sharp-consumer-eu/image/fetch/w_1100,f_auto,q_auto/https://s3.infra.brandquad.io/accounts-media/SHRP/DAM/origin/5a23fb26-685f-11ea-b0f2-3ea14acccbd3.jpg'),
(4, 'Air Conditioner', '1.5 ton split AC', 31000.00, '4.5', 'https://www.jiomart.com/images/product/original/581110663/lloyd-1-5-ton-5-star-wifi-inverter-split-ac-gls18v5fwcxv-4-way-swing-golden-fins-evaporator-coils-100-copper-2024-launch-digital-o581110663-p607715659-2-202402021710.jpeg?im=Resize=(420,420)'),
(5, 'Vacuum Cleaner', 'Cordless vacuum cleaner', 6000.00, '4.4', 'https://images.philips.com/is/image/philipsconsumer/vrs_5f84f3e82b5eb0cfb83ba03f690fca45925b1f01?fit=fit&hei=300&wid=250&$jpglarge$'),
(6, 'Dishwasher', 'Built-in dishwasher', 65000.00, '4.7', 'https://glenindia.com/cdn/shop/products/13_c59814de-f7f4-4aa7-90dc-442236397361_700x700.jpg?v=1633421377'),
(7, 'Toaster', '2-slice toaster', 2000.00, '4.0', 'https://images-cdn.ubuy.co.in/654303df7d9a4319292aae3b-hamilton-beach-2-slice-toaster.jpg'),
(8, 'Blender', 'High-speed blender', 8000.00, '4.2', 'https://images-cdn.ubuy.co.in/64c1025228807b394c51e537-ninja-twisti-high-speed-blender.jpg'),
(9, 'Coffee Maker', '12-cup coffee maker', 2700.00, '4.1', 'https://appliancesblackanddecker.in/cdn/shop/files/BXCM1201IN_2.webp?v=1689407531&width=1445'),
(10, 'Water Heater', 'Instant water heater', 3000.00, '4.3', 'https://faberindia.com/cdn/shop/products/FWGINSTA3L.jpg?v=1658921404'),
(11, 'Air Purifier', 'HEPA air purifier', 4500.00, '4.6', 'https://m.media-amazon.com/images/I/61edPHS+x-L.jpg'),
(12, 'Iron', 'Steam iron', 999.00, '4.0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn8Y5unvYUiuM0CyBgYg_Ne5X0cL-VbCIe5g&s'),
(13, 'Electric Kettle', '1.7L electric kettle', 799.00, '4.1', 'https://khuranasmart.com/media/2021/11/Bajaj-Majesty-KTX-15-1.7L-Electric-Kettle1.jpg'),
(14, 'Slow Cooker', '6-quart slow cooker', 7500.00, '4.5', 'https://m.media-amazon.com/images/I/81XW3jujTDL.jpg'),
(15, 'Food Processor', 'Multi-functional food processor', 8700.00, '4.8', 'https://m.media-amazon.com/images/I/81N-TfwA14L._AC_UF894,1000_QL80_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `voucher` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `name`, `email`, `country`, `city`, `pincode`, `mobile`, `address`, `voucher`) VALUES
(0, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 0, 'undefined', 'undefined'),
(1, 'aa', 'aaa', 'india', 'rnr', '581115', 1234567890, 'yghjHBhdavsdh', 'hsdfigrighj'),
(2, 'aa', 'aaa', 'india', 'rnr', '581115', 1234567890, 'yghjHBhdavsdh', 'hsdfigrighj'),
(3, 'aa', 'aa@gmail.com', 'india', 'rnr', '581115', 1234567890, 'yghjHBhdavsdh', 'hsdfigrighj'),
(4, 'aa', 'aa@gmail.com', 'india', 'rnr', '581115', 1234567890, 'yghjHBhdavsdh', 'hsdfigrighj'),
(5, 'anu', 'anu@gmail.com', 'india', 'ranebennur', '581115', 987654321, 'hfdryfdfkjlkhk', 'khbhgftfj'),
(6, 'anu', 'anu@gmail.com', 'india', 'ranebennur', '581115', 987654321, 'hfdryfdfkjlkhk', 'khbhgftfj'),
(7, 'amit', 'amit@gmail.com', 'hffrn', 'hvsyftyugui', '789005', 2147483647, 'jbyrtykhjukl', 'hjvtdxfrghj'),
(8, 'gvhbjnk', 'a@gmail.com', 'fgvhnj', 'cghj', 'vgbhnj', 0, 'cfgvhnjk', 'rfyghj');

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
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `name`, `description`, `price`, `gender`, `ratings`, `images`) VALUES
(1, 'T-Shirt', 'Cotton crew neck t-shirt', 399.00, 'Unisex', '4.5', 'https://img.tatacliq.com/images/i13/437Wx649H/MP000000018915491_437Wx649H_202308252248521.jpeg'),
(2, 'Jeans', 'Slim fit denim jeans', 699.00, 'Men', '4.7', 'https://assets.ajio.com/medias/sys_master/root/20230524/shT2/646e3154d55b7d0c63d62212/-473Wx593H-460789301-blue-MODEL.jpg'),
(3, 'Jacket', 'Leather biker jacket', 1999.00, 'Men', '4.8', 'https://assets.ajio.com/medias/sys_master/root/20240507/6bIT/66392fa116fd2c6e6aedfd1d/-473Wx593H-467306859-black-MODEL.jpg'),
(4, 'Sweater', 'Wool knit sweater', 899.00, 'Women', '4.6', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTobAR5FHeRCWQfJLB9hklEAYlDraWE0e5NuDpEorphs8JG17pLAp_Sbf_33q2V0ofbyec&usqp=CAU'),
(5, 'Dress', 'Floral print summer dress', 899.00, 'Women', '4.4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBTGJkGoqIOM1ogAlREgzznUMv0AIAs77IcJ7dYaaFkpCQXLsa86rwcuyFffMxN0mxpM0&usqp=CAU'),
(6, 'Shorts', 'Casual cargo shorts', 550.00, 'Men', '4.3', 'https://assets.ajio.com/medias/sys_master/root/20230621/jHRz/6492b5c742f9e729d76dcf82/-473Wx593H-464068464-green-MODEL.jpg'),
(7, 'Suit', '2-piece business suit', 4410.00, 'Men', '4.9', 'https://image.made-in-china.com/202f0j00ihpcIYvMrjod/Men-s-Suit-Trousers-New-Simple-Comfortable-Solid-Color-Men-s-Suit-Two-Piece-Business-Suit-for-Men.webp'),
(8, 'Skirt', 'Pleated midi skirt', 499.00, 'Women', '4.5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsfIArJMqfgGrwW-zqpOvVAD1lCiRtzvrguA&s'),
(9, 'Blouse', 'Silk blouse', 1999.00, 'Women', '4.8', 'https://me99.in/wp-content/uploads/2023/12/Yellow-Wedding-Wear-Silk-Blouse-With-Sequence-Work-1.jpg'),
(10, 'Hoodie', 'Pullover hoodie', 1200.00, 'Unisex', '4.6', 'https://image.spreadshirtmedia.net/image-server/v1/products/T20A648PA5098PT17X118Y16D182758730W11218H9969/views/1,width=550,height=550,appearanceId=648,backgroundColor=F2F2F2,modelId=5627,crop=list/han-yeah-mens-premium-hoodie.jpg'),
(11, 'Pants', 'Chino pants', 750.00, 'Men', '4.4', 'https://assets.ajio.com/medias/sys_master/root/20240308/RcU2/65eb2a5d05ac7d77bba28d11/-473Wx593H-460259760-green-MODEL.jpg'),
(12, 'Coat', 'Trench coat', 1999.00, 'Women', '4.7', 'https://i.ebayimg.com/images/g/P9MAAOSwrcBiyDhn/s-l1200.webp'),
(13, 'Tank Top', 'Basic tank top', 350.00, 'Unisex', '4.2', 'https://assets.ajio.com/medias/sys_master/root/20240703/gjsJ/66850a3f6f60443f31358bf6/-473Wx593H-465507028-yellow-MODEL3.jpg'),
(14, 'Leggings', 'High waist leggings', 399.00, 'Women', '4.3', 'https://c.bflcdn.com/t_pm/f_auto,q_auto/products/23/12/5904841823444_BTM_3.JPG'),
(15, 'Cardigan', 'Button-down cardigan', 1200.00, 'Women', '4.5', 'https://assets.ajio.com/medias/sys_master/root/20240628/Pr5H/667e10c96f60443f31dc2b28/-473Wx593H-465144066-black-MODEL.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Laptop', '14-inch laptop with Intel i7', 75000.00, '4.7', 'https://www.reliancedigital.in/medias/Dell-Ins-Notebook-5430-493838556-i-1-1200Wx1200H-300Wx300H?context=bWFzdGVyfGltYWdlc3w0NDE1OHxpbWFnZS9qcGVnfGltYWdlcy9oYWYvaDMyLzEwMDQ4MTc4NTIwMDk0LmpwZ3w1NmIwZmYzYTQ5NGJkMWU2ODA5YzIzMGEwNTQyMmIyZDllMzgyZDI4MDRlNmQ1YTU5OTcwZGUxZDZiZGM4ZmM1'),
(2, 'Tablet', '10-inch Android tablet', 12000.00, '4.5', 'https://m.media-amazon.com/images/I/61jPn6wyKhL._AC_UF1000,1000_QL80_.jpg'),
(3, 'Smartphone', 'Latest Android smartphone', 25000.00, '4.6', 'https://imgeng.jagran.com/images/2023/feb/41676445389106.jpg'),
(4, 'Smart TV', '55-inch 4K smart TV', 37000.00, '4.4', 'https://sathya.in/media/92347/catalog/TCL%204K%20HDR%20Google%20TV2.jpg'),
(5, 'Headphones', 'Wireless noise-canceling headphones', 3500.00, '4.3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm99TDx3ztjjYidrRktrDNquejWLRET0OISw&s'),
(6, 'Smartwatch', 'Fitness tracking smartwatch', 2500.00, '4.2', 'https://5.imimg.com/data5/UV/TK/KZ/SELLER-38159922/omnix-fitness-tracker-touch-screen-smartwatch-ip68-waterproof-with-heart-rate-monitor.jpg'),
(7, 'Camera', 'DSLR camera with lens', 136000.00, '4.8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZFEnQdbkQRAXtMKg79vdYbjL0nwO-SHz_OIgR_kz8y2icCZdc3AoY6ZmQKDJmu9T2qPs&usqp=CAU'),
(8, 'Bluetooth Speaker', 'Portable Bluetooth speaker', 750.00, '4.0', 'https://shopatsc.com/cdn/shop/files/SRS-XV500-2500x2500-1.jpg?v=1708081769'),
(9, 'Gaming Console', 'Next-gen gaming console', 48999.00, '4.5', 'https://i.pcmag.com/imagery/articles/04W0zg2PaBvY8KR7W5dgD6X-1.fit_lim.v1605025767.png'),
(10, 'E-Reader', 'E-ink e-reader', 7699.00, '4.1', 'https://qph.cf2.quoracdn.net/main-qimg-77708fa2a0d0519eadc77f9112947217-lq'),
(11, 'Smart Home Hub', 'Voice-controlled smart home hub', 2000.00, '4.0', 'https://images.ctfassets.net/8cjpn0bwx327/1lfyCALzjOokZECYjqkt1t/4b34281a33d06d2e9fd51512d33c3cb4/A_smart_home_hub_displaying_a_voice_assistant_controlling_various_devices.webp'),
(12, 'Drone', 'Quadcopter drone with camera', 1999.00, '4.6', 'https://m.media-amazon.com/images/I/51eqEwqwLtL._AC_UF1000,1000_QL80_.jpg'),
(13, 'VR Headset', 'Virtual reality headset', 26000.00, '4.7', 'https://m.media-amazon.com/images/I/51d1xo+MUYL.jpg'),
(14, 'External Hard Drive', '2TB external hard drive', 6999.00, '4.2', 'https://d2j6dbq0eux0bg.cloudfront.net/images/1107006/585164883.jpg'),
(15, 'Wireless Router', 'High-speed wireless router', 2100.00, '4.3', 'https://d1b5h9psu9yexj.cloudfront.net/42283/TP-Link-Archer-A8_20230221-193659_full.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `featuredcategories`
--

CREATE TABLE `featuredcategories` (
  `id` int(11) NOT NULL,
  `images` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featuredcategories`
--

INSERT INTO `featuredcategories` (`id`, `images`, `name`, `quantity`) VALUES
(1, 'https://t4.ftcdn.net/jpg/04/23/65/57/360_F_423655780_VSZ03nlUy0s1RP39cRWUHLj2bbWi2ebO.jpg', 'furnitures', '15 Items'),
(2, 'https://img.freepik.com/premium-photo/summer-collection-men-clothes-set-with-checkered-shirt-jeans-shoes-belt-isolated-white-background_142957-1103.jpg', 'clothes', '15 Items'),
(3, 'https://static.vecteezy.com/system/resources/previews/007/763/838/non_2x/pair-of-new-running-shoes-isolated-on-white-background-black-sneakers-breathable-fabric-sport-shoes-with-high-abrasion-rubber-outsole-footwear-of-gym-trainer-light-and-comfortable-running-shoes-photo.jpg', 'footwears', '15 Items'),
(4, 'https://st2.depositphotos.com/1001877/5813/i/950/depositphotos_58139017-stock-photo-home-appliances-set-of-household.jpg', 'appliances', '15 Items'),
(5, 'https://media.istockphoto.com/id/458620587/photo/macbook-air.jpg?s=612x612&w=0&k=20&c=ceMHCHRAsRjUJ4DCqy_zNd_tMvR0gC_wENixJCHo9eo=', 'electronics', '15 Items'),
(6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAZq6556KDGk9qClH8fGB-MTOLpn_3HrdeiA&s', 'watches', '15 Items'),
(7, 'https://img.freepik.com/premium-photo/children-s-toys-white-background_168508-619.jpg', 'toys', '15 Items'),
(8, 'https://www.pngall.com/wp-content/uploads/4/Grocery-PNG-Picture.png', 'groceries', '15 Items'),
(9, 'https://www.pngmart.com/files/15/Apple-iPhone-11-PNG-Image.png', 'mobiles', '15 Items'),
(10, 'https://media.istockphoto.com/id/146863459/photo/sports-objects.jpg?s=612x612&w=0&k=20&c=AKm_AV9Ghq5kqatAKWnzBvBmCSfr7hMjf9KvTTLtN70=', 'sports', '15 Items');

-- --------------------------------------------------------

--
-- Table structure for table `footwears`
--

CREATE TABLE `footwears` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footwears`
--

INSERT INTO `footwears` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Sneakers', 'Running sneakers', 2300.00, '4.5', 'https://m.media-amazon.com/images/I/416l+hCK6TL._AC_SY580_.jpg'),
(2, 'Boots', 'Leather ankle boots', 3500.00, '4.7', 'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2023/1/25/04c5d6b7-6bd6-4428-8535-4655475b2fab.jpg'),
(3, 'Sandals', 'Flip-flop sandals', 599.00, '4.0', 'https://i.etsystatic.com/42020760/c/2000/2000/0/289/il/02debb/5434238205/il_300x300.5434238205_p6nk.jpg'),
(4, 'Heels', 'Stiletto heels', 1999.00, '4.2', 'https://images-static.nykaa.com/media/catalog/product/9/3/9310b1eGRSVPB00006715_1.jpg'),
(5, 'Loafers', 'Leather loafers', 1650.00, '4.4', 'https://teakwoodleathers.com/cdn/shop/products/T_SH_K9_TAN_1_1080x.jpg?v=1628251476'),
(6, 'Slippers', 'Comfy house slippers', 400.00, '4.3', 'https://img.ltwebstatic.com/images3_pi/2023/10/24/f7/1698155908060b0189d11e5920f5e182ae8cfd31ac_thumbnail_720x.webp'),
(7, 'Oxfords', 'Formal oxfords', 1500.00, '4.6', 'https://cdn.anscommerce.com/image/tr:e-sharpen-01,h-822,w-940,cm-pad_resize/data/ruosh/06nov2023/1101246070_11.jpg'),
(8, 'Ballet Flats', 'Casual ballet flats', 899.00, '4.1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReq0cK-0kGezl0VzbDmD0DhEEmSKIXmXP8stSOHd3zGtJXLYkYztwY3qMIoMLgHoILmOU&usqp=CAU'),
(9, 'Running Shoes', 'Performance running shoes', 1199.00, '4.8', 'https://static-01.daraz.lk/p/d2ed8aafe4455094843e2f4199a0f226.jpg'),
(10, 'Espadrilles', 'Canvas espadrilles', 899.00, '4.0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8tCo1tv6ViEr_-n2SUxjJTYa7v_D7qKVQHA&s'),
(11, 'Wedges', 'Wedge sandals', 779.00, '4.3', 'https://img.ltwebstatic.com/images3_spmp/2023/08/01/1690861227494ecd0993fd544a01bbdc13c10ab621_thumbnail_720x.jpg'),
(12, 'Moccasins', 'Suede moccasins', 1074.00, '4.5', 'https://m.media-amazon.com/images/I/61SLtnPFO9L._AC_UY1000_.jpg'),
(13, 'Chukka Boots', 'Suede chukka boots', 1350.00, '4.7', 'https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/u/0/i/8-chukka-8-hirel-s-blue-original-imahyhyg463peht9.jpeg?q=90&crop=false'),
(14, 'Clogs', 'Comfortable clogs', 699.00, '4.2', 'https://www.jiomart.com/images/product/original/rvmpgp6vpu/red-tape-men-s-rover-comfortable-clogs-sandals-with-adjustable-back-strap-for-men-olive-green-product-images-rvmpgp6vpu-0-202304241052.jpg?im=Resize=(500,630)'),
(15, 'Chelsea Boots', 'Classic chelsea boots', 1935.00, '4.6', 'https://cdn.media.amplience.net/i/office/4350145008_md1.jpg?$newhighres$&fmt=auto&qlt=default&fmt.jpeg.interlaced=true');

-- --------------------------------------------------------

--
-- Table structure for table `furnitures`
--

CREATE TABLE `furnitures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furnitures`
--

INSERT INTO `furnitures` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Sofa Set', 'Comfortable 3-seater sofa', 7999.00, '4.5', 'https://www.godrejinterio.com/imagestore/B2C/56101502SD01789/56101502SD01789_01_1500x1500.jpg'),
(2, 'Dining Table', 'Wooden dining table with 6 chairs', 25000.00, '4.7', 'https://www.at-home.co.in/cdn/shop/products/Vera6SchairsLS.jpg?v=1664774549'),
(3, 'Office Chair', 'Ergonomic office chair', 3999.00, '4.3', 'https://images-cdn.ubuy.co.in/65ab94cdb1958655d77deb9e-mainstays-ergonomic-mesh-back-task.jpg'),
(4, 'Coffee Table', 'Modern glass coffee table', 4700.00, '4.2', 'https://m.media-amazon.com/images/I/91Bttn2sHzL._AC_UF894,1000_QL80_.jpg'),
(5, 'Bookshelf', '5-tier wooden bookshelf', 4899.00, '4.6', 'https://www.jiomart.com/images/product/original/rvbxlxejmx/jeffry-engineered-wood-5-tier-floor-standing-bookcase-bookshelf-with-5-shelves-in-living-room-office-white-d-i-y-product-images-orvbxlxejmx-p602966306-0-202307052216.jpg?im=Resize=(1000,1000)'),
(6, 'Bed Frame', 'King size bed frame', 18500.00, '4.4', 'https://www.lakdi.com/cdn/shop/products/141746112_7_800x.jpg?v=1618051261'),
(7, 'Wardrobe', '3-door wardrobe', 14000.00, '4.8', 'https://images.woodenstreet.de/image/data/wardrobes-mdf/ashley-3-door-multi-utility-wardrobe/msadd.jpg'),
(8, 'TV Stand', 'Wooden TV stand', 6000.00, '4.1', 'https://m.media-amazon.com/images/I/716XX1+ml7L._AC_UF894,1000_QL80_.jpg'),
(9, 'Recliner', 'Leather recliner chair', 16000.00, '4.7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh47ZDMv4bhtv0qYOF5Em8rFZy94hdo0M-_Q&s'),
(10, 'Dresser', '6-drawer dresser', 7900.00, '4.5', 'https://i2.wp.com/anguloconsulting.com/wp-content/uploads/2018/07/white-six-drawer-dresser-target.jpg'),
(11, 'Nightstand', '2-drawer nightstand', 3200.00, '4.3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpBUKW3u7ixQXuHy_2AHpol9NAOWEIP3JOqg&s'),
(12, 'Patio Set', 'Outdoor patio set with umbrella', 12000.00, '4.6', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLSo5LrBkHQI2JiNhGbEZdoIrkdncjW8MS6g&s'),
(13, 'Bar Stool', 'Adjustable height bar stool', 3799.00, '4.0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlOf_UXmiv7GSb0_eqw_WFlAqmD97AGm6kTA&s'),
(14, 'Bean Bag', 'Large bean bag chair', 1999.00, '4.2', 'https://m.media-amazon.com/images/I/91h6LMmBuvL._AC_UF350,350_QL80_.jpg'),
(15, 'Accent Chair', 'Modern accent chair', 10500.00, '4.4', 'https://m.media-amazon.com/images/I/71q32o2in-L.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Apples', 'Fresh red apples (1kg)', 169.00, '4.5', 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg'),
(2, 'Milk', 'Organic whole milk (1L)', 90.00, '4.3', 'https://www.bigbasket.com/media/uploads/p/l/40311259_2-akshayakalpa-organic-cow-milk.jpg'),
(3, 'Bread', 'Whole grain bread', 50.00, '4.1', 'https://lartizanph.com/cdn/shop/products/100_Wholegrainloaf3_3624x.jpg?v=1592303889'),
(4, 'Eggs', 'Free-range eggs (12pcs)', 120.00, '4.4', 'https://dusun.b-cdn.net/wp-content/uploads/2019/12/Free-Range-Eggs-12pcs.jpg'),
(5, 'Chicken Breast', 'Boneless chicken breast (500g)', 230.00, '4.2', 'https://totalfoods.in/static/uploads/product_image/Frozen_Chicken_Breast_Boneless__Frozen_32922565.jpg'),
(6, 'Rice', 'Basmati rice (1kg)', 202.00, '4.0', 'https://www.bigbasket.com/media/uploads/p/l/243337_2-india-gate-basmati-rice-tibar.jpg'),
(7, 'Pasta', 'Italian pasta (500g)', 150.00, '4.1', 'https://www.bigbasket.com/media/uploads/p/l/40264963_1-balian-italian-pasta-chefferi-rigate-durum-wheat-100-sooji-rich-in-dietary-fibre.jpg'),
(8, 'Olive Oil', 'Extra virgin olive oil (500ml)', 780.00, '4.6', 'https://m.media-amazon.com/images/I/61bhHDDvqzL.jpg'),
(9, 'Cheese', 'Cheddar cheese (200g)', 125.00, '4.3', 'https://m.media-amazon.com/images/I/71kjcWoBCvL._AC_UF1000,1000_QL80_.jpg'),
(10, 'Tomatoes', 'Fresh tomatoes (1kg)', 50.00, '4.2', 'https://m.media-amazon.com/images/I/61ZJhcdG7LL._AC_UF1000,1000_QL80_.jpg'),
(11, 'Bananas', 'Organic bananas (1kg)', 60.00, '4.3', 'https://images-cdn.ubuy.co.in/650c519f6058624e4066f751-marketside-fresh-organic-bananas-bunch.jpg'),
(12, 'Orange Juice', 'Fresh orange juice (1L)', 99.00, '4.5', 'https://www.jiomart.com/images/product/original/490001977/b-natural-orange-juice-1-l-product-images-o490001977-p590108362-0-202211091929.jpg?im=Resize=(1000,1000)'),
(13, 'Potatoes', 'Russet potatoes (2kg)', 40.00, '4.0', 'https://media.post.rvohealth.io/wp-content/uploads/2020/09/AN440-Potatoes-732x549-thumb-732x549.jpg'),
(14, 'Butter', 'Unsalted butter (200g)', 110.00, '4.2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyDZ_dHIzeerUn6IZU8Uo_S2g8SCit4MOcg&s'),
(15, 'Yogurt', 'Greek yogurt (500g)', 80.00, '4.4', 'https://m.media-amazon.com/images/I/51gc4bxCBuL.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(2) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'aa', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'iPhone 12', 'Apple iPhone 12 with 64GB storage', 39900.00, '4.5', 'https://images-cdn.ubuy.co.in/662d6be0361287112a789e58-pre-owned-apple-iphone-12-carrier.jpg'),
(2, 'Samsung Galaxy S21', 'Samsung Galaxy S21 with 128GB storage', 28000.00, '4.3', 'https://m.media-amazon.com/images/I/91ZgUXOWF4L._AC_UF1000,1000_QL80_.jpg'),
(3, 'Google Pixel 6', 'Google Pixel 6 with 128GB storage', 29000.00, '4.2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfP1o_WfMwZ6SvG_CCKpua8mW_fopOO26jNg&s'),
(4, 'OnePlus 9', 'OnePlus 9 with 256GB storage', 15500.00, '4.4', 'https://m.media-amazon.com/images/I/61HrWjOTJiL._AC_UF1000,1000_QL80_.jpg'),
(5, 'Xiaomi Mi 11', 'Xiaomi Mi 11 with 256GB storage', 36138.00, '4.3', 'https://images-cdn.ubuy.co.in/65e85ee4ec3c580d822c5e67-xiaomi-mi-11-5g-256gb-12gb-ram-china.jpg'),
(6, 'Sony Xperia 5', 'Sony Xperia 5 with 128GB storage', 19799.99, '4.5', 'https://m.media-amazon.com/images/I/61pcxk9NXoL.jpg'),
(7, 'Oppo Find X3', 'Oppo Find X3 with 256GB storage', 28960.00, '4.1', 'https://m.media-amazon.com/images/I/417UY5sPvtL.jpg'),
(8, 'Huawei P40', 'Huawei P40 with 128GB storage', 26551.00, '4.0', 'https://m.media-amazon.com/images/I/51D5aXUDRSL._AC_UF1000,1000_QL80_.jpg'),
(9, 'Nokia 8.3', 'Nokia 8.3 with 128GB storage', 17787.00, '3.9', 'https://images-cdn.ubuy.co.in/65ab5946719a2460eb5f6425-nokia-8-3-5g-dark-blue-6-81-128gb.jpg'),
(10, 'LG Velvet', 'LG Velvet with 128GB storage', 13999.00, '4.0', 'https://upload.wikimedia.org/wikipedia/commons/d/d4/LG_Velvet_Aurora_Green_version.jpg'),
(11, 'Motorola Edge', 'Motorola Edge with 256GB storage', 26999.00, '4.2', 'https://m.media-amazon.com/images/I/71XZP2Hm+5L._AC_UF1000,1000_QL80_.jpg'),
(12, 'Asus ROG Phone 5', 'Asus ROG Phone 5 with 256GB storage', 20000.00, '4.6', 'https://m-cdn.phonearena.com/images/phones/82644-940/Asus-ROG-Phone-5-Ultimate.jpg?w=1'),
(13, 'Realme GT', 'Realme GT with 256GB storage', 18000.00, '4.1', 'https://m.media-amazon.com/images/I/71ftthp966L.jpg'),
(14, 'Vivo X60', 'Vivo X60 with 256GB storage', 20400.00, '4.3', 'https://5.imimg.com/data5/ECOM/Default/2023/12/372078755/VN/FY/OJ/47699750/8kpqrglwk2-34cf3714-1a32-4be9-a4cc-c623e7fc0d41-500x500.jpg'),
(15, 'Lenovo Legion Duel 2', 'Lenovo Legion Duel 2 with 512GB storage', 72999.00, '4.8', 'https://www.gizmochina.com/wp-content/uploads/2021/04/cats-7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(2) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'a', 'a', 'a'),
(2, 'a', 'aa', 'aaa'),
(3, 'anusha', 'anusha@gmail.com', 'anu@123'),
(4, 'rakshita', 'rakshitaashoknadiger@gmail.com', 'rak123'),
(1, 'a', 'a', 'a'),
(2, 'a', 'aa', 'aaa'),
(3, 'anusha', 'anusha@gmail.com', 'anu@123'),
(4, 'rakshita', 'rakshitaashoknadiger@gmail.com', 'rak123');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Soccer Ball', 'Official size 5 soccer ball', 505.00, '4.5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxfyPLf_w24OykhJQWwuoHtfzHG8napSxrGA&s'),
(2, 'Basketball', 'Indoor/outdoor basketball', 2999.00, '4.2', 'https://target.scene7.com/is/image/Target/GUEST_c3e8626c-e455-4fec-b5ed-ec6dc172b6ca?qlt=65&fmt=pjpeg&hei=350&wid=350'),
(3, 'Tennis Racket', 'Lightweight tennis racket', 899.00, '4.8', 'https://m.media-amazon.com/images/I/41Fmrn-SoFS.jpg'),
(4, 'Yoga Mat', 'Non-slip yoga mat', 499.00, '4.0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkOGeV5UIPXaIx5e9TvrNPKTp4W2eX8Xv3ug&s'),
(5, 'Dumbbells', 'Set of 2 dumbbells (10kg each)', 1599.00, '4.3', 'https://images.jdmagicbox.com/quickquotes/images_main/rubber-and-metal-dumbbells-set-for-excercise-10-kg-x-2-2222177618-z0wbh7r1.jpg'),
(6, 'Running Shoes', 'Performance running shoes', 1912.00, '4.7', 'https://reebokbr.vtexassets.com/arquivos/ids/162744/HP9276_3.jpg?v=638188987684000000'),
(7, 'Swim Goggles', 'Anti-fog swim goggles', 594.00, '4.1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO_7gf3EhZOtQCiEDQ3Mentg-ty1EBVQr3sg&s'),
(8, 'Baseball Glove', 'Leather baseball glove', 945.00, '4.4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjYNijifvEN5vydo69-BRa_TsygjJij3k9PA&s'),
(9, 'Golf Clubs', 'Set of 14 golf clubs', 41750.00, '4.9', 'https://m.media-amazon.com/images/I/71WT-E6GiuL._AC_UF894,1000_QL80_.jpg'),
(10, 'Cricket Bat', 'Professional cricket bat', 1995.00, '4.6', 'https://www.anglarsports.com/wp-content/uploads/2022/11/Hitter-Pro-Edition-Explore-Final.webp'),
(11, 'Hockey Stick', 'Carbon fiber hockey stick', 8999.00, '4.2', 'https://www.rkme.com/images/product_images/composite-hockey-stick-90-carbon1-62fb13ceaeae0193670333.jpg'),
(12, 'Boxing Gloves', 'Leather boxing gloves', 1899.00, '4.3', 'https://m.media-amazon.com/images/I/811WCJ4NViL._AC_UF894,1000_QL80_.jpg'),
(13, 'Fishing Rod', 'Carbon fiber fishing rod', 3337.00, '4.5', 'https://m.media-amazon.com/images/I/41SVheyu4KL._AC_UF894,1000_QL80_.jpg'),
(14, 'Camping Tent', '4-person camping tent', 3299.00, '4.8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzwWtfmoLdBxLJ9LdSOcrv0-6B6VrGMrD4Hg&s'),
(15, 'Skateboard', 'Complete skateboard', 1654.00, '4.6', 'https://images-cdn.ubuy.co.in/661ba163a8461e3f02717328-umineux-complete-skateboard-made-of.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `top_products`
--

CREATE TABLE `top_products` (
  `id` int(10) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_rating` int(10) NOT NULL,
  `product_price` int(10) NOT NULL,
  `a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top_products`
--

INSERT INTO `top_products` (`id`, `product_image`, `product_type`, `product_name`, `product_rating`, `product_price`, `a`) VALUES
(1, 'https://img.tatacliq.com/images/i13/437Wx649H/MP000000018915491_437Wx649H_202308252248521.jpeg', 'clothes', 'T-Shirt', 5, 399, 1),
(2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR_FeiYsB5dfxpYGWk_tF2THti4kB6-OvZyw&s', 'electronics', 'Tablet', 5, 12000, 2),
(3, 'https://i.etsystatic.com/42020760/c/2000/2000/0/289/il/02debb/5434238205/il_300x300.5434238205_p6nk.jpg', 'footwears', 'Sandals', 4, 599, 3),
(4, 'https://m.media-amazon.com/images/I/91Bttn2sHzL._AC_UF894,1000_QL80_.jpg', 'furnituers', 'Coffee Table', 4, 4700, 4),
(5, 'https://totalfoods.in/static/uploads/product_image/Frozen_Chicken_Breast_Boneless__Frozen_32922565.jpg', 'groceries', 'Chicken Breast', 4, 230, 5),
(6, 'https://glenindia.com/cdn/shop/products/13_c59814de-f7f4-4aa7-90dc-442236397361_700x700.jpg?v=1633421377', 'home_appliances', 'Dishwasher', 4, 65000, 6),
(7, 'https://m.media-amazon.com/images/I/417UY5sPvtL.jpg', 'mobiles', 'Oppo Find X3', 4, 28960, 7),
(8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjYNijifvEN5vydo69-BRa_TsygjJij3k9PA&s', 'sports', 'Baseball Glove', 5, 945, 8),
(9, 'https://m.media-amazon.com/images/I/71lvPK1JixL._AC_UF1000,1000_QL80_.jpg', 'toys', 'Doll', 4, 1199, 9),
(10, 'https://m.media-amazon.com/images/I/812fbL24cCL._AC_UY1000_.jpg', 'watches', 'Hybrid Smartwatch', 4, 7299, 10);

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(1500) NOT NULL,
  `a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toys`
--

INSERT INTO `toys` (`id`, `name`, `description`, `price`, `ratings`, `images`, `a`) VALUES
(1, 'Action Figure', 'Superhero action figure', 987.00, '4.2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROJ7gTb2lWG1E9GtKpVm5s11AEkmR_vEPq9g&s', 1),
(2, 'Dollhouse', 'Wooden dollhouse with furniture', 5900.00, '4.5', 'https://images-cdn.ubuy.co.in/6531a317617d2c45324fb71f-giant-bean-wooden-dollhouse-2-6-feet.jpg', 2),
(3, 'Puzzle', '1000-piece jigsaw puzzle', 899.00, '4.0', 'https://www.alljigsawpuzzles.co.uk/cdn/shop/products/68df69ed-e863-4fdb-8f0a-eaed53f72386.jpg?v=1657722402', 3),
(4, 'Board Game', 'Classic strategy board game', 1399.00, '4.1', 'https://m.media-amazon.com/images/I/71DpaXXN7wL._AC_UF1000,1000_QL80_.jpg', 4),
(5, 'Lego Set', 'Building block lego set', 3300.00, '4.3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvJGpOEHbcVbKnxbGA9jK9-AWWECvokIn9A&s', 5),
(6, 'RC Car', 'Remote control car', 2099.00, '4.0', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3sbTnNeubJDIwNZpjcKmiRlpgmEAV0KwvmQ&s', 6),
(7, 'Stuffed Animal', 'Large teddy bear', 800.00, '3.9', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAWcwBs8YdEeZTv6M6bcM_SYAVz-iLHBCadA&s', 7),
(8, 'Toy Train', 'Electric toy train set', 15972.00, '4.2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbcnqsJ6t6QC-Qwmp3aT6_D27epyNrj0Arpw&s', 8),
(9, 'Doll', 'Fashion doll with accessories', 1199.00, '3.8', 'https://m.media-amazon.com/images/I/71lvPK1JixL._AC_UF1000,1000_QL80_.jpg', 9),
(10, 'Play Kitchen', 'Childrens play kitchen set', 2800.00, '4.6', 'https://m.media-amazon.com/images/I/61+TVrElkSL._AC_UF1000,1000_QL80_.jpg', 10),
(11, 'Action Playset', 'Adventure action playset', 2510.00, '4.1', 'https://images-cdn.ubuy.co.in/657948ac686ffc3b1d2e69bc-animal-planet-extreme-shark-adventure.jpg', 11),
(12, 'Educational Toy', 'STEM learning kit', 699.00, '4.0', 'https://images-cdn.ubuy.co.in/633b24928425b07246253290-iq-builder-stem-learning-toys.jpg', 12),
(13, 'Ride-On Toy', 'Kids ride-on car', 24900.00, '4.7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSpTNKiBN9Yyb5DxVPzwJ--JSLsVg-RzmJdc7UDh0U8DK935yTQBvBSddXiQFWgA253QQ&usqp=CAU', 13),
(14, 'Musical Toy', 'Toy musical keyboard', 849.00, '4.0', 'https://m.media-amazon.com/images/I/71KXVmVIULL.jpg', 14),
(15, 'Art Set', 'Complete kids art set', 1899.00, '4.0', 'https://m.media-amazon.com/images/I/718SjzV5q9L._AC_UF1000,1000_QL80_.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `watches`
--

CREATE TABLE `watches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ratings` varchar(5) NOT NULL,
  `images` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watches`
--

INSERT INTO `watches` (`id`, `name`, `description`, `price`, `ratings`, `images`) VALUES
(1, 'Analog Watch', 'Classic analog wristwatch', 1499.00, '4.3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_3fX_tNflY1wVRSTiej7jnOaV961PQQK5g&s'),
(2, 'Digital Watch', 'LED digital watch', 1999.00, '4.1', 'https://ae01.alicdn.com/kf/Hc02b9f38667f48fc832867a6fbcbc84aI/Men-Led-Digital-Watches-Fashion-Touch-Screen-Watches-Men-Sports-Watches-Silicone-Band-Electronic-Watch-montre.jpg'),
(3, 'Smartwatch', 'Fitness tracking smartwatch', 2499.00, '4.5', 'https://5.imimg.com/data5/UV/TK/KZ/SELLER-38159922/omnix-fitness-tracker-touch-screen-smartwatch-ip68-waterproof-with-heart-rate-monitor.jpg'),
(4, 'Chronograph Watch', 'Chronograph sports watch', 2750.00, '4.4', 'https://m.media-amazon.com/images/I/619eSZnjNML._AC_UY1000_.jpg'),
(5, 'Dress Watch', 'Elegant dress watch', 999.99, '4.6', 'https://cdn.shopify.com/s/files/1/0518/8652/2530/files/Laurent-Ferrier_Square-Micro-Rotor-Retro-White_Stainless-Steel-Case_Watch_LCF0013.AC.G3N_Lifestyle-Front_Spotify-Blog.jpg?v=1631022035'),
(6, 'Diving Watch', 'Waterproof diving watch', 8300.00, '4.7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi8vH-l_Dv19hTYFA05VgKdEJNRCz5EabMxz93H2WC2jI43A-jF8zO9wuvAftWMt9vwG8&usqp=CAU'),
(7, 'Aviator Watch', 'Pilots aviator watch', 36000.00, '4.8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVIEeaXNzed__bAgAnJb7u2wTqn22ToBXjCaHvlbTNjnoHi_ZaZY-30RfyzFZGeVOMuD8&usqp=CAU'),
(8, 'Skeleton Watch', 'Mechanical skeleton watch', 8200.00, '4.9', 'https://i.ebayimg.com/images/g/F-wAAOSwn8hiqT~t/s-l1600.jpg'),
(9, 'Field Watch', 'Durable field watch', 6699.00, '4.2', 'https://images-cdn.ubuy.co.in/64faa56a8e238744125d33cf-casio-men-s-stainless-steel-outdoor.jpg'),
(10, 'Hybrid Smartwatch', 'Hybrid analog smartwatch', 7299.00, '4.3', 'https://m.media-amazon.com/images/I/812fbL24cCL._AC_UY1000_.jpg'),
(11, 'Luxury Watch', 'Luxury gold watch', 40999.00, '4.9', 'https://m.media-amazon.com/images/I/71NhV9TYzXL._AC_UY1000_.jpg'),
(12, 'Sports Watch', 'Digital sports watch', 1795.00, '4.0', 'https://m.media-amazon.com/images/I/61i-k76LoQL._AC_UY1000_.jpg'),
(13, 'Tactical Watch', 'Military tactical watch', 16069.00, '4.2', 'https://i.ebayimg.com/images/g/15QAAOSwUrhiyAu~/s-l400.jpg'),
(14, 'Pocket Watch', 'Vintage pocket watch', 799.00, '3.9', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZWXWc4G7mBz5kKk5N-xz7b7eOQanw7EAtpQ&s'),
(15, 'Fitness Tracker', 'Advanced fitness tracker', 2499.00, '4.1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-lEzFrHF6uGbNX9FDybM4ZWO9j9HrzlirAnIi1vDQ7XYDFw3pSG3Clxgyj9bNE1y9JOI&usqp=CAU');

-- --------------------------------------------------------

--
-- Structure for view `all_products`
--
DROP TABLE IF EXISTS `all_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_products`  AS SELECT 'appliances' AS `category`, `appliances`.`id` AS `id`, `appliances`.`name` AS `name`, `appliances`.`description` AS `description`, `appliances`.`price` AS `price`, `appliances`.`ratings` AS `ratings`, `appliances`.`images` AS `images` FROM `appliances`union all select 'clothes' AS `category`,`clothes`.`id` AS `id`,`clothes`.`name` AS `name`,`clothes`.`description` AS `description`,`clothes`.`price` AS `price`,`clothes`.`ratings` AS `ratings`,`clothes`.`images` AS `images` from `clothes` union all select 'electronics' AS `category`,`electronics`.`id` AS `id`,`electronics`.`name` AS `name`,`electronics`.`description` AS `description`,`electronics`.`price` AS `price`,`electronics`.`ratings` AS `ratings`,`electronics`.`images` AS `images` from `electronics` union all select 'footwears' AS `category`,`footwears`.`id` AS `id`,`footwears`.`name` AS `name`,`footwears`.`description` AS `description`,`footwears`.`price` AS `price`,`footwears`.`ratings` AS `ratings`,`footwears`.`images` AS `images` from `footwears` union all select 'furnitures' AS `category`,`furnitures`.`id` AS `id`,`furnitures`.`name` AS `name`,`furnitures`.`description` AS `description`,`furnitures`.`price` AS `price`,`furnitures`.`ratings` AS `ratings`,`furnitures`.`images` AS `images` from `furnitures` union all select 'groceries' AS `category`,`groceries`.`id` AS `id`,`groceries`.`name` AS `name`,`groceries`.`description` AS `description`,`groceries`.`price` AS `price`,`groceries`.`ratings` AS `ratings`,`groceries`.`images` AS `images` from `groceries` union all select 'mobiles' AS `category`,`mobiles`.`id` AS `id`,`mobiles`.`name` AS `name`,`mobiles`.`description` AS `description`,`mobiles`.`price` AS `price`,`mobiles`.`ratings` AS `ratings`,`mobiles`.`images` AS `images` from `mobiles` union all select 'sports' AS `category`,`sports`.`id` AS `id`,`sports`.`name` AS `name`,`sports`.`description` AS `description`,`sports`.`price` AS `price`,`sports`.`ratings` AS `ratings`,`sports`.`images` AS `images` from `sports` union all select 'toys' AS `category`,`toys`.`id` AS `id`,`toys`.`name` AS `name`,`toys`.`description` AS `description`,`toys`.`price` AS `price`,`toys`.`ratings` AS `ratings`,`toys`.`images` AS `images` from `toys` union all select 'watches' AS `category`,`watches`.`id` AS `id`,`watches`.`name` AS `name`,`watches`.`description` AS `description`,`watches`.`price` AS `price`,`watches`.`ratings` AS `ratings`,`watches`.`images` AS `images` from `watches`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appliances`
--
ALTER TABLE `appliances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featuredcategories`
--
ALTER TABLE `featuredcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footwears`
--
ALTER TABLE `footwears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnitures`
--
ALTER TABLE `furnitures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groceries`
--
ALTER TABLE `groceries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_products`
--
ALTER TABLE `top_products`
  ADD PRIMARY KEY (`a`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`a`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `top_products`
--
ALTER TABLE `top_products`
  MODIFY `a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `toys`
--
ALTER TABLE `toys`
  MODIFY `a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
