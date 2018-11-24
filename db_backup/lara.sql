-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 05:33 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_type` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `admin_type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super@admin.com', 1, '$2y$10$hZRZiBmJWAk1WK4T6eGYS.QAp9rl.A8LcLilY.q/kK8Ffu62VF3Kq', 'lYEtWDeSrN1tuzO57N8Hv1QYxvVi5r49xguLhVA7n1zr9VYo1ERgethqlFUZ', NULL, '2016-08-26 19:46:06'),
(2, 'admin', 'admin@masudcoder.com', 2, '$2y$10$hZRZiBmJWAk1WK4T6eGYS.QAp9rl.A8LcLilY.q/kK8Ffu62VF3Kq', '7W85TH1s6k9yqCJGDdostKuw7rCETnpdKI33KGO8hu6bz5kkmPWzRIdnAmvg', NULL, '2017-02-20 21:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_long_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` int(11) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `count_product` int(11) NOT NULL,
  `category_sort_order` int(11) NOT NULL,
  `meta_key` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_row_id` int(11) NOT NULL,
  `category_row_id` int(11) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL,
  `post_url_link` varchar(255) NOT NULL,
  `has_content` tinyint(1) NOT NULL DEFAULT '0',
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`post_row_id`, `category_row_id`, `active_status`, `sort_order`, `post_url_link`, `has_content`, `post_title`, `post_content`, `created_at`, `updated_at`) VALUES
(1, 58, 1, 0, 'Web-Crawler', 0, 'Web Crawler', 'A Web crawler is an Internet bot which systematically browses the World Wide Web, typically for the purpose of Web indexing (web spidering). Web search ...', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 56, 1, 1, 'install-laravel-in-windows', 1, 'Install laravel in windows', '<p>1. Install Composer<br />2. Create a folder inside htdocs named \"laravelProject\"<br />3. Open cmd and run<br />&nbsp; &nbsp;composer create-project laravel/laravel &nbsp;D:/xampp/htdocs/laravelProject<br /><br />You can keep the project anywhere and can run it. It is the simplest way to install laravel in windows. It will install latest version of laravel.<br />For more details it is better to visit&nbsp;&nbsp;<a href=\"https://www.laravel.com/docs/5.3/installation\">https://www.laravel.com/docs/5.3/installation</a> because everything is there.</p>', '0000-00-00 00:00:00', '2016-08-25 16:30:55'),
(4, 57, 1, 0, 'my-sql-null-value', 1, 'My SQL Null Value', '<p><strong>o &nbsp;is not null</strong><br /> <strong>\'\' is not null<br /> \' &nbsp;\' &nbsp;is not null<br /> Only null is null<br /> <code>Any operation with null makes the output&nbsp;null.</code></strong><br /> SELECT &nbsp;2/0 &nbsp; &nbsp; &nbsp; &nbsp;//output: null<br /> SELECT 2*null &nbsp; //output: null<br /> SELECT ISNULL(NULL) &nbsp;//output: 1<br /> SELECT ISNULL(0)&nbsp;//output: 0<br /> SELECT ISNULL(\'\')&nbsp;//output: 0<br /> SELECT ISNULL(\' \')&nbsp;//output: 0</p>\r\n<p>&nbsp;</p>', '0000-00-00 00:00:00', '2016-08-25 16:43:40'),
(6, 57, 1, 0, 'mysql-storage-engine', 1, 'MySQL Storage Engine', '<p><strong>1. MyISAM</strong><br /><strong>2.InnoDB<br /></strong>3. Memory<br />4.CSV<br />5.Merge<br />and some others.<br /><br />Usually MyISAM and InnoDB are used.<br /><br /><strong>MyISAM was default storage engine up to My SQL 5.5. &nbsp;InnoDB is the default storage engine in&nbsp;MySQL 5.5 and Later version.<br /><br />MyISAM:&nbsp; <br />&nbsp;</strong>&gt;&gt;Faster than InnoDB<strong> <br /></strong>&nbsp;&gt;&gt;It is good when there are lot of&nbsp;read operations in table. &nbsp;<br /><strong>&nbsp;</strong>&gt;&gt;Good for Full-text Search<br /><strong>&nbsp;</strong>&gt;&gt;Does not support&nbsp;transactions<br />&gt;&gt;Supports Table level locking<br /><br /><strong>InnoDB:</strong><br />&gt;&gt;Support &nbsp;transaction that is necessary in finance module, specially in banking software.<br />&gt;&gt;support row level locking<br />&gt;&gt;Foreign key constraints<br />&gt;&gt;Crash recovery, more resistant to table corruption.<br />&gt;&gt; Good when there are more write operations in the table.<strong><br /></strong><br /><strong>Memory:</strong><br />&gt;&gt;Fastest<br />&gt;&gt;Good for Creation of &nbsp;temporary tables.<br />&gt;&gt;Data is lost when database is restarted, Table is not destroyed but no data will be there.<br />&nbsp;</p>\r\n<p>&nbsp;</p>', '0000-00-00 00:00:00', '2016-08-25 16:05:56'),
(7, 57, 1, 0, 'MySQL keys', 1, 'Keys', '<p>1. Primary<br />2. Unique ( unique is unique:) &nbsp;accepts&nbsp;0)<br />3. Index (Mainly used to make the searching faster)<br />4. FullText ( created on text based column like varchar,text - to speed up query)<br />5. Spatial ( used in Geo Object shape- related functions&nbsp;<strong class=\"userinput\"><code>MBRContains,&nbsp;</code></strong><strong class=\"userinput\"><code>MBRWithin</code></strong>)</p>', '0000-00-00 00:00:00', '2016-08-25 15:35:43'),
(8, 69, 1, 0, 'What-is-Maria-DB\r\n', 0, 'What is Maria DB\r\n', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 61, 1, 0, 'What-is-API\r\n', 0, 'What is an API\r\n', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 61, 1, 0, 'Web-Service-Soup-Rest', 0, 'Web Service (Soup Rest)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 70, 1, 0, 'mongo-db', 0, 'Mongo DB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 56, 1, 9, 'laravel-error-maximum-function-nesting-level-of-100-reached-aborting', 1, 'Laravel Error: Maximum function nesting level of \'100\' reached, aborting', '<p>Open bootstrap/autoload.php write a line of code.<br /> ini_set(\'xdebug.max_nesting_level\', 400);</p>', '0000-00-00 00:00:00', '2016-08-25 16:31:19'),
(64, 56, 1, 8, 'how-to-see-the-version-of-laravel', 1, 'How to see the version of laravel', '<p>1. php artisan ? -v <br />2. vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php<br /> see const VERSION = \'version no\';</p>', '0000-00-00 00:00:00', '2016-08-25 16:32:03'),
(66, 57, 1, 0, 'mysql-optimization', 1, 'MySQL Optimization', '<ol>\r\n<li><strong>Indexing<br /><br /></strong></li>\r\n<li><strong>Avoidance of Sub Query.</strong><br />&gt;&gt; Splitting&nbsp;queries may cause problem in MYISAM as<strong> transaction</strong> not available. If It is INNODB then you will get transaction support as well as row level locking.<br /><br /></li>\r\n<li><strong>Understanding Engine</strong>: My sql has two primary storage. MYISAM, INNODB.<br />MY ISAM is good for read heavy data where InnoDB is good for write heavy data. MyISAM has internal cache that stores how many rows in tables. So count(*) query is faster in MYISAM, innoDB has such no cache, so it is expensive. InnoDB supports<br />transaction but MyISAM does not. So, depending on the application you should choose the storage &nbsp;Engine.<br /><br /></li>\r\n<li><strong>Replication &amp; Sharding</strong><br />Replications-&gt; Distributing DB in more than one location. &nbsp;same data appears in all server.<br /><span style=\"line-height: 1.5;\">Sharding-&gt;&nbsp;Distributing DB in more than one location, different server contains different data.</span></li>\r\n</ol>', '2016-08-21 17:18:03', '2016-08-25 16:44:20'),
(74, 57, 1, 0, 'concat-and-concat-ws-in-mysql', 1, 'CONCAT and  CONCAT_WS  in MYSQL', '<p>SELECT CONCAT(\'-\', \'Masud\', \'Zaman\') //output: &nbsp; -MasudZaman</p>\r\n<p>SELECT CONCAT_WS(\'-\', \'Masud\', \'Zaman\') //output: Masud-Zaman</p>', '2016-08-21 18:32:43', '2016-08-25 16:44:40'),
(75, 57, 1, 0, 'mysql-least-and-greatest', 1, 'MYSQL LEAST and GREATEST', '<p>SELECT&nbsp;LEAST(2,3,5,6) //output 2<br /> SELECT GREATEST&nbsp;(2,3,5,6) //output 6</p>', '2016-08-21 18:34:05', '2016-08-21 18:34:05'),
(76, 56, 1, 7, 'how-to-fix-pdo-exception-in-connectorphp-line-55-in-laravel', 1, 'How to fix PDO Exception in Connector.php line 55 in laravel', '<ol>\r\n<li>Check &nbsp;.env file properly.</li>\r\n<li>Clear cache.</li>\r\n<li>Run migrate</li>\r\n</ol>', '2016-08-21 18:35:13', '2016-08-21 18:35:13'),
(77, 58, 1, 0, 'php7-new-features', 1, 'PHP7 new  features', '<ol>\r\n<li><strong>Faster :</strong> &nbsp;about two times faster than php 5.6<br /><br /></li>\r\n<li>.<strong> Type declaration, Scaler Type hints</strong><br /> <!--?php class B<br ?--> {<br /> public function test(int $i)<br /> {<br /> echo \'Method of child Class is Called\';<br /> }<br /> }<br /> $objB = new B;<br /> $objB-&gt;test(4);<br /> /* Prior to PHP7 version:&nbsp;<strong>Catchable fatal error</strong>: Argument 1 passed to B::test() must be an instance of int, integer given,<br /> you could pass only object and array prior version of php 7. but ithis code works in php 7. */?&gt;<br /><br /></li>\r\n<li><strong>Return type declaration</strong>\r\n<pre>function getResult(int $para1, int $para2 ) : <strong>int</strong> { }\r\n\r\n</pre>\r\n</li>\r\n<li><strong>Error Handling</strong><br /> you can throw an error rather than exception<br /><br /></li>\r\n<li>&nbsp;<strong>Spaceship Operator</strong> : &nbsp;<strong>&lt;=&gt;<br /> </strong>echo&nbsp;1&nbsp;&lt;=&gt;&nbsp;1;&nbsp;//&nbsp;0<br /> echo&nbsp;1&nbsp;&lt;=&gt;&nbsp;2;&nbsp;//&nbsp;-1<br /> echo&nbsp;2&nbsp;&lt;=&gt;&nbsp;1;&nbsp;//&nbsp;1<br /> <strong><br /> </strong>6. <strong>Coalesec Operator</strong>:<br /> <!--?php <br ?--> //if it exists and is not NULL then it prints its\' value.//case-1:<br /> echo $status = $val ?? 2; // $val is not set, output second operand: 2//case-2:<br /> $val = 0;<br /> echo $status = $val ?? 3; //$val is set, output first operand: 0\r\n<p>//case-3:<br /> $val = null;<br /> echo $status = $val ?? 4; //$val is null, output 4</p>\r\n<p>//case-4:<br /> $val = \'\';<br /> echo $status = $val ?? 5; //$val is set, output</p>\r\n<p>// case-5 (terenary operator: no changes done here,&nbsp; for thinking)<br /> $val = 0;<br /> echo $status = $val ? $val : 3; //$val is not true, output second operand: 3</p>\r\n<p>// Think case-2 &amp; case 5.<br /> ?&gt;</p>\r\n<p>7. &nbsp; <strong>&nbsp;Define Constant Array</strong><br /> <!--?php <br ?--> define(\'DISTRICTS\',&nbsp;[<br /> \'Dhaka\',<br /> \'Rajshahi\',<br /> \'Tangail\'<br /> ]);</p>\r\n<p>8. <strong>Clouser ::call()</strong></p>\r\n</li>\r\n</ol>', '2016-08-21 18:35:54', '2016-08-21 19:03:14'),
(78, 71, 1, 0, 'overloading-in-php', 1, 'Overloading in php', '<p><!--?php <br ?--><!--?php </p>\r\n<p>Class A<br ?--><!--?php <br ?-->class A {<br />&nbsp; &nbsp; &nbsp; public function test(int $para)<br />&nbsp; &nbsp; &nbsp; {<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;echo \'function first time\';<br />&nbsp; &nbsp; &nbsp; }<br /><strong>&nbsp; &nbsp; &nbsp;// Declare the test method again with different arguments.&nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n<p>&nbsp; &nbsp; public function test(int $par1, int $para2)<br />&nbsp; &nbsp; &nbsp;{<br />&nbsp; &nbsp; &nbsp; &nbsp; echo \'function second time\';<br />&nbsp; &nbsp; &nbsp;}<br /> }</p>\r\n<p>?&gt;<br /><strong>&nbsp;//Fatal error: Cannot redeclare A::test()&nbsp;</strong><strong><br />Declaring &nbsp;methods&nbsp; with same name &amp; different argument is mainly callled method overloading.</strong> <strong>This code is ok for standard OOP concept. In Java, C it works but in PHP it does not work.</strong> &nbsp;<strong>In this sense PHP does not&nbsp;</strong><strong>support method overloading.<br /></strong>&nbsp;</p>\r\n<p>SO, the question is <strong>How PHP supports overloading.</strong><br /> Actually php overloading works by <strong>magic method.</strong>&nbsp; See the example,</p>\r\n<p><!--?php </p>\r\n<p>Class A<br ?--><!--?php <br ?-->class A {<br />&nbsp; &nbsp; &nbsp;public function __call($name, $arguments)<br />&nbsp; &nbsp; { <br /> <br />&nbsp; &nbsp; &nbsp;echo \'called from: \' . $name ; <br />&nbsp; &nbsp; &nbsp;echo \'Arguments is an array. Elements are: \';<br />&nbsp; &nbsp; &nbsp;print_r($arguments); <br />&nbsp; &nbsp; }<br />}</p>\r\n<p>$obj = new A;<br />$obj-&gt;myAutoMethod(5);&nbsp;<br />$obj-&gt;myAutoSameMethod(5, 6, 7, \'abc\');&nbsp;<br />?&gt;</p>\r\n<p><code>__call() &nbsp;method is called in&nbsp;both cases. In this way it is overloaded and this is called overloading in PHP.</code><br /><br /></p>\r\n<p><strong>Output:</strong></p>\r\n<p>Called from: <strong>myAutoMethod</strong><br />Arguments is an array. Elements are: Array ( [0] =&gt; 5 ) <br /><br /><br />Called from: <strong>myAutoSameMethod</strong><br />Arguments is an array. Elements are: Array ( [0] =&gt; 5 [1] =&gt; 6 [2] =&gt; 7 [3] =&gt; abc ) <br /><br /></p>\r\n<p><strong>__call() is invoked when called function is not available, it does not matter how many parameters does the calling function has.</strong></p>', '2016-08-21 18:36:56', '2016-08-25 16:42:55'),
(79, 71, 1, 0, 'overriding-in-php', 1, 'Overriding in php', '<p><strong>Normal Scenario:</strong></p>\r\n<p>Class A<br /> {<br />&nbsp; &nbsp; &nbsp;public function m1()<br />&nbsp; &nbsp; &nbsp;{<br />&nbsp; &nbsp; &nbsp; &nbsp; echo \'Method of Base Class is Called\';<br />&nbsp; &nbsp; &nbsp;}<br /> }</p>\r\n<p>class B extends A<br /> {</p>\r\n<p>}</p>\r\n<p>$objB = new B;<br /> <strong>$objB-&gt;m1(); // Output; Method of Base Class is Called</strong><br /> ?&gt;<br /> ----------------------------------------------------------------------------------------------------------------------------------------------------------<br /> <strong>Overriding&nbsp;Scenario:</strong></p>\r\n<p>But When you write again the method m1() in &nbsp;class B, it means you over write this method. because it was already there sincc<br /> B Extends A.</p>\r\n<p><!--?php <br ?--> class A<br /> {<br />&nbsp; &nbsp; &nbsp;public function m1()<br />&nbsp; &nbsp; {<br />&nbsp; &nbsp; &nbsp; &nbsp;echo \'Method of Base Class is Called\';<br />&nbsp; &nbsp; }<br /> }</p>\r\n<p>Class B extends A<br /> {</p>\r\n<p><strong>&nbsp; &nbsp; &nbsp;// <em>YOU ARE WRITING THE METHOD AGAIN NOW, IT IS OVERRIDING METHOD</em></strong><br /> <strong>&nbsp; &nbsp; public function m1()</strong><br /> <strong>&nbsp; &nbsp; {</strong><br /> <strong>&nbsp; &nbsp; &nbsp; &nbsp; echo \'Method of Child&nbsp;Class is Called\';</strong><br /> <strong>&nbsp; &nbsp; &nbsp;}</strong></p>\r\n<p>}</p>\r\n<p>$objB = new B;<br /> $objB-&gt;m1(); // Output; Method of <strong>Child Class</strong> is Called<br /> ?&gt;&nbsp;</p>\r\n<p><strong>The method m1 in Class B is overriding method and the m1 in Class A is overridden method.</strong></p>', '2016-08-21 18:37:23', '2016-08-21 19:04:47'),
(80, 56, 1, 6, 'how-to-create-helper-in-laravel', 1, 'How to create Helper in Laravel', '<p>in composer.json<br /> \"autoload\": {<br /> \"classmap\": [<br /> \"database\"<br /> ],<br /> \"psr-4\": {<br /> \"App\\\\\": \"app/\"<br /> },<br /> \"files\": [<br /> \"app/Helpers/myhelper.php\" &nbsp;// add this line.<br /> ]<br /> },</p>\r\n<p>&nbsp;</p>\r\n<p><strong>run:&nbsp;&nbsp;</strong>&nbsp;<code><span class=\"pln\">composer </span><span class=\"kwd\">dump</span><span class=\"pun\">-</span><span class=\"pln\">autoload</span></code></p>', '2016-08-21 18:38:14', '2016-08-21 18:38:14'),
(81, 56, 1, 3, 'removing-indexphp-from-laravel-url', 1, 'Removing index.php from  Laravel URL', '<p>Create a .htaccess file in root folder which contains the following codes.</p>\r\n<p><br /> RewriteEngine On<br /> RewriteRule ^ index.php [L]<br /><br /><strong>or&nbsp;</strong><br /><strong>there is a .htaccess file inside the public folder. copy it and paste it in project root, Simple!</strong></p>\r\n<p>Check whether&nbsp;mod_rewrite is enabled or not. if it is not enabled then enable it.</p>\r\n<p>&nbsp;</p>', '2016-08-21 18:38:49', '2016-08-27 07:56:18'),
(83, 56, 1, 2, 'how-to-remove-public-from-laravel-url', 1, 'How to remove public from Laravel Url', '<p>inside the project folder you will see a file named <strong>server.php</strong><br /> rename it to<strong> index.php</strong> &nbsp; and browse&nbsp;http://localhost/project_folder_name</p>', '2016-08-21 18:39:51', '2016-08-21 18:39:51'),
(84, 72, 1, 0, 'how-to-ignore-filesfolder-in-git', 1, 'How to ignore files/folder in git', '<ol>\r\n<li>Create .gitignore file<br /> Enter <strong>touch.gitignore</strong> to create this file.<br /> 2. Open .gitignore file&nbsp;and give the location of the folder/file that you want to skip.<br /> suppose i want to skip&nbsp;the metronic folder inside public directory.<br /> So write, &nbsp; &nbsp; &nbsp; &nbsp;<strong>/public/metronic</strong></li>\r\n</ol>', '2016-08-21 18:40:44', '2016-08-21 18:40:44'),
(85, 72, 1, 0, 'fatal-error-repository-not-found-git', 1, 'fatal error repository not found git', '<p><em>1. Check whether the repository &nbsp; really exist or not.<br /> 2.Repository names are case-sensitive. So check is there any lowercase/uppercase issue took place in typing the repository address.<br /> 3.&nbsp;Run Git bash as Administrator.</em></p>\r\n<p>&nbsp;</p>', '2016-08-21 18:41:25', '2016-08-21 18:41:25'),
(86, 72, 1, 0, 'how-to-clone-git-to-specific-folder-in-windows', 1, 'How to clone git to specific folder in windows', '<p>git clone {your repository}&nbsp; destination_path<br />Example:<br />git clone https://github.com/masuduzzaman/sample_project.git&nbsp; D:/xampp/htdocs/sample_project</p>', '2016-08-21 18:42:45', '2016-08-21 18:42:45'),
(87, 72, 1, 0, 'git-fork', 0, 'Git Fork', '', '2016-08-21 18:43:03', '2016-08-21 18:43:03'),
(88, 57, 1, 0, 'mysql-scaling', 1, 'MySQL Scaling', '<p><strong>1.Replication: &nbsp;</strong><br />Data is replicated from master server to another server(slave). So. same data are stored in all servers. For data reading it is faster. but it may cause problems<br />if application has more write operations. Inconsistency may arise between database nodes due to the &nbsp;synchronization between salves involves some dalay.<br /><br /><strong>2. Sharding</strong><br />&nbsp; Splittting db schema into multiple partitions. &nbsp;splitting can be happened in&nbsp;tables / row level. &nbsp;Splitting should be done very sincerely.<br />&nbsp; Explaination:<br /> Suppose you have multisites solutions that handles 1000 databases, you can split it in different ways<br />1. you can keep 100 db in one db server, another 50 in another server and so on.<br />2. you can keep some tables in one server and some tables in another server. because in most cases some tables are hitted very much, so you can divide accordingly.<br />3. Sometimes data could be splitted based on Geographic locations. if you work with 64 &nbsp;districts of Bangladesh you can keep the districts of North in one DB server and&nbsp;districts of South&nbsp;in another DB server and so on. or you can info about the important persons can be kept in different server, actually you split your data according to your need.<br /><br /><strong>3.MySQL cluster:</strong> <br />&nbsp;it is one kind of combination of Replication and sharding.<br /><br /><br /></p>\r\n<p>&nbsp;</p>', '2016-08-26 16:42:09', '2016-08-26 17:39:39'),
(89, 57, 1, 0, 'mysql-if-else-case-when', 1, 'MySQl IF ELSE CASE WHEN', '<p>1. IF a Column named status contains two values: 0,1 where o means InActive, 1 means Active. then query should be<br />&nbsp;<strong> &nbsp; SELECT if(status = 0, \'InActive\', \'Active\' ) FROM table</strong><br />&nbsp; &nbsp;&nbsp;<br /><br />2. IF a Column named status contains three values: 0,1,2 where 0 means InActive, 1 means InProcess, 2 Means \'PartiallyCompleted\' then query should be&nbsp;<br /><strong>SELECT </strong><br /><strong>IF (status = 0, \'Inactive\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IF (status =1, \'In Prcoess\', \'PartiallyCompleted\' )</strong><br /><strong>&nbsp; &nbsp; )</strong><br /><strong>FROM table</strong><br /><br />3. IF a Column named status contains four&nbsp;values: 0,1,2,3 &nbsp;where 0 means InActive, 1 means InProcess, 2 Means \'PartiallyCompleted\', 3 means \'Completed\' then query should be<br /><strong>SELECT </strong><br /><strong>IF (status = 0, \'Inactive\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IF (status =1, \'In Prcoess\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IF (status =2, \'PartiallyCompleted\', \'Completed\' )</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; )</strong></p>\r\n<p><strong>&nbsp; &nbsp; )</strong><br /><strong>FROM table</strong><br /><br /></p>\r\n<p>***If status&nbsp;contains 7 values then the query becomes complicated but still you can solve it in this way. Yo can do the same thing by using CASE WHEN<br /><br /><code>SELECT</code><br /><code>CASE status</code><br /><code>WHEN 0 THEN \'INACTIVE\'</code><br /><code>WHEN 1 THEN \'InProcess\'</code><br /><code>WHEN 2 THEN \'PartiallyCompleted\'</code><br /><code>WHEN 3 THEN \'Completed\'</code><br /><code>WHEN 4 THEN \'OVERCOMPLETED\'</code><br /><code>WHEN 5 THEN \'STATUS-5-stage\'</code><br /><code>WHEN 6 THEN \'ETO STATUS KARE!\'</code><br /><code>ELSE \'UNKONOWN - NOT DEFINED\'</code><br /><code>END AS status </code><br /><code>FROM&nbsp;table</code><br /><br /><br /><br /><br />&nbsp;</p>', '2016-08-27 01:41:24', '2016-08-27 07:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci,
  `category_long_description` longtext COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `has_child` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `count_product` int(11) DEFAULT NULL,
  `category_sort_order` int(11) DEFAULT NULL,
  `meta_key` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_row_id`, `category_name`, `category_slug`, `category_image`, `category_short_description`, `category_long_description`, `parent_id`, `has_child`, `is_featured`, `level`, `count_product`, `category_sort_order`, `meta_key`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '2018-05-05 10:04:34', '2018-05-05 10:04:34'),
(2, 'Pant', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '2018-05-05 10:04:40', '2018-05-05 10:04:40'),
(3, 'Furniture', NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2018-05-05 10:04:48', '2018-05-05 10:04:48'),
(4, 'Almirah', NULL, NULL, NULL, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, '2018-05-05 10:05:18', '2018-05-05 10:05:18'),
(5, 'cot', NULL, NULL, NULL, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, '2018-05-05 10:06:09', '2018-05-05 10:06:09'),
(6, 'Computer Devices', NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2018-05-05 10:06:56', '2018-05-05 10:06:56'),
(7, 'Mouse', NULL, NULL, NULL, NULL, 6, NULL, 0, 1, NULL, NULL, NULL, NULL, '2018-05-05 10:07:02', '2018-05-05 10:07:02'),
(8, 'Keyboard', NULL, NULL, NULL, NULL, 6, NULL, 0, 1, NULL, NULL, NULL, NULL, '2018-05-05 10:07:13', '2018-05-05 10:07:13');

-- --------------------------------------------------------

--
-- Stand-in structure for view `getallproductratings`
-- (See below for the actual view)
--
CREATE TABLE `getallproductratings` (
`product_id` bigint(20)
,`rating` decimal(7,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `memory_tbl`
--

CREATE TABLE `memory_tbl` (
  `sd` int(11) NOT NULL,
  `asd` int(11) NOT NULL,
  `dsads` int(11) NOT NULL,
  `asdsad` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_row_id` int(11) NOT NULL,
  `link_dynamic` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_content` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` tinyint(1) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `menu_sort_order` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_row_id`, `link_dynamic`, `menu_name`, `menu_link`, `menu_content`, `parent_id`, `has_child`, `level`, `is_active`, `menu_sort_order`, `created_at`, `updated_at`) VALUES
(1, 0, 'Home', '', '<p>hom</p>', 0, 0, 0, 0, 0, '2016-06-01 16:39:38', '2016-06-01 16:39:38'),
(2, 0, 'About Us', '', '<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.</p>\r\n<p>It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.</p>\r\n<p><strong>It is About us page.</strong> You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.</p>\r\n<p>It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is AboIt is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.ut us page. You can update the content from Admin panel. &nbsp; &nbsp; &nbsp; &nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;</p>', 0, 0, 0, 1, 0, '2016-06-01 16:39:48', '2016-06-15 13:50:25'),
(3, 0, 'Contact Us', '', '<p>Email: enggmasud1983 @ gmail.com</p>\r\n<p>Skype: enggmasud1983</p>', 0, 0, 0, 1, 0, '2016-06-01 16:40:00', '2016-06-15 13:55:06'),
(4, 1, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 0, 0, 0, 1, 4, '0000-00-00 00:00:00', '2016-08-18 22:07:19'),
(9, 1, 'MY new Page', 'my-new-page', '<p>my new page &nbsp;</p>', 0, 0, 0, 1, 0, '2016-08-18 21:53:24', '2016-08-18 21:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_09_233722_create_admins_table', 2),
('2016_05_10_001807_create_products_table', 3),
('2016_05_10_001820_create_categories_table', 3),
('2016_06_01_000001_create_oauth_auth_codes_table', 4),
('2016_06_01_000002_create_oauth_access_tokens_table', 4),
('2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
('2016_06_01_000004_create_oauth_clients_table', 4),
('2016_06_01_000005_create_oauth_personal_access_clients_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ZxEzwyBClrbR98AwjXFUjiKPmDmXtGqPejgi08nU', 'http://localhost', 1, 0, 0, '2018-05-10 11:33:46', '2018-05-10 11:33:46'),
(2, NULL, 'Laravel Password Grant Client', '4Vi9fR8MFEe2lLOC6jUkzEYGK7NlK1VD1SdaMfvJ', 'http://localhost', 0, 1, 0, '2018-05-10 11:33:46', '2018-05-10 11:33:46'),
(3, NULL, 'Laravel Personal Access Client', 'Uat41QNGyKb4cWdaD7p2VtstFbpIvI3QYS3HfgAy', 'http://localhost', 1, 0, 0, '2018-05-11 09:48:14', '2018-05-11 09:48:14'),
(4, NULL, 'Laravel Password Grant Client', '5JfMj10ptg8MQ7UdYVKEfX0DICNCNhQN6HxwjMVb', 'http://localhost', 0, 1, 0, '2018-05-11 09:48:14', '2018-05-11 09:48:14'),
(5, NULL, 'Laravel Personal Access Client', 'WHW8fe8SPc6L4YPFWulDw9ldvutPxyywEdlYBFdC', 'http://localhost', 1, 0, 0, '2018-05-11 09:48:43', '2018-05-11 09:48:43'),
(6, NULL, 'Laravel Password Grant Client', '4vjWZkHn0OxjOeCfREHAVOHY5ZB06iiflinxDhPb', 'http://localhost', 0, 1, 0, '2018-05-11 09:48:43', '2018-05-11 09:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-05-10 11:33:46', '2018-05-10 11:33:46'),
(2, 3, '2018-05-11 09:48:14', '2018-05-11 09:48:14'),
(3, 5, '2018-05-11 09:48:43', '2018-05-11 09:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_row_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `order_details` text,
  `payment_details` text,
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Pending,1=Delivered,2=Cancel',
  `shiping_address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_row_id`, `user_id`, `total_price`, `order_details`, `payment_details`, `order_status`, `shiping_address`, `created_at`, `updated_at`) VALUES
(1, 37, '7800', '[{\"product_row_id\":144,\"product_price\":2600,\"product_qty\":2,\"product_total_price\":5200,\"product_name\":\"LT-Nitya suit D.No.913\",\"product_image\":\"1490263512.jpg\"},{\"product_row_id\":145,\"product_price\":2600,\"product_qty\":1,\"product_total_price\":2600,\"product_name\":\"LT-Nitya suit D.No.914\",\"product_image\":\"1490263575.jpeg\"}]', '{\"payment_method\":\"Cash on Delivery\",\"payment_id\":\"3\"}', 0, '{\"name\":\"masud\",\"email\":\"masud@gmail.com\",\"mobile\":\"18309128\",\"address\":\"    shipping addre\"}', '2018-03-26 05:52:02', '2018-03-26 05:52:02'),
(2, 37, '0', '[]', '{\"payment_method\":\"Cash on Delivery\",\"payment_id\":\"3\"}', 0, '{\"name\":\"masud\",\"email\":\"masud@gmail.com\",\"mobile\":\"18309128\",\"address\":\"    shipping addre\"}', '2018-03-26 05:52:18', '2018-03-26 05:52:18'),
(3, 37, '5140', '[{\"product_row_id\":2,\"product_price\":1500,\"product_qty\":3,\"product_total_price\":4500,\"product_name\":\"Pant\",\"product_image\":\"1525536535.jpg\"},{\"product_row_id\":6,\"product_price\":320,\"product_qty\":2,\"product_total_price\":640,\"product_name\":\"mouse2\",\"product_image\":\"1525537036.jpg\"}]', '{\"payment_method\":\"VISA Card\",\"payment_id\":\"4\",\"card_no\":\"\",\"card_name\":\"\",\"cw\":\"\",\"exp_month\":\"05\",\"exp_year\":\"2018\"}', 0, '{\"name\":\"masud\",\"email\":\"masud@gmail.com\",\"mobile\":\"01123123\",\"address\":\"    shi\"}', '2018-05-06 14:01:11', '2018-05-06 14:01:11'),
(4, 27, '320', '[{\"product_row_id\":6,\"product_price\":320,\"product_qty\":1,\"product_total_price\":320,\"product_name\":\"mouse2\",\"product_image\":\"1525537036.jpg\"}]', '{\"payment_method\":\"Cash on Delivery\",\"payment_id\":\"3\"}', 0, '{\"name\":\"Masuduzzaman\",\"email\":\"enggmasud1983@gmail.com\",\"mobile\":\"18309128\",\"address\":\"  asda\"}', '2018-08-11 07:42:21', '2018-08-11 07:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_description`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'sadsa', 'dsadsa', '2018-05-21 12:03:25', '2018-05-21 12:03:25', 0),
(2, 'sadsad', 'sadsa', '2018-05-21 12:03:25', '2018-05-21 12:03:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_row_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` float(8,2) DEFAULT NULL,
  `product_height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_width` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_weight` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_row_id` int(11) NOT NULL,
  `product_sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_latest` tinyint(1) NOT NULL DEFAULT '0',
  `product_short_description` text COLLATE utf8_unicode_ci,
  `product_long_description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_row_id`, `product_name`, `product_price`, `product_height`, `product_width`, `product_weight`, `category_row_id`, `product_sku`, `product_image`, `is_featured`, `is_latest`, `product_short_description`, `product_long_description`, `created_at`, `updated_at`) VALUES
(1, 'Shirt 1', 1250.00, NULL, NULL, NULL, 1, 's1', '1525536467.jpg', 1, 1, NULL, '', '2018-05-05 10:07:48', '2018-05-05 10:07:48'),
(2, 'Pant', 1500.00, NULL, NULL, NULL, 2, 'p1', '1525536535.jpg', 0, 1, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2018-05-05 10:08:55', '2018-05-05 10:08:55'),
(3, 'cot', 25000.00, NULL, NULL, NULL, 5, 'c1', '1525536592.jpg', 0, 1, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2018-05-05 10:09:52', '2018-05-05 10:09:52'),
(4, 'Almirah', 28000.00, NULL, NULL, NULL, 4, '', '1525536707.jpg', 1, 0, NULL, '', '2018-05-05 10:11:47', '2018-05-05 10:11:47'),
(5, 'mouse1', 300.00, NULL, NULL, NULL, 7, '', '1525537018.jpg', 1, 0, NULL, '', '2018-05-05 10:16:58', '2018-05-05 10:16:58'),
(6, 'mouse2', 320.00, NULL, NULL, NULL, 7, '', '1525537036.jpg', 1, 0, NULL, '', '2018-05-05 10:17:16', '2018-05-05 10:17:16'),
(7, 'Keyboard', 220.00, NULL, NULL, NULL, 8, '', '1525537082.jpg', 1, 0, NULL, '', '2018-05-05 10:18:02', '2018-05-05 10:18:02'),
(8, 'Keyboard', 350.00, NULL, NULL, NULL, 8, '', '1525537100.jpg', 0, 0, NULL, '', '2018-05-05 10:18:20', '2018-05-05 10:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_image_others`
--

CREATE TABLE `product_image_others` (
  `product_row_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` tinyint(2) NOT NULL,
  `reviews` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_real_time`
--

CREATE TABLE `tbl_gateway_real_time` (
  `real_time_gateway_row_id` int(11) UNSIGNED NOT NULL,
  `merchant_row_id` int(11) UNSIGNED NOT NULL,
  `real_time_gateway` smallint(5) UNSIGNED NOT NULL,
  `gateway_account_no` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `nick_name` varchar(50) DEFAULT NULL,
  `authorize_api_login_key` text NOT NULL,
  `authorize_api_transaction_key` text NOT NULL,
  `authorize_api_signature` text NOT NULL,
  `real_time_currency` varchar(20) NOT NULL,
  `transactions_per_cycle` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `cvv2_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_mobile` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_real_time`
--

INSERT INTO `tbl_gateway_real_time` (`real_time_gateway_row_id`, `merchant_row_id`, `real_time_gateway`, `gateway_account_no`, `nick_name`, `authorize_api_login_key`, `authorize_api_transaction_key`, `authorize_api_signature`, `real_time_currency`, `transactions_per_cycle`, `cvv2_required`, `is_mobile`) VALUES
(53, 2, 43, 1, 'eProcessing Network', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(57, 2, 2, 1, 'Authorize.Net', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(8, 2, 3, 1, 'PayPal Website Payment Pro ', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(55, 2, 45, 1, 'Klick and Pay', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(41, 2, 31, 1, 'PayLeap', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(37, 2, 36, 1, 'First Atlantic Commerce', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(54, 2, 44, 1, 'Stripe', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(46, 2, 1005, 1, 'Beanstream Mobile', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', '0', 0, 0, 1),
(56, 2, 29, 1, 'Quantum Gateway', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(45, 2, 1003, 2, 'PayLeap Mobile', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_setup`
--

CREATE TABLE `tbl_gateway_setup` (
  `merchant_row_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `credit_cards_selected` varchar(100) DEFAULT NULL,
  `payment_process_model` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Sale, 2= Authorize and Capture',
  `real_time_gateway` tinyint(3) DEFAULT '0',
  `real_time_gateway_mobile` smallint(6) NOT NULL,
  `real_gateway_account_no` tinyint(10) UNSIGNED NOT NULL DEFAULT '1',
  `standard_gateway_paypal` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_alertpay` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_rbsworldpay` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_klickandpay` tinyint(3) DEFAULT '0',
  `enable_realtime_rotator` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_setup`
--

INSERT INTO `tbl_gateway_setup` (`merchant_row_id`, `credit_cards_selected`, `payment_process_model`, `real_time_gateway`, `real_time_gateway_mobile`, `real_gateway_account_no`, `standard_gateway_paypal`, `standard_gateway_alertpay`, `standard_gateway_rbsworldpay`, `standard_gateway_klickandpay`, `enable_realtime_rotator`) VALUES
(2, 'American Express,Master Card,Visa', 1, 2, 0, 1, 1, 10, 12, 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_standard`
--

CREATE TABLE `tbl_gateway_standard` (
  `standard_gateway_row_id` int(11) UNSIGNED NOT NULL,
  `merchant_row_id` int(11) UNSIGNED NOT NULL,
  `standard_gateway` tinyint(3) UNSIGNED NOT NULL,
  `authorize_email` varchar(255) DEFAULT NULL,
  `authorize_api_login_key` text,
  `authorize_api_transaction_key` text,
  `authorize_api_signature` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_standard`
--

INSERT INTO `tbl_gateway_standard` (`standard_gateway_row_id`, `merchant_row_id`, `standard_gateway`, `authorize_email`, `authorize_api_login_key`, `authorize_api_transaction_key`, `authorize_api_signature`) VALUES
(16, 2, 1, 'msh134_1265016211_biz@gmail.com', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(11, 2, 10, 'seller_1_enggmasud1983@gmail.com', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(19, 2, 12, '', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(20, 2, 45, '', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==');

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `temp_order_row_id` int(11) NOT NULL,
  `product_row_id` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `product_price` float(8,2) NOT NULL,
  `product_qty` int(5) NOT NULL,
  `product_total_price` float(8,2) NOT NULL,
  `order_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0=pending,1=submitted',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_orders`
--

INSERT INTO `temp_orders` (`temp_order_row_id`, `product_row_id`, `tracking_number`, `product_price`, `product_qty`, `product_total_price`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 7, '2We9eSwrchjNuUdC4NedzxdXgw81sRUuv6LA13ul', 220.00, 1, 220.00, 0, '2018-11-21 16:29:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8_unicode_ci,
  `skills` text COLLATE utf8_unicode_ci,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User.jpg',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `occupation`, `education`, `skills`, `experience`, `about`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'masud', 'masud9@gmail.com', '$2y$10$dH6kJPaiGQS6G5yiC8Erou.bpt45KrBkfxH2t8DJNuftbBGVTsxuu', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2016-07-30 20:10:11', '2016-07-30 20:10:11'),
(2, 'masud', 'masud@bdcommerce.com', '$2y$10$Q5uiWK9IM1RLJRQFs.y4Pe2kVp2EMyrnBSPwE5FTFp7A/29p2Ikia', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', '0O2ZtbydwzC5alwRcs9mGUX0Jg4H61G7sWyBRp3bwCoK4derD8IIN7sCCEm9', '2016-08-08 01:38:35', '2016-08-29 09:48:18'),
(3, 'Masud', 'masud@masud.com', '$2y$10$82H3blHvOKiPAdW45N84DOEPmnpcosjIPadtQ5q83kYHokNtL3iRe', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2016-08-15 02:08:39', '2016-08-15 02:08:39'),
(4, 'avc', 'avc@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, NULL, NULL),
(5, 'rafiq', 'rafiq@asda.com', '$2y$10$KHIN6g6ZldT2WFQqHub3N.njr54NliS5sl/7SG3JQCEAtzn888r7W', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'm8tF5EY3NsV6UwaUPbGPars2s3W62CjoirxUo9zbrTQh30sf2ochdxCTizP3', NULL, '2016-08-29 10:29:00'),
(6, 'smdsa', 'masmdsma@gmail.com', '$2y$10$SBGSrufwO1JvJ2Cp8kYo4uFXBtyPRA0uXjy7Opo7er7/9OsXjrEAi', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-03-18 07:26:58', '2017-03-18 07:26:58'),
(7, 'santanu', 'santanudastusher@gmail.com', '$2y$10$GIa9FIDRHgcHRoYO2ZL/w.re27XfkrNkGnw35fbN2KuR5RHEj12fa', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-04-09 10:27:42', '2017-04-09 10:27:42'),
(17, 'User', 'user@gmail.com', '$2y$10$.M9IyaYJ.vex0Nk0Y6P5/O9bu1k0zP5lU.OenwggEWN72PPApACL.', '36/5,South Road,Dimla,Nilphamari', '01520102680', 'Software Engineer', NULL, NULL, '2 Years (Dot Net)', 'Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen', 'User.jpg', 'NPArfhwdU0Nrd0JYfFVX61NDB5Er98TWBXpTRql8zKjWBgVs3p0L5En2IFIS', '2017-11-23 11:49:46', '2017-12-08 10:32:53'),
(18, 'Milon Miah', 'milon@gmail.com', NULL, 'u888/Adjkdsk  ', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-23 11:57:41', '2017-11-23 11:57:41'),
(19, 'Sagor', 'sagor@gmail.com', '$2y$10$twLQwH3AZu89R6tPFkM3Ne7iytoFFw8ZePc8cfqP/nBe2t4fRb3ZC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'bdhNeJKLglTrebH4sjrvm4nBvMrynrcSHzPOx4uTobAEI2lfHzw3v1nfg1uo', '2017-11-23 12:01:42', '2017-11-25 22:42:46'),
(20, 'enggmasud1983@gmail.com', 'test@masud.com', '$2y$10$oJhnrMUJRaEdLis1Ayrk1.PZij2dLvPqyzl2HVedJTa8MySjs/FSC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-25 12:41:42', '2017-11-25 12:41:42'),
(21, 'Sagor', 's@gmail.com', '$2y$10$1AKc1XwShCYfLJz0oV3IB.E9xiFAejJt6cXfXVvYAuycZXUlqlHyC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'VY3OC5iBQcKzAFB5F73HKlRRxCyJsas4Mh5GYTdMiDoleSzojBQLjqEWhZ5O', '2017-11-25 12:44:09', '2017-11-25 12:46:20'),
(22, 'tt', 'tt@tt.com', '$2y$10$m070izSOz7RBzib5QsRm6eFyi.zb99l2Qcy7z0aDNoChciN1P6Mjy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-26 11:00:25', '2017-11-26 11:00:25'),
(23, 'shafiq', 'shafiq@gmail.com', NULL, '  dhaka', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-30 20:15:33', '2017-11-30 20:15:33'),
(24, 'Tonmoy`', 'tomoy@tonmoy.com', NULL, '  Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-12-01 08:27:11', '2017-12-01 08:27:11'),
(25, 'mahbub', 'mahbub@gmail.com', NULL, 'dhaka, mirpur  ', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-12-01 10:01:55', '2017-12-01 10:01:55'),
(26, 'Md.Zahidul Islam', 'zahid@gmail.com', NULL, ' 89/K,Dhaka-1000', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-12-01 14:17:11', '2017-12-01 14:20:47'),
(27, 'Masuduzzaman', 'enggmasud1983@gmail.com', NULL, '  asda', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-12-07 21:58:00', '2018-08-11 01:42:21'),
(34, 'Md.Abdus Salam', 'salamcseiu21@gmail.com', '$2y$10$rzQBs9yx7evDteeep4pthuYKLh4C5XNeJywQ699RxHBW1usaxhDoG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', '2YVsWbSZens4FXjZskIz2rpRgmDmktuYbqEK2UdXSNDkkSBrfYolsA2VmB6W', '2017-12-13 09:41:50', '2017-12-15 10:29:50'),
(35, 'M.A Salam', 'masalamdotnet@gmail.com', '$2y$10$DGCpt9soEv8hwET8RlwpB.xo1coaPhYJuee1j0NmpTkYVU56ZkmJO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', '89wrqxpZuimo6CUs2GtkfEZgyER5vIDEcRrm4m9GhWqmASDakFWdb9SrhOdR', '2017-12-15 10:58:44', '2017-12-15 10:59:10'),
(36, 'asdasd masud', 'aa@asd.com', NULL, '  Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2018-02-27 12:57:54', '2018-02-27 12:57:54'),
(37, 'masud', 'masud@gmail.com', '$2y$10$4L7i3qyDtEmpJ114omF.4eawaNbBJOK0AtjBrRga6ZcgZ3Ief3DBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'af6zmAA3IoNxfcRt4QUYai3qq0e23odLRuLov2CE0YCSGNduU3G385N2wUaC', '2018-03-25 23:51:24', '2018-03-25 23:51:24'),
(38, 'lara', 'lara@lara.com', '$2y$10$G/XnacT6Z42sh6NQknnmHuy3wM5kRAn/91RQmd2GWDKjNFVLFTYpe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2018-05-06 08:56:44', '2018-05-06 08:56:44'),
(39, 'asdhgjh', 'maknun@gmail.com', '$2y$10$7bMFD1oZGGmKjtdVGSzAS.Dj2gSTu/LI4nTNRTi4QD06oCSxWVTsS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'zabzGEkegkifd0Goo1c3lGF0yYdIMk9SEsy8YgNShuGGcBbRjna2Di5rbk89', '2018-05-13 04:25:09', '2018-05-13 04:25:09'),
(40, 'karim', 'karim@gamil.com', '$2y$10$jT69OKFPeT83/BvVgBRdpObtV5CwEGIngpi8XJj.tW0Je32eqvJoK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'm4RAYgGLpOQOdIWwaeJWPDLgjA7q1sp3TRHcCilM8ql7j4ZNGiohqc43ZQ0h', '2018-05-13 04:29:02', '2018-05-13 04:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 17, 144, '2017-12-04 16:19:10', '2017-12-04 16:19:10'),
(3, 17, 135, '2017-12-04 16:24:16', '2017-12-04 16:24:16'),
(4, 17, 129, '2017-12-04 16:39:41', '2017-12-04 16:39:41'),
(5, 17, 133, '2017-12-04 16:49:12', '2017-12-04 16:49:12'),
(6, 17, 134, '2017-12-05 04:14:30', '2017-12-05 04:14:30'),
(7, 17, 143, '2017-12-08 03:51:18', '2017-12-08 03:51:18');

-- --------------------------------------------------------

--
-- Structure for view `getallproductratings`
--
DROP TABLE IF EXISTS `getallproductratings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`rupahali`@`localhost` SQL SECURITY DEFINER VIEW `getallproductratings`  AS  select `product_ratings`.`product_id` AS `product_id`,avg(`product_ratings`.`rating`) AS `rating` from `product_ratings` group by `product_ratings`.`product_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_row_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_row_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_row_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_row_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`temp_order_row_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `temp_order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
