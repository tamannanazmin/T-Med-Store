-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 07:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `170204048`
--
CREATE DATABASE IF NOT EXISTS `170204048` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `170204048`;

-- --------------------------------------------------------

--
-- Table structure for table `about_us_images`
--

CREATE TABLE `about_us_images` (
  `ID` int(11) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us_images`
--

INSERT INTO `about_us_images` (`ID`, `location`) VALUES
(1, 'images/logofullsize.png'),
(2, 'images/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(11) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `due_amount` int(20) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `order_date`, `order_status`) VALUES
(1, 1, 40, 509940829, '2020/09/18', 'pending'),
(2, 6, 40, 777112442, '2020/09/18', 'pending'),
(3, 6, 350, 490969327, '2020/09/18', 'pending'),
(6, 3, 550, 491644521, '2020/09/18', 'pending'),
(7, 3, 40, 1782803930, '2020/09/18', 'pending'),
(8, 3, 5060, 750016564, '2020/09/21', 'pending'),
(9, 3, 5060, 750016564, '2020/09/21', 'pending'),
(10, 6, 1650, 1857511661, '2020/09/21', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `display_contact_info`
--

CREATE TABLE `display_contact_info` (
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Facebook` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `display_contact_info`
--

INSERT INTO `display_contact_info` (`Address`, `Email`, `Phone`, `Facebook`) VALUES
('29/A Fifth Avenue,Dhaka', 'tmedstore@gmail.com', '+88 01789098654', 'T Med Store');

-- --------------------------------------------------------

--
-- Table structure for table `health_equipment`
--

CREATE TABLE `health_equipment` (
  `health_equipment_id` int(10) NOT NULL,
  `health_equipment_cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `health_equipment_title` text NOT NULL,
  `health_equipment_img` text NOT NULL,
  `health_equipment_price` int(10) NOT NULL,
  `health_equipment_keywords` text NOT NULL,
  `health_equipment_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_equipment`
--

INSERT INTO `health_equipment` (`health_equipment_id`, `health_equipment_cat_id`, `date`, `health_equipment_title`, `health_equipment_img`, `health_equipment_price`, `health_equipment_keywords`, `health_equipment_desc`) VALUES
(4, 2, '2020-09-19 09:39:22', '50mm Axial iron shell integrated pressure gauge', 'gauge1.webp', 550, 'health equipment (gauge)', 'Place of Origin:Bangladesh,Brand Name: BECO  Model Number: Y-25 Material:Steel, aluminum, rubber, brass etc Size: 1\"(25mm)'),
(5, 2, '2020-09-19 09:39:22', '40mm Radial shock resistance stainless steel hydraulic oil pressure gauge', 'gauge2.webp', 1500, 'health equipment (gauge)', 'Place of Origin:Bangladesh Brand Name:ODMModel Number:1B15E001A-01 Connection:PT Pressure Range:0~55kpa Case Material: ABS Plastic'),
(6, 2, '2020-09-19 09:39:22', 'Beco 1 inch 25mm 10 bar Plastic Case Mini Pressure Gauge with axial mount', 'gauge3.webp', 550, 'health equipment (gauge)', 'Place of Origin:Bangladesh Brand Name:ODMModel Number:1B15E001A-01 Connection:PT Pressure Range:0~55kpa Case Material: ABS Plastic'),
(8, 10, '2020-09-19 09:39:22', 'Wholesale Low Price Medical Equipment Hospital Syringes Disposable', 'syrin1.webp', 150, 'health equipment (Syringe)', 'Medical Disposable Syringes\r\nHeavy-duty plastic disposable nutrient syringes with no hypodermic needle, solve the problem of liquid splash or overflow.\r\nThe graduation marks are clear and easy reading, and the plunger works smoothly, convenient to use.\r\n\r\nSpcifications:\r\nMaterial: Hard plastic\r\nGlue Plug: Latex\r\nCapacity: 3ml\r\n\r\nAvailable size:\r\n1ml,2.5ml,3ml,5ml,10ml,20ml, 30ml, 60ml, 100ml, 150ml,  250ml, 300ml, 350ml,500ml\r\nAnd depends on buyer'),
(9, 10, '2020-09-19 09:39:22', 'Plastic Syringe Tip Cap, Medical Female Luer Lock Connector Type, And Luer Lock Bottle Cap ISO 594', 'syrin2.webp', 350, 'health equipment (Syringe)', 'Medical Disposable Syringes\r\nHeavy-duty plastic disposable nutrient syringes with no hypodermic needle, solve the problem of liquid splash or overflow.\r\nThe graduation marks are clear and easy reading, and the plunger works smoothly, convenient to use.\r\n\r\nSpcifications:\r\nMaterial: Hard plastic\r\nGlue Plug: Latex\r\nCapacity: 3ml\r\n\r\nAvailable size:\r\n1ml,2.5ml,3ml,5ml,10ml,20ml, 30ml, 60ml, 100ml, 150ml,  250ml, 300ml, 350ml,500ml\r\nAnd depends on buyer'),
(10, 10, '2020-09-19 09:39:22', 'Plastic Syringe Tip Cap, Medical Female Luer Lock Connector Type, And Luer Lock Bottle Cap ISO 594', 'syrin3.webp', 350, 'health equipment (Syringe)', 'Medical Disposable Syringes\r\nHeavy-duty plastic disposable nutrient syringes with no hypodermic needle, solve the problem of liquid splash or overflow.\r\nThe graduation marks are clear and easy reading, and the plunger works smoothly, convenient to use.\r\n\r\nSpcifications:\r\nMaterial: Hard plastic\r\nGlue Plug: Latex\r\nCapacity: 3ml\r\n\r\nAvailable size:\r\n1ml,2.5ml,3ml,5ml,10ml,20ml, 30ml, 60ml, 100ml, 150ml,  250ml, 300ml, 350ml,500ml\r\nAnd depends on buyer'),
(11, 11, '2020-09-19 09:39:22', 'CE certification medical care Inhaler Portable Medical Ultrasonic Atomizer Nebulizer', 'inhaler1.webp', 2350, 'health equipment (Inhaler)', 'Product Description\r\ndisposable medical asthma inhaler spacer devices\r\n\r\n \r\n\r\nMedical inhaler spacer \r\n1.Used with metered dose inhalers \r\n2.With different size of masks, mouthpiece \r\n3.Anti Static plastic\r\n\r\nFunction:\r\nit is an auxiliary tool of MDI for asthma treatment, and it is used to store aerosol. It is mainly used among animals with poor coordination of inhalation and hand gestures, or obvious side effect in throat after using aerosol. Especially, spacer can significantly reduce side effect of cortical hormone inhalation.\r\n\r\nAdvantages:\r\n1,Optimizes the delivery of MDI asthma medication.\r\n2,Compatible with most MDI (metered dose inhaler) actuators.'),
(12, 11, '2020-09-19 09:39:22', '2019 New high quality personal medical electric asthma inhaler \r\n', 'inhaler2.webp', 2500, 'health equipment (Inhaler)', 'Product Description\r\ndisposable medical asthma inhaler spacer devices\r\n\r\n \r\n\r\nMedical inhaler spacer \r\n1.Used with metered dose inhalers \r\n2.With different size of masks, mouthpiece \r\n3.Anti Static plastic\r\n\r\nFunction:\r\nit is an auxiliary tool of MDI for asthma treatment, and it is used to store aerosol. It is mainly used among animals with poor coordination of inhalation and hand gestures, or obvious side effect in throat after using aerosol. Especially, spacer can significantly reduce side effect of cortical hormone inhalation.\r\n\r\nAdvantages:\r\n1,Optimizes the delivery of MDI asthma medication.\r\n2,Compatible with most MDI (metered dose inhaler) actuators.'),
(13, 1, '2020-09-19 09:39:22', 'transparent bandages surgical', 'bandaid2.webp', 250, 'health equipment (bandaid)', 'The comfortable material is hypoallergenic and flexible;The non-stick wound pad protects and cushions the wound;The secure and skin friendly adhesion ensures that the plaster stays in place but is still painless to remove;Very skin friendly plaster;For all types of small wounds\r\n\r\nStops bleeding fast, protects the wound without sticking to it\r\nAllows an effective healing process\r\nEasy to open and apply, for light wounds and surface cuts\r\nPackaged for individual use and to replenish first aid stations and kits\r\nVarity sizes'),
(14, 2, '2020-09-19 09:39:22', '63mm Stainless Steel Shell of Liquid Pressure gauge', 'gauge4.webp', 750, 'health equipment (gauge)', 'Name:pressure gauge\r\nSize:2.5\"(63mm)\r\nMeasurement Range: 0-100kg/1500PSI  or Customized\r\nAccuracy:1.6\r\nOperating temperature:-25Â°C to +75Â°C\r\nCase:Stainless steel\r\nBezel:Stainless steel\r\nBourdon tube:Copper alloy or Stainless steel\r\nConnection:Brass(base)\r\nMovement:Brass\r\nDial:Aluminum\r\nPointer:Aluminum\r\nType:Oil filled pressure gauge'),
(15, 2, '2020-09-19 09:39:22', 'BECO 1inch 25mm 27mm 60psi pressure gauge,mini manometer', 'gauge5.webp', 350, 'health equipment (gauge)', 'Name:pressure gauge\r\nSize:2.5\"(63mm)\r\nMeasurement Range: 0-100kg/1500PSI  or Customized\r\nAccuracy:1.6\r\nOperating temperature:-25Â°C to +75Â°C\r\nCase:Stainless steel\r\nBezel:Stainless steel\r\nBourdon tube:Copper alloy or Stainless steel\r\nConnection:Brass(base)\r\nMovement:Brass\r\nDial:Aluminum\r\nPointer:Aluminum\r\nType:Oil filled pressure gauge'),
(16, 1, '2020-09-19 09:39:22', 'Sports camouflage non-woven fabric breathable self-adhesive bandage', 'bandaid1.webp', 150, 'health equipment (bandaid)', 'Type: Adhesive Bandages(Tapes)\r\nBrand name:Gspmed or Gsport or Gspcare\r\nModel number:GSPKTP-001/GSPKTSF-001\r\nOrigin:Hangzhou,China\r\nMaterial:Cotton\r\nGlue:Acrylic adhesive\r\nSize:5.0cm*5m\r\nColor:Multy also can be customed\r\nClassification:Class I\r\nPrinting Logo:available\r\nOEM:  available\r\nAdvantages:Water-resistant,Highly elastic\r\nApplication: Sports protection, rehabilitation therapy\r\nPackage:1roll/film or gift box'),
(17, 1, '2020-09-19 09:39:22', 'Customized First Aid Adhesive Bandage Plasters For Wounds', 'bandaid3.webp', 50, 'health equipment (bandaid)', 'Type: Adhesive Bandages(Tapes)\r\nBrand name:Gspmed or Gsport or Gspcare\r\nModel number:GSPKTP-001/GSPKTSF-001\r\nOrigin:Hangzhou,China\r\nMaterial:Cotton\r\nGlue:Acrylic adhesive\r\nSize:5.0cm*5m\r\nColor:Multy also can be customed\r\nClassification:Class I\r\nPrinting Logo:available\r\nOEM:  available\r\nAdvantages:Water-resistant,Highly elastic\r\nApplication: Sports protection, rehabilitation therapy\r\nPackage:1roll/film or gift box'),
(18, 1, '2020-09-19 09:39:22', 'Disposable medical emergency first aid natural cotton mesh bandages roll', 'bandaid4.webp', 150, 'health equipment (bandaid)', 'Type: Adhesive Bandages(Tapes)\r\nBrand name:Gspmed or Gsport or Gspcare\r\nModel number:GSPKTP-001/GSPKTSF-001\r\nOrigin:Hangzhou,China\r\nMaterial:Cotton\r\nGlue:Acrylic adhesive\r\nSize:5.0cm*5m\r\nColor:Multy also can be customed\r\nClassification:Class I\r\nPrinting Logo:available\r\nOEM:  available\r\nAdvantages:Water-resistant,Highly elastic\r\nApplication: Sports protection, rehabilitation therapy\r\nPackage:1roll/film or gift box'),
(19, 1, '2020-09-19 09:39:22', 'Manufacturer Suppliers medical wound tape bandages', 'bandaid5.webp', 150, 'health equipment (bandaid)', 'Type: Adhesive Bandages(Tapes)\r\nBrand name:Gspmed or Gsport or Gspcare\r\nModel number:GSPKTP-001/GSPKTSF-001\r\nOrigin:Hangzhou,China\r\nMaterial:Cotton\r\nGlue:Acrylic adhesive\r\nSize:5.0cm*5m\r\nColor:Multy also can be customed\r\nClassification:Class I\r\nPrinting Logo:available\r\nOEM:  available\r\nAdvantages:Water-resistant,Highly elastic\r\nApplication: Sports protection, rehabilitation therapy\r\nPackage:1roll/film or gift box'),
(20, 3, '2020-09-19 09:39:22', 'Precision Knife With 6 Blades(Aluminium Body)', 'sci2.jpg', 250, 'health equipment(Scissors)', 'Multi-purpose, this Paramedic Bandage Scissors are the best all purpose shears on the marke.\r\nA 30 % larger handle means greater comfort. Blades are surgical sharp and made of 420 stainless steel for easier cutting.\r\nStrong rivets on both sides of the blade gives you more cutting power.\r\nColored plastic tip allows easy slide of blade under any type of tape, bandage, or clothing.\r\n Packing: 1 pcs / opp bag, 500 pcs / ctn, ctn meas.: 33x22x48 cm, GW /NW 19KG / 18KG'),
(21, 3, '2020-09-19 09:39:22', 'Precision Knife With 6 Blades', 'sci1.jpg', 350, 'health equipment(Scissors)', 'Multi-purpose, this Paramedic Bandage Scissors are the best all purpose shears on the marke.\r\nA 30 % larger handle means greater comfort. Blades are surgical sharp and made of 420 stainless steel for easier cutting.\r\nStrong rivets on both sides of the blade gives you more cutting power.\r\nColored plastic tip allows easy slide of blade under any type of tape, bandage, or clothing.\r\n Packing: 1 pcs / opp bag, 500 pcs / ctn, ctn meas.: 33x22x48 cm, GW /NW 19KG / 18KG'),
(22, 3, '2020-09-19 09:39:22', '7 in 1 Stainless Steel Manicure Set and Pedicure Set and Nail Scissors', 'sci3.jpg', 300, 'health equipment(Scissors)', 'Multi-purpose, this Paramedic Bandage Scissors are the best all purpose shears on the marke.\r\nA 30 % larger handle means greater comfort. Blades are surgical sharp and made of 420 stainless steel for easier cutting.\r\nStrong rivets on both sides of the blade gives you more cutting power.\r\nColored plastic tip allows easy slide of blade under any type of tape, bandage, or clothing.\r\n Packing: 1 pcs / opp bag, 500 pcs / ctn, ctn meas.: 33x22x48 cm, GW /NW 19KG / 18KG'),
(23, 3, '2020-09-19 09:39:22', 'Blade Cutter Knife Snap Off Stainless Case', 'sci4.jpg', 80, 'health equipment(Scissors)', 'Multi-purpose, this Paramedic Bandage Scissors are the best all purpose shears on the marke.\r\nA 30 % larger handle means greater comfort. Blades are surgical sharp and made of 420 stainless steel for easier cutting.\r\nStrong rivets on both sides of the blade gives you more cutting power.\r\nColored plastic tip allows easy slide of blade under any type of tape, bandage, or clothing.\r\n Packing: 1 pcs / opp bag, 500 pcs / ctn, ctn meas.: 33x22x48 cm, GW /NW 19KG / 18KG'),
(24, 3, '2020-09-19 09:39:22', '20Pcs Surgical Training Kit Skin Operate Suture Practice Model', 'sci5.jpg', 1100, 'health equipment(Scissors)', 'Multi-purpose, this Paramedic Bandage Scissors are the best all purpose shears on the marke.\r\nA 30 % larger handle means greater comfort. Blades are surgical sharp and made of 420 stainless steel for easier cutting.\r\nStrong rivets on both sides of the blade gives you more cutting power.\r\nColored plastic tip allows easy slide of blade under any type of tape, bandage, or clothing.\r\n Packing: 1 pcs / opp bag, 500 pcs / ctn, ctn meas.: 33x22x48 cm, GW /NW 19KG / 18KG'),
(25, 4, '2020-09-19 09:39:22', 'Factory Direct Sale Medical Hot Capsicum Plaster Medical Patch', 'patch1.webp', 50, 'health equipment(patch)', '\r\nProperties:Rehabilitation Therapy Supplies\r\nPlace of Origin:bangladesh\r\nBrand Name:Ugel\r\nModel Number:LFT-5\r\nType:Hot & Cold Packs\r\nSize:7 x 10 x 0.15CM\r\nWeight:8 Â± 0.5\r\nMaterial:Elastic Fabric / Gel Layer / Transparent Film\r\nColor:Blue / Green / Orange / Yellow / Pink ,purple or customized colors\r\nFeature:Powerful Effect on Pain Reliefing\r\nMain Ingredients:Hydro Gel / Glycerol / Menthol (Few) / Macromolecule\r\nWarranty Period:2 Years\r\nPacking:Plastic Pouch / Color Box / Carton\r\nSample:Free\r\nHS Code:3005909000'),
(26, 4, '2020-09-19 09:39:22', 'Chinese traditional pain relief medical plaster pain patch', 'patch2.webp', 90, 'health equipment(patch)', '\r\nProperties:Rehabilitation Therapy Supplies\r\nPlace of Origin:bangladesh\r\nBrand Name:Ugel\r\nModel Number:LFT-5\r\nType:Hot & Cold Packs\r\nSize:7 x 10 x 0.15CM\r\nWeight:8 Â± 0.5\r\nMaterial:Elastic Fabric / Gel Layer / Transparent Film\r\nColor:Blue / Green / Orange / Yellow / Pink ,purple or customized colors\r\nFeature:Powerful Effect on Pain Reliefing\r\nMain Ingredients:Hydro Gel / Glycerol / Menthol (Few) / Macromolecule\r\nWarranty Period:2 Years\r\nPacking:Plastic Pouch / Color Box / Carton\r\nSample:Free\r\nHS Code:3005909000'),
(27, 4, '2020-09-19 09:39:22', 'Multifunctional medical pain patches muscle and back pain relief patches', 'patch3.webp', 60, 'health equipment(patch)', '\r\nProperties:Rehabilitation Therapy Supplies\r\nPlace of Origin:bangladesh\r\nBrand Name:Ugel\r\nModel Number:LFT-5\r\nType:Hot & Cold Packs\r\nSize:7 x 10 x 0.15CM\r\nWeight:8 Â± 0.5\r\nMaterial:Elastic Fabric / Gel Layer / Transparent Film\r\nColor:Blue / Green / Orange / Yellow / Pink ,purple or customized colors\r\nFeature:Powerful Effect on Pain Reliefing\r\nMain Ingredients:Hydro Gel / Glycerol / Menthol (Few) / Macromolecule\r\nWarranty Period:2 Years\r\nPacking:Plastic Pouch / Color Box / Carton\r\nSample:Free\r\nHS Code:3005909000'),
(29, 4, '2020-09-19 09:39:22', 'Medical Equipment Infantile Umbilical Paste /Instant Cooling Patch', 'patch5.webp', 150, 'health equipment(patch)', '\r\nProperties:Rehabilitation Therapy Supplies\r\nPlace of Origin:bangladesh\r\nBrand Name:Ugel\r\nModel Number:LFT-5\r\nType:Hot & Cold Packs\r\nSize:7 x 10 x 0.15CM\r\nWeight:8 Â± 0.5\r\nMaterial:Elastic Fabric / Gel Layer / Transparent Film\r\nColor:Blue / Green / Orange / Yellow / Pink ,purple or customized colors\r\nFeature:Powerful Effect on Pain Reliefing\r\nMain Ingredients:Hydro Gel / Glycerol / Menthol (Few) / Macromolecule\r\nWarranty Period:2 Years\r\nPacking:Plastic Pouch / Color Box / Carton\r\nSample:Free\r\nHS Code:3005909000'),
(30, 5, '2020-09-19 09:39:22', 'Medical Rigid Digital Thermometer With Beeper and Alarm', 'thermo1.webp', 150, 'health equipment(Thermometer)', '\r\n1 Product Name	Medical Rigid Digital Thermometer With Beeper and Alarm\r\n2 Model	YT323\r\n3 Range	32â„ƒ-42.9â„ƒ(90â„‰-109.2â„‰)\r\n4 Accuracy Â±0.1Â°C\r\n5 Beeper Function Fever Alarm\r\n6 Memory Last measuring reading\r\n7 Battery Type	LR41,1.5V\r\n8 Battery Life	About 250 hours or over 1000 times\r\n9 Unit Weight Approx 10g\r\n10 Unit Dimension 127mmÃ—20mmÃ—10mm'),
(31, 5, '2020-09-19 09:39:22', 'Digital industrial professional body portable medical grade infrared thermometer', 'thermo2.webp', 350, 'health equipment(Thermometer)', '\r\n1 Product Name	Medical Rigid Digital Thermometer With Beeper and Alarm\r\n2 Model	YT323\r\n3 Range	32â„ƒ-42.9â„ƒ(90â„‰-109.2â„‰)\r\n4 Accuracy Â±0.1Â°C\r\n5 Beeper Function Fever Alarm\r\n6 Memory Last measuring reading\r\n7 Battery Type	LR41,1.5V\r\n8 Battery Life	About 250 hours or over 1000 times\r\n9 Unit Weight Approx 10g\r\n10 Unit Dimension 127mmÃ—20mmÃ—10mm'),
(32, 5, '2020-09-19 09:39:22', 'Factory Wholesale Medical Non Contact Digital Forehead Infrared Thermometers ', 'thermo3.webp', 250, 'health equipment(Thermometer)', '\r\n1 Product Name	Medical Rigid Digital Thermometer With Beeper and Alarm\r\n2 Model	YT323\r\n3 Range	32â„ƒ-42.9â„ƒ(90â„‰-109.2â„‰)\r\n4 Accuracy Â±0.1Â°C\r\n5 Beeper Function Fever Alarm\r\n6 Memory Last measuring reading\r\n7 Battery Type	LR41,1.5V\r\n8 Battery Life	About 250 hours or over 1000 times\r\n9 Unit Weight Approx 10g\r\n10 Unit Dimension 127mmÃ—20mmÃ—10mm'),
(33, 5, '2020-09-19 09:39:22', 'Household Medical Equipment Calibrated Digital Thermometer', 'thermo4.webp', 260, 'health equipment(Thermometer)', '\r\n1 Product Name	Medical Rigid Digital Thermometer With Beeper and Alarm\r\n2 Model	YT323\r\n3 Range	32â„ƒ-42.9â„ƒ(90â„‰-109.2â„‰)\r\n4 Accuracy Â±0.1Â°C\r\n5 Beeper Function Fever Alarm\r\n6 Memory Last measuring reading\r\n7 Battery Type	LR41,1.5V\r\n8 Battery Life	About 250 hours or over 1000 times\r\n9 Unit Weight Approx 10g\r\n10 Unit Dimension 127mmÃ—20mmÃ—10mm'),
(34, 5, '2020-09-19 09:39:22', 'Wholesale Prices Medical Temperature Gun Non Contact Digital Infrared Body Thermometer', 'thermo5.webp', 384, 'health equipment(Thermometer)', '\r\n1 Product Name	Medical Rigid Digital Thermometer With Beeper and Alarm\r\n2 Model	YT323\r\n3 Range	32â„ƒ-42.9â„ƒ(90â„‰-109.2â„‰)\r\n4 Accuracy Â±0.1Â°C\r\n5 Beeper Function Fever Alarm\r\n6 Memory Last measuring reading\r\n7 Battery Type	LR41,1.5V\r\n8 Battery Life	About 250 hours or over 1000 times\r\n9 Unit Weight Approx 10g\r\n10 Unit Dimension 127mmÃ—20mmÃ—10mm'),
(35, 6, '2020-09-19 09:39:22', 'High quality professional plastic medical stethoscope for hearing test', 'stetho1.webp', 2150, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(36, 6, '2020-09-19 09:39:22', 'High quality cheap price disposable adult pediatric colorful medical single head stethoscope', 'stetho2.webp', 250, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(37, 6, '2020-09-19 09:39:22', 'Cheap Price Medical Stethoscope Cover,Best Stethoscope', 'stetho3.webp', 1250, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(38, 6, '2020-09-19 09:39:22', '2019 China Professional Good Price Medical Dual Head Stethoscope', 'stetho4.webp', 4226, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(39, 0, '2020-09-19 09:39:22', 'Wholesale multifunction early diagnosis adults medical equipment stethoscope', 'stetho5.webp', 11320, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(40, 7, '2020-09-19 09:39:22', 'Best glucose testers diabetic testing device OEM medical gluco meter blood sugar checker with free test strips', 'glu1.webp', 550, 'health equipment(Blood Glucose Meter)', '\r\n1 Type: Biochemical Analysis System\r\n2 Brand Name:LYSUN\r\n3 Model Number: BGM-101\r\n4 Place of Origin:dhaka,bangladesh\r\n5 Instrument classification: Class II\r\n6 Warranty: 1 year\r\n7 After-sale Service: NONE\r\n8 Product name: blood glucose meter\r\n9 specimen: venous blood\r\n10 Sample Adding Amount:1Î¼L\r\n'),
(41, 7, '2020-09-19 09:39:22', 'Blood Glucose Meter With CE H-279', 'glu2.webp', 550, 'health equipment(Blood Glucose Meter)', '\r\n1 Type: Biochemical Analysis System\r\n2 Brand Name:LYSUN\r\n3 Model Number: BGM-101\r\n4 Place of Origin:dhaka,bangladesh\r\n5 Instrument classification: Class II\r\n6 Warranty: 1 year\r\n7 After-sale Service: NONE\r\n8 Product name: blood glucose meter\r\n9 specimen: venous blood\r\n10 Sample Adding Amount:1Î¼L\r\n'),
(42, 7, '2020-09-19 09:39:22', 'High accurate painless glucose monitor with Genuine Quality Blood Gluco Meter/Monitor at Discounted Price', 'glu3.webp', 350, 'health equipment(Blood Glucose Meter)', '\r\n1 Type: Biochemical Analysis System\r\n2 Brand Name:LYSUN\r\n3 Model Number: BGM-101\r\n4 Place of Origin:dhaka,bangladesh\r\n5 Instrument classification: Class II\r\n6 Warranty: 1 year\r\n7 After-sale Service: NONE\r\n8 Product name: blood glucose meter\r\n9 specimen: venous blood\r\n10 Sample Adding Amount:1Î¼L\r\n'),
(43, 7, '2020-09-19 09:39:22', 'most popular painless  glucose meter ', 'glu4.webp', 350, 'health equipment(Blood Glucose Meter)', '\r\n1 Type: Biochemical Analysis System\r\n2 Brand Name:LYSUN\r\n3 Model Number: BGM-101\r\n4 Place of Origin:dhaka,bangladesh\r\n5 Instrument classification: Class II\r\n6 Warranty: 1 year\r\n7 After-sale Service: NONE\r\n8 Product name: blood glucose meter\r\n9 specimen: venous blood\r\n10 Sample Adding Amount:1Î¼L\r\n'),
(44, 7, '2020-09-19 09:39:22', 'High quality Accurate quick check blood glucose meter MSLGC03 / Gluco-Meter for Diabetes Management', 'glu5.webp', 2500, 'health equipment(Blood Glucose Meter)', '\r\n1 Type: Biochemical Analysis System\r\n2 Brand Name:LYSUN\r\n3 Model Number: BGM-101\r\n4 Place of Origin:dhaka,bangladesh\r\n5 Instrument classification: Class II\r\n6 Warranty: 1 year\r\n7 After-sale Service: NONE\r\n8 Product name: blood glucose meter\r\n9 specimen: venous blood\r\n10 Sample Adding Amount:1Î¼L\r\n'),
(45, 8, '2020-09-19 09:39:22', 'Wellue AirBP Digital High Blood Pressure Monitoring Device', 'moni1.webp', 5550, 'health equipment(Blood Pressure Monitor)', '1 Type:Blood Pressure Monitor\r\n2 Brand Name:leyte\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:JZK-002ASY\r\n5 Instrument classification:Class II\r\n6 TYPE::digital electronic blood pressure monitor\r\n7 storage::99 sets of storage,IHB arrhythmia detection\r\n8 Voltage::Voltage power detection,Low power consumption\r\n9 Dimention:: 77.5mm*68mm*30mm (not include Wristbands)\r\n10 Display::Digital liquid crystal display'),
(46, 8, '2020-09-19 09:39:22', 'Digital Led Upper Arm Blood Pressure Monitor', 'moni2.webp', 3350, 'health equipment(Blood Pressure Monitor)', '1 Type:Blood Pressure Monitor\r\n2 Brand Name:leyte\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:JZK-002ASY\r\n5 Instrument classification:Class II\r\n6 TYPE::digital electronic blood pressure monitor\r\n7 storage::99 sets of storage,IHB arrhythmia detection\r\n8 Voltage::Voltage power detection,Low power consumption\r\n9 Dimention:: 77.5mm*68mm*30mm (not include Wristbands)\r\n10 Display::Digital liquid crystal display'),
(47, 8, '2020-09-19 09:39:22', 'DJM Medical High Quality Automatic Digital Blood Pressure Monitor', 'moni3.webp', 3250, 'health equipment(Blood Pressure Monitor)', '1 Type:Blood Pressure Monitor\r\n2 Brand Name:leyte\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:JZK-002ASY\r\n5 Instrument classification:Class II\r\n6 TYPE::digital electronic blood pressure monitor\r\n7 storage::99 sets of storage,IHB arrhythmia detection\r\n8 Voltage::Voltage power detection,Low power consumption\r\n9 Dimention:: 77.5mm*68mm*30mm (not include Wristbands)\r\n10 Display::Digital liquid crystal display'),
(48, 8, '2020-09-19 09:39:22', 'Medical bluetooth 4.0 blood pressure meter digital arm blood pressure monitor', 'moni4.webp', 2500, 'health equipment(Blood Pressure Monitor)', '1 Type:Blood Pressure Monitor\r\n2 Brand Name:leyte\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:JZK-002ASY\r\n5 Instrument classification:Class II\r\n6 TYPE::digital electronic blood pressure monitor\r\n7 storage::99 sets of storage,IHB arrhythmia detection\r\n8 Voltage::Voltage power detection,Low power consumption\r\n9 Dimention:: 77.5mm*68mm*30mm (not include Wristbands)\r\n10 Display::Digital liquid crystal display'),
(49, 8, '2020-09-19 09:39:22', 'BK1018 OEM mercury free sphygmomanometer, medical ', 'moni5.webp', 7500, 'health equipment(Blood Pressure Monitor)', '1 Type:Blood Pressure Monitor\r\n2 Brand Name:leyte\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:JZK-002ASY\r\n5 Instrument classification:Class II\r\n6 TYPE::digital electronic blood pressure monitor\r\n7 storage::99 sets of storage,IHB arrhythmia detection\r\n8 Voltage::Voltage power detection,Low power consumption\r\n9 Dimention:: 77.5mm*68mm*30mm (not include Wristbands)\r\n10 Display::Digital liquid crystal display'),
(50, 9, '2020-09-19 09:39:22', 'Digital Bathroom Weight Machinebathroom Medical Body Fat Scale F13 With 396Lb/180Kg', 'weight1.webp', 850, 'health equipment(Weight Scale)', '1 Place of Origin:dhaka, bangladesh\r\n2 Brand Name:LWG\r\n3 Model Number:LWG0001CS\r\n4 Type:weight scale\r\n5 Power Supply:Battery\r\n6 Display Type:LED LCD\r\n7 Rated Load:150kg\r\n8 Accuracy:g/kg/lb\r\n9 Product name:Digital Body Scales\r\n10 Material:ABS+Tempered Glass\r\n11 Warranty:1 Year\r\n'),
(51, 9, '2020-09-19 09:39:22', 'Medicical Smart Bmi Analyser Fitness Smart Digital Bathroom Weight Scale', 'weight2.webp', 950, 'health equipment(Weight Scale)', '1 Place of Origin:dhaka, bangladesh\r\n2 Brand Name:LWG\r\n3 Model Number:LWG0001CS\r\n4 Type:weight scale\r\n5 Power Supply:Battery\r\n6 Display Type:LED LCD\r\n7 Rated Load:150kg\r\n8 Accuracy:g/kg/lb\r\n9 Product name:Digital Body Scales\r\n10 Material:ABS+Tempered Glass\r\n11 Warranty:1 Year\r\n'),
(52, 9, '2020-09-19 09:39:22', 'HY-E-100 100g 0.001g digital portable electronic gold diamond medical weighing pocket scale', 'weight3.webp', 990, 'health equipment(Weight Scale)', '1 Place of Origin:dhaka, bangladesh\r\n2 Brand Name:LWG\r\n3 Model Number:LWG0001CS\r\n4 Type:weight scale\r\n5 Power Supply:Battery\r\n6 Display Type:LED LCD\r\n7 Rated Load:150kg\r\n8 Accuracy:g/kg/lb\r\n9 Product name:Digital Body Scales\r\n10 Material:ABS+Tempered Glass\r\n11 Warranty:1 Year\r\n'),
(53, 9, '2020-09-19 09:39:22', 'FOREVER SCALES Digital Weighing Scale 300kg LED  Weight Scale', 'weight4.webp', 1250, 'health equipment(Weight Scale)', '1 Place of Origin:dhaka, bangladesh\r\n2 Brand Name:LWG\r\n3 Model Number:LWG0001CS\r\n4 Type:weight scale\r\n5 Power Supply:Battery\r\n6 Display Type:LED LCD\r\n7 Rated Load:150kg\r\n8 Accuracy:g/kg/lb\r\n9 Product name:Digital Body Scales\r\n10 Material:ABS+Tempered Glass\r\n11 Warranty:1 Year\r\n'),
(54, 9, '2020-09-19 09:39:22', '160kg Anti-slip Surface Mechanical Bathroom Body Weighing Scale ', 'weight5.webp', 1300, 'health equipment(Weight Scale)', '1 Place of Origin:dhaka, bangladesh\r\n2 Brand Name:LWG\r\n3 Model Number:LWG0001CS\r\n4 Type:weight scale\r\n5 Power Supply:Battery\r\n6 Display Type:LED LCD\r\n7 Rated Load:150kg\r\n8 Accuracy:g/kg/lb\r\n9 Product name:Digital Body Scales\r\n10 Material:ABS+Tempered Glass\r\n11 Warranty:1 Year\r\n'),
(55, 10, '2020-09-19 09:39:22', 'CE/ISO13485 proved medical disposables and consumables interventional product Dose Control Syringes', 'syrin4.webp', 360, 'health equipment(Syringe)', 'Medical Disposable Syringes Heavy-duty plastic disposable nutrient syringes with no hypodermic needle, solve the problem of liquid splash or overflow. The graduation marks are clear and easy reading, and the plunger works smoothly, convenient to use. Spcifications: Material: Hard plastic Glue Plug: Latex Capacity: 3ml Available size: 1ml,2.5ml,3ml,5ml,10ml,20ml, 30ml, 60ml, 100ml, 150ml, 250ml, 300ml, 350ml,500ml And depends on buyer'),
(56, 10, '2020-09-19 09:39:22', 'FDA approved medical device disposable syringe with needle no needle', 'syrin5.webp', 550, 'health equipment(Syringe)', 'Medical Disposable Syringes Heavy-duty plastic disposable nutrient syringes with no hypodermic needle, solve the problem of liquid splash or overflow. The graduation marks are clear and easy reading, and the plunger works smoothly, convenient to use. Spcifications: Material: Hard plastic Glue Plug: Latex Capacity: 3ml Available size: 1ml,2.5ml,3ml,5ml,10ml,20ml, 30ml, 60ml, 100ml, 150ml, 250ml, 300ml, 350ml,500ml And depends on buyer'),
(57, 11, '2020-09-19 09:39:22', '2017 New high quality personal wholesale Inhaler Electric therapy Asthma Compressor Medical Machine', 'inhaler3.webp', 2250, 'health equipment(Inhaler)', ' disposable medical asthma inhaler spacer devices Medical inhaler spacer 1.Used with metered dose inhalers 2.With different size of masks, mouthpiece 3.Anti Static plastic Function: it is an auxiliary tool of MDI for asthma treatment, and it is used to store aerosol. It is mainly used among animals with poor coordination of inhalation and hand gestures, or obvious side effect in throat after using aerosol. Especially, spacer can significantly reduce side effect of cortical hormone inhalation. Advantages: 1,Optimizes the delivery of MDI asthma medication. 2,Compatible with most MDI (metered dose inhaler) actuators.'),
(58, 11, '2020-09-19 09:39:22', 'Hot Air Compressor Inhaler 220v Nebulizer', 'inhaler4.webp', 4250, 'health equipment(Inhaler)', ' disposable medical asthma inhaler spacer devices Medical inhaler spacer 1.Used with metered dose inhalers 2.With different size of masks, mouthpiece 3.Anti Static plastic Function: it is an auxiliary tool of MDI for asthma treatment, and it is used to store aerosol. It is mainly used among animals with poor coordination of inhalation and hand gestures, or obvious side effect in throat after using aerosol. Especially, spacer can significantly reduce side effect of cortical hormone inhalation. Advantages: 1,Optimizes the delivery of MDI asthma medication. 2,Compatible with most MDI (metered dose inhaler) actuators.'),
(59, 11, '2020-09-19 09:39:22', 'Mini oxygen inhaler', 'inhaler5.webp', 2240, 'health equipment(Inhaler)', ' disposable medical asthma inhaler spacer devices Medical inhaler spacer 1.Used with metered dose inhalers 2.With different size of masks, mouthpiece 3.Anti Static plastic Function: it is an auxiliary tool of MDI for asthma treatment, and it is used to store aerosol. It is mainly used among animals with poor coordination of inhalation and hand gestures, or obvious side effect in throat after using aerosol. Especially, spacer can significantly reduce side effect of cortical hormone inhalation. Advantages: 1,Optimizes the delivery of MDI asthma medication. 2,Compatible with most MDI (metered dose inhaler) actuators.'),
(60, 12, '2020-09-19 09:39:22', 'Skyforever 95mm round silicon rubber heating pad medical', 'heat1.webp', 250, 'health equipment(heating pad)', '1 Type:Electric Heater\r\n2 Power Source:Electric, Electric\r\n3 Dimension(L*W*H):Custom\r\n4 Condition:New\r\n5 Place of Origin:dhaka,bangladesh\r\n6 Brand Name:Alixd\r\n7 Model Number:XD-H\r\n8 Voltage:12/24/110/220/380/230V, Custom\r\n9 Power(W):Custom'),
(61, 12, '2020-09-19 09:39:22', 'customized heating pad with temperature controller', 'heat2.webp', 350, 'health equipment(heating pad)', '1 Type:Electric Heater\r\n2 Power Source:Electric, Electric\r\n3 Dimension(L*W*H):Custom\r\n4 Condition:New\r\n5 Place of Origin:dhaka,bangladesh\r\n6 Brand Name:Alixd\r\n7 Model Number:XD-H\r\n8 Voltage:12/24/110/220/380/230V, Custom\r\n9 Power(W):Custom'),
(62, 12, '2020-09-19 09:39:22', 'Disposable Wellness Self Heating Patch Women Body Pad', 'heat3.webp', 350, 'health equipment(heating pad)', '1 Type:Electric Heater\r\n2 Power Source:Electric, Electric\r\n3 Dimension(L*W*H):Custom\r\n4 Condition:New\r\n5 Place of Origin:dhaka,bangladesh\r\n6 Brand Name:Alixd\r\n7 Model Number:XD-H\r\n8 Voltage:12/24/110/220/380/230V, Custom\r\n9 Power(W):Custom\r\n'),
(63, 12, '2020-09-19 09:39:22', 'Heat Cold Compress Shoulder Therapy Wrap -  Pad for Swelling, Injuries, Headache', 'heat4.webp', 350, 'health equipment(heating pad)', '1 Type:Electric Heater\r\n2 Power Source:Electric, Electric\r\n3 Dimension(L*W*H):Custom\r\n4 Condition:New\r\n5 Place of Origin:dhaka,bangladesh\r\n6 Brand Name:Alixd\r\n7 Model Number:XD-H\r\n8 Voltage:12/24/110/220/380/230V, Custom\r\n9 Power(W):Custom\r\n'),
(64, 12, '2020-09-19 09:39:22', 'Custom Made Electric Flexible Silicone Heater Battery Operated Reptile Heating Pad', 'heat5.webp', 650, 'health equipment(heating pad)', '1 Type:Electric Heater\r\n2 Power Source:Electric, Electric\r\n3 Dimension(L*W*H):Custom\r\n4 Condition:New\r\n5 Place of Origin:dhaka,bangladesh\r\n6 Brand Name:Alixd\r\n7 Model Number:XD-H\r\n8 Voltage:12/24/110/220/380/230V, Custom\r\n9 Power(W):Custom\r\n'),
(65, 13, '2020-09-19 09:39:22', 'Factory made 2000ml hot water bag with cover', 'hot1.webp', 300, 'health equipment(Hot Water Bag)', '1 Type:Hand Warming\r\n2 Product Type:Water-filling Hot-water Bag\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Brand Name:OEM\r\n5 Product name:Factory made 2000ml hot water bag with cover\r\n6 Key Word:Hot water bag\r\n7 Material:Knitted Cloth\r\n8 Color:Customized\r\n9 Size:24cm*34cm'),
(66, 13, '2020-09-19 09:39:22', 'Hot sale designed fleece plush covered rubber hot water bag/bottles', 'hot2.webp', 250, 'health equipment(Hot Water Bag)', '1 Type:Hand Warming\r\n2 Product Type:Water-filling Hot-water Bag\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Brand Name:OEM\r\n5 Product name:Factory made 2000ml hot water bag with cover\r\n6 Key Word:Hot water bag\r\n7 Material:Knitted Cloth\r\n8 Color:Customized\r\n9 Size:24cm*34cm'),
(67, 13, '2020-09-19 09:39:22', 'hand warmer massage bottle rechargeable electric hot water bag', 'hot3.webp', 450, 'health equipment(Hot Water Bag)', '1 Type:Hand Warming\r\n2 Product Type:Water-filling Hot-water Bag\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Brand Name:OEM\r\n5 Product name:Factory made 2000ml hot water bag with cover\r\n6 Key Word:Hot water bag\r\n7 Material:Knitted Cloth\r\n8 Color:Customized\r\n9 Size:24cm*34cm'),
(68, 13, '2020-09-19 09:39:22', 'hand warmer massage bottle rechargeable electric hot water bags from ', 'hot4.webp', 340, 'health equipment(Hot Water Bag)', '1 Type:Hand Warming\r\n2 Product Type:Water-filling Hot-water Bag\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Brand Name:OEM\r\n5 Product name:Factory made 2000ml hot water bag with cover\r\n6 Key Word:Hot water bag\r\n7 Material:Knitted Cloth\r\n8 Color:Customized\r\n9 Size:24cm*34cm'),
(69, 13, '2020-09-19 09:39:22', 'Manufacturing Cute Animal Bear Shape Silicon Hot Water Bag', 'hot5.webp', 390, 'health equipment(Hot Water Bag)', '1 Type:Hand Warming\r\n2 Product Type:Water-filling Hot-water Bag\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Brand Name:OEM\r\n5 Product name:Factory made 2000ml hot water bag with cover\r\n6 Key Word:Hot water bag\r\n7 Material:Knitted Cloth\r\n8 Color:Customized\r\n9 Size:24cm*34cm'),
(70, 13, '2020-09-19 09:39:22', 'luxury faux fur bottle cover 2L rubber medical hot water bag', 'hot6.webp', 350, 'health equipment(Hot Water Bag)', '1 Type:Hand Warming\r\n2 Product Type:Water-filling Hot-water Bag\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Brand Name:OEM\r\n5 Product name:Factory made 2000ml hot water bag with cover\r\n6 Key Word:Hot water bag\r\n7 Material:Knitted Cloth\r\n8 Color:Customized\r\n9 Size:24cm*34cm'),
(71, 14, '2020-09-19 09:39:22', 'Knee Wrap Cooler instant hot cold pack For Medical Supply', 'ice1.webp', 250, 'health equipment(Ice Pack)', '1 Properties:Rehabilitation Therapy Supplies\r\n2 Place of Origin:Chittagong,China\r\n3 Brand Name: bingfan\r\n4 Model Number: LW19\r\n5 Type: Hot & Cold Packs\r\n6 Material:PA+PE\r\n7 Color:Pantone Color\r\n8 Size:17*11CM\r\n9 Weight:107G\r\n10 Usage:Body Health Care\r\n'),
(72, 14, '2020-09-19 09:39:22', 'High quality disposable medical ice pack for sport injury', 'ice2.webp', 150, 'health equipment(Ice Pack)', '1 Properties:Rehabilitation Therapy Supplies\r\n2 Place of Origin:Chittagong,China\r\n3 Brand Name: bingfan\r\n4 Model Number: LW19\r\n5 Type: Hot & Cold Packs\r\n6 Material:PA+PE\r\n7 Color:Pantone Color\r\n8 Size:17*11CM\r\n9 Weight:107G\r\n10 Usage:Body Health Care\r\n'),
(73, 14, '2020-09-19 09:39:22', 'Best Selling physical medical ice pack Comfortable rectangle Gel Hot and Cold Pack', 'ice3.webp', 250, 'health equipment(Ice Pack)', '1 Properties:Rehabilitation Therapy Supplies\r\n2 Place of Origin:Chittagong,China\r\n3 Brand Name: bingfan\r\n4 Model Number: LW19\r\n5 Type: Hot & Cold Packs\r\n6 Material:PA+PE\r\n7 Color:Pantone Color\r\n8 Size:17*11CM\r\n9 Weight:107G\r\n10 Usage:Body Health Care\r\n'),
(74, 14, '2020-09-19 09:39:22', 'Back Pain Cold Reusable Ice Pack Belt Therapy For Lower Lumbar , Sciatic Nerve Pain Relief Reusable Gel Flexible Medical Grade', 'ice4.webp', 150, 'health equipment(Ice Pack)', '1 Properties:Rehabilitation Therapy Supplies\r\n2 Place of Origin:Chittagong,China\r\n3 Brand Name: bingfan\r\n4 Model Number: LW19\r\n5 Type: Hot & Cold Packs\r\n6 Material:PA+PE\r\n7 Color:Pantone Color\r\n8 Size:17*11CM\r\n9 Weight:107G\r\n10 Usage:Body Health Care\r\n'),
(75, 14, '2020-09-19 09:39:22', 'Medical rehabilitation therapy 6inch 9inch ice bag fabric ice pack', 'ice5.webp', 350, 'health equipment(Ice Pack)', '1 Properties:Rehabilitation Therapy Supplies\r\n2 Place of Origin:Chittagong,China\r\n3 Brand Name: bingfan\r\n4 Model Number: LW19\r\n5 Type: Hot & Cold Packs\r\n6 Material:PA+PE\r\n7 Color:Pantone Color\r\n8 Size:17*11CM\r\n9 Weight:107G\r\n10 Usage:Body Health Care\r\n'),
(76, 14, '2020-09-19 09:39:22', 'Wholesale small cold packs for ice food', 'ice6.webp', 250, 'health equipment(Ice Pack)', '1 Properties:Rehabilitation Therapy Supplies\r\n2 Place of Origin:Chittagong,China\r\n3 Brand Name: bingfan\r\n4 Model Number: LW19\r\n5 Type: Hot & Cold Packs\r\n6 Material:PA+PE\r\n7 Color:Pantone Color\r\n8 Size:17*11CM\r\n9 Weight:107G\r\n10 Usage:Body Health Care\r\n'),
(77, 15, '2020-09-19 09:39:22', 'Reusable 60ui 3 ML insuline injectors medical plastic syringes', 'insulin1.webp', 350, 'health equipment(Insulin)', '\r\n1. Optimum treatment with maximun sinplicity\r\n2. sterile, Non-toxic, Non-pyrogenic\r\n3. Double point system\r\n4. Patient point with triple beveling for easy and atraumatic\r\n5. Cartridge point sharpened for a perfect punch with no fragmentation\r\n6. Easy flow of medication without any impurities\r\n7. Compatible with all available pen models.\r\n'),
(78, 15, '2020-09-19 09:39:22', 'Disposable medical orange cap 1ml insulin syringe with fixed needle', 'insulin2.webp', 550, 'health equipment(Insulin)', '\r\n1. Optimum treatment with maximun sinplicity\r\n2. sterile, Non-toxic, Non-pyrogenic\r\n3. Double point system\r\n4. Patient point with triple beveling for easy and atraumatic\r\n5. Cartridge point sharpened for a perfect punch with no fragmentation\r\n6. Easy flow of medication without any impurities\r\n7. Compatible with all available pen models.\r\n'),
(79, 15, '2020-09-19 09:39:22', 'EO sterile disposable medical 31g 32g 33g 34g safety insulin pen needles', 'insulin3.webp', 550, 'health equipment(Insulin)', '\r\n1. Optimum treatment with maximun sinplicity\r\n2. sterile, Non-toxic, Non-pyrogenic\r\n3. Double point system\r\n4. Patient point with triple beveling for easy and atraumatic\r\n5. Cartridge point sharpened for a perfect punch with no fragmentation\r\n6. Easy flow of medication without any impurities\r\n7. Compatible with all available pen models.\r\n'),
(80, 15, '2020-09-19 09:39:22', 'Disposable Medical Insulin Pen Needle 31G 8mm, CE FDA', 'insulin4.webp', 350, 'health equipment(Insulin)', '\r\n1. Optimum treatment with maximun sinplicity\r\n2. sterile, Non-toxic, Non-pyrogenic\r\n3. Double point system\r\n4. Patient point with triple beveling for easy and atraumatic\r\n5. Cartridge point sharpened for a perfect punch with no fragmentation\r\n6. Easy flow of medication without any impurities\r\n7. Compatible with all available pen models.\r\n'),
(81, 15, '2020-09-19 09:39:22', 'medical first aid cooler bag of medical product insuline, first aid diabetes insulin', 'insulin5.webp', 350, 'health equipment(Insulin)', '\r\n1. Optimum treatment with maximun sinplicity\r\n2. sterile, Non-toxic, Non-pyrogenic\r\n3. Double point system\r\n4. Patient point with triple beveling for easy and atraumatic\r\n5. Cartridge point sharpened for a perfect punch with no fragmentation\r\n6. Easy flow of medication without any impurities\r\n7. Compatible with all available pen models.\r\n'),
(82, 1, '2020-09-19 09:39:22', 'Medical adhesive bandage non woven', 'bandaid6.webp', 40, 'health equipment (bandaid)', 'Type: Adhesive Bandages(Tapes)\r\nBrand name:Gspmed or Gsport or Gspcare\r\nModel number:GSPKTP-001/GSPKTSF-001\r\nOrigin:Hangzhou,China\r\nMaterial:Cotton\r\nGlue:Acrylic adhesive\r\nSize:5.0cm*5m\r\nColor:Multy also can be customed\r\nClassification:Class I\r\nPrinting Logo:available\r\nOEM:  available\r\nAdvantages:Water-resistant,Highly elastic\r\nApplication: Sports protection, rehabilitation therapy\r\nPackage:1roll/film or gift box'),
(83, 4, '2020-09-19 09:39:22', 'Medical Equipment Infantile Umbilical Paste /Instant Cooling Patch', 'patch5.webp', 350, 'health equipment(patch)', 'Properties:Rehabilitation Therapy Supplies\r\nPlace of Origin:bangladesh\r\nBrand Name:Ugel\r\nModel Number:LFT-5\r\nType:Hot & Cold Packs\r\nSize:7 x 10 x 0.15CM\r\nWeight:8 Â± 0.5\r\nMaterial:Elastic Fabric / Gel Layer / Transparent Film\r\nColor:Blue / Green / Orange / Yellow / Pink ,purple or customized colors\r\nFeature:Powerful Effect on Pain Reliefing\r\nMain Ingredients:Hydro Gel / Glycerol / Menthol (Few) / Macromolecule\r\nWarranty Period:2 Years\r\nPacking:Plastic Pouch / Color Box / Carton\r\nSample:Free\r\nHS Code:3005909000\r\n'),
(84, 6, '2020-09-19 09:39:22', 'Wholesale multifunction early diagnosis adults medical equipment stethoscope', 'stetho6.webp', 2500, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(85, 12, '2020-09-19 09:39:22', 'Rehabilitation Far Infrared Medical Battery Powered Pain Relief Heat Therapy Pad', 'heat6.webp', 240, 'health equipment(heating pad)', '1 Type:Electric Heater\r\n2 Power Source:Electric, Electric\r\n3 Dimension(L*W*H):Custom\r\n4 Condition:New\r\n5 Place of Origin:dhaka,bangladesh\r\n6 Brand Name:Alixd\r\n7 Model Number:XD-H\r\n8 Voltage:12/24/110/220/380/230V, Custom\r\n9 Power(W):Custom'),
(86, 9, '2020-09-19 09:39:22', 'Electronic analytical balance scale/lab electronic balance/LCD screen', 'weight6.webp', 1240, 'health equipment(Weight Scale)', '1 Place of Origin:dhaka, bangladesh\r\n2 Brand Name:LWG\r\n3 Model Number:LWG0001CS\r\n4 Type:weight scale\r\n5 Power Supply:Battery\r\n6 Display Type:LED LCD\r\n7 Rated Load:150kg\r\n8 Accuracy:g/kg/lb\r\n9 Product name:Digital Body Scales\r\n10 Material:ABS+Tempered Glass\r\n11 Warranty:1 Year'),
(87, 4, '2020-09-19 09:39:22', 'KONGDY Custom medical therapy patch herbal pain patch chinese capsicum plaster', 'patch4.webp', 90, 'health equipment(patch)', 'Properties:Rehabilitation Therapy Supplies\r\nPlace of Origin:bangladesh\r\nBrand Name:Ugel\r\nModel Number:LFT-5\r\nType:Hot & Cold Packs\r\nSize:7 x 10 x 0.15CM\r\nWeight:8 Â± 0.5\r\nMaterial:Elastic Fabric / Gel Layer / Transparent Film\r\nColor:Blue / Green / Orange / Yellow / Pink ,purple or customized colors\r\nFeature:Powerful Effect on Pain Reliefing\r\nMain Ingredients:Hydro Gel / Glycerol / Menthol (Few) / Macromolecule\r\nWarranty Period:2 Years\r\nPacking:Plastic Pouch / Color Box / Carton\r\nSample:Free\r\nHS Code:3005909000\r\n'),
(88, 2, '2020-09-19 09:39:22', 'Wholesale professional shock proof small air pressure digital pressure gauges', 'gauge6.webp', 940, 'health equipment(gauge)', 'Name:pressure gauge\r\nSize:2.5\"(63mm)\r\nMeasurement Range: 0-100kg/1500PSI  or Customized\r\nAccuracy:1.6\r\nOperating temperature:-25Â°C to +75Â°C\r\nCase:Stainless steel\r\nBezel:Stainless steel\r\nBourdon tube:Copper alloy or Stainless steel\r\nConnection:Brass(base)\r\nMovement:Brass\r\nDial:Aluminum\r\nPointer:Aluminum\r\nType:Oil filled pressure gauge'),
(89, 3, '2020-09-19 09:39:22', 'Survival Rescue Scissors Edc Emt Emergency Medical First Aid', 'sci6.jpg', 350, 'health equipment(Scissors)', 'Multi-purpose, this Paramedic Bandage Scissors are the best all purpose shears on the marke.\r\nA 30 % larger handle means greater comfort. Blades are surgical sharp and made of 420 stainless steel for easier cutting.\r\nStrong rivets on both sides of the blade gives you more cutting power.\r\nColored plastic tip allows easy slide of blade under any type of tape, bandage, or clothing.\r\n Packing: 1 pcs / opp bag, 500 pcs / ctn, ctn meas.: 33x22x48 cm, GW /NW 19KG / 18KG'),
(90, 5, '2020-09-19 09:39:22', 'home medical body temperature meter non-contact digital thermometer ', 'thermo6.webp', 550, 'health equipment(Thermometer)', '1 Product Name	Medical Rigid Digital Thermometer With Beeper and Alarm\r\n2 Model	YT323\r\n3 Range	32â„ƒ-42.9â„ƒ(90â„‰-109.2â„‰)\r\n4 Accuracy Â±0.1Â°C\r\n5 Beeper Function Fever Alarm\r\n6 Memory Last measuring reading\r\n7 Battery Type	LR41,1.5V\r\n8 Battery Life	About 250 hours or over 1000 times\r\n9 Unit Weight Approx 10g\r\n10 Unit Dimension 127mmÃ—20mmÃ—10mm'),
(91, 6, '2020-09-19 09:39:22', 'Wholesale multifunction medical  stethoscope', 'stetho5.webp', 8500, 'health equipment(Stethoscope)', '1 Type:Stethoscope\r\n2 Brand Name:OEM available\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:KT-102B1, KT-102B1\r\n5 Certification:CE/ISO'),
(92, 7, '2020-09-19 09:39:22', 'High accurate less retesting painless glucose monitor gluco check glucose meter strips with glucose biosensor URIT-26', 'glu6.webp', 1540, 'health equipment(Blood Glucose Meter)', '1 Type: Biochemical Analysis System\r\n2 Brand Name:LYSUN\r\n3 Model Number: BGM-101\r\n4 Place of Origin:dhaka,bangladesh\r\n5 Instrument classification: Class II\r\n6 Warranty: 1 year\r\n7 After-sale Service: NONE\r\n8 Product name: blood glucose meter\r\n9 specimen: venous blood\r\n10 Sample Adding Amount:1Î¼L'),
(93, 8, '2020-09-19 09:39:22', 'Medical bluetooth 4.0 blood pressure meter electronic wrist blood pressure monitor', 'moni6.webp', 5240, 'health equipment(Blood Pressure Monitor)', '1 Type:Blood Pressure Monitor\r\n2 Brand Name:leyte\r\n3 Place of Origin:dhaka,bangladesh\r\n4 Model Number:JZK-002ASY\r\n5 Instrument classification:Class II\r\n6 TYPE::digital electronic blood pressure monitor\r\n7 storage::99 sets of storage,IHB arrhythmia detection\r\n8 Voltage::Voltage power detection,Low power consumption\r\n9 Dimention:: 77.5mm*68mm*30mm (not include Wristbands)\r\n10 Display::Digital liquid crystal display'),
(94, 10, '2020-09-19 09:39:22', 'Disposable medical syringe, 3ml 5ml 10ml syringe with needle for sale', 'syrin6.webp', 250, 'health equipment(Syringe)', 'Medical Disposable Syringes Heavy-duty plastic disposable nutrient syringes with no hypodermic needle, solve the problem of liquid splash or overflow. The graduation marks are clear and easy reading, and the plunger works smoothly, convenient to use. Spcifications: Material: Hard plastic Glue Plug: Latex Capacity: 3ml Available size: 1ml,2.5ml,3ml,5ml,10ml,20ml, 30ml, 60ml, 100ml, 150ml, 250ml, 300ml, 350ml,500ml And depends on buyer'),
(95, 11, '2020-09-19 09:39:22', 'CE approved portable oxygen inhaler for sale MSLKY07', 'inhaler6.webp', 2500, 'health equipment(Inhaler)', 'disposable medical asthma inhaler spacer devices Medical inhaler spacer 1.Used with metered dose inhalers 2.With different size of masks, mouthpiece 3.Anti Static plastic Function: it is an auxiliary tool of MDI for asthma treatment, and it is used to store aerosol. It is mainly used among animals with poor coordination of inhalation and hand gestures, or obvious side effect in throat after using aerosol. Especially, spacer can significantly reduce side effect of cortical hormone inhalation. Advantages: 1,Optimizes the delivery of MDI asthma medication. 2,Compatible with most MDI (metered dose inhaler) actuators.'),
(96, 15, '2020-09-19 09:39:22', 'medical  bag of  insuline', 'insulin6.webp', 2500, 'health equipment(Insulin)', '1. Optimum treatment with maximun sinplicity\r\n2. sterile, Non-toxic, Non-pyrogenic\r\n3. Double point system\r\n4. Patient point with triple beveling for easy and atraumatic\r\n5. Cartridge point sharpened for a perfect punch with no fragmentation\r\n6. Easy flow of medication without any impurities\r\n7. Compatible with all available pen models.\r\n'),
(97, 15, '2020-09-19 09:39:22', 'Insulin test type1', 'insulin.webp', 20, 'INST01', 'Test type insulin 1');

-- --------------------------------------------------------

--
-- Table structure for table `health_equipment_cat`
--

CREATE TABLE `health_equipment_cat` (
  `health_equipment_cat_id` int(10) NOT NULL,
  `health_equipment_cat_title` text NOT NULL,
  `health_equipment_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_equipment_cat`
--

INSERT INTO `health_equipment_cat` (`health_equipment_cat_id`, `health_equipment_cat_title`, `health_equipment_cat_desc`) VALUES
(1, 'BandAid', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(2, 'Gauge', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(3, 'Scissors', ' We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(4, 'Patch', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(5, 'Thermometer', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(6, 'Stethoscope', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(7, 'Blood Glucose meter', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(8, 'Blood Pressure Monitor', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(9, 'Weight Scale', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(10, 'Syringe', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(11, 'Inhaler', ' We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(12, 'Heating Pad', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(13, 'Hot Water bag', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(14, 'Ice Pack', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.'),
(15, 'Insulin', 'We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.');

-- --------------------------------------------------------

--
-- Table structure for table `main_cat`
--

CREATE TABLE `main_cat` (
  `main_cat_id` int(10) NOT NULL,
  `main_cat_title` text NOT NULL,
  `main_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_cat`
--

INSERT INTO `main_cat` (`main_cat_id`, `main_cat_title`, `main_cat_desc`) VALUES
(1, 'Health Equipment', 'this is a health equipment category'),
(2, 'Medicines', 'this is a medicine category'),
(3, 'HealthCare', 'this is a health care category');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `medicines_cat_id` int(11) NOT NULL,
  `medicines_cat_title` varchar(255) NOT NULL,
  `medicines_cat_desc` varchar(255) NOT NULL,
  `medicines_main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pending_order`
--

CREATE TABLE `pending_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_order`
--

INSERT INTO `pending_order` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `quantity`, `order_status`) VALUES
(3, 3, 1563757116, '96', 1, 'pending'),
(4, 3, 1814860701, '97', 2, 'pending'),
(5, 3, 1814860701, '87', 2, 'pending'),
(6, 3, 595174188, '92', 1, 'pending'),
(7, 3, 135024979, '88', 1, 'pending'),
(8, 1, 2061057435, '93', 1, 'pending'),
(9, 1, 2061057435, '96', 1, 'pending'),
(10, 6, 777112442, '97', 2, 'pending'),
(11, 6, 490969327, '89', 1, 'pending'),
(12, 1, 0, '96', 1, 'pending'),
(13, 3, 0, '86', 1, 'pending'),
(14, 3, 491644521, '4', 1, 'pending'),
(15, 3, 1782803930, '97', 2, 'pending'),
(16, 3, 750016564, '97', 3, 'pending'),
(17, 3, 750016564, '95', 2, 'pending'),
(18, 6, 1857511661, '4', 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `save_contact_us_message`
--

CREATE TABLE `save_contact_us_message` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `save_contact_us_message`
--

INSERT INTO `save_contact_us_message` (`ID`, `Name`, `Email`, `Phone`, `Message`) VALUES
(1, 'Tahiya', 'tahiya@yahoo.com', '01762341211', 'Message01'),
(2, 'Tahiya', 'tahiya@yahoo.com', '01762341211', 'Message01'),
(3, 'Xoa', 'xoa@gmail.com', '01762341211', 'Hello world'),
(4, 'Ahmed', 'ahmed@gmail.com', '01111111111', 'Checking'),
(5, 'tamanna', 'tamanna@gmail.com', '01762341200', 'Checking Sept 9');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'slide number 1', 'slide-1.jpg'),
(2, 'slide number 2', 'slide-2.jpg'),
(3, 'slide number 3', 'slide-3.jpg'),
(4, 'slide number 4', 'slide-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ip_add` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `phone`, `country`, `city`, `address`, `ip_add`) VALUES
(1, 'Tamanna', 'tamanna@gmail.com', 'tamanna', 'tamanna', '01899999999', 'Bangladesh', 'Dhaka', 'Def Street', '::1'),
(3, 'Xoa', 'xoa@gmail.com', 'xoa', 'xoa', '01899999800', 'Bangladesh', 'Sylhet', 'Downtown Street', '::1'),
(6, 'Tahiya', 'tahiya@gmail.com', 'tahiya', 'tahiya', '01899999977', 'Bangladesh', 'Dhaka', 'Abc Street', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_images`
--
ALTER TABLE `about_us_images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `health_equipment`
--
ALTER TABLE `health_equipment`
  ADD PRIMARY KEY (`health_equipment_id`);

--
-- Indexes for table `health_equipment_cat`
--
ALTER TABLE `health_equipment_cat`
  ADD PRIMARY KEY (`health_equipment_cat_id`);

--
-- Indexes for table `main_cat`
--
ALTER TABLE `main_cat`
  ADD PRIMARY KEY (`main_cat_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicines_cat_id`);

--
-- Indexes for table `pending_order`
--
ALTER TABLE `pending_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `save_contact_us_message`
--
ALTER TABLE `save_contact_us_message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_images`
--
ALTER TABLE `about_us_images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `health_equipment`
--
ALTER TABLE `health_equipment`
  MODIFY `health_equipment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `health_equipment_cat`
--
ALTER TABLE `health_equipment_cat`
  MODIFY `health_equipment_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `main_cat`
--
ALTER TABLE `main_cat`
  MODIFY `main_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `medicines_cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_order`
--
ALTER TABLE `pending_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `save_contact_us_message`
--
ALTER TABLE `save_contact_us_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
