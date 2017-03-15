-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 09:52 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobunga`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(5) NOT NULL,
  `id_label` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_artikel` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_label`, `username`, `judul`, `judul_seo`, `headline`, `isi_artikel`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(69, 22, 'admin', 'Gelombang Solidaritas untuk Palestina', 'gelombang-solidaritas-untuk-palestina', 'Y', 'Serangan Israel kepada Palestina yang terjadi mulai akhir Desember 2008 silam telah menewaskan hampir seribu nyawa manusia. Warga sipil yang kebanyakan perempuan dan anak-anak menjadi korban keganasan tentara Israel. Warga dunia pun marah. Saat ini, hampir setiap hari sejumlah unjuk rasa mengecam kebiadaban Israel terjadi di seluruh belahan dunia. Kejahatan Israel adalah kejahatan kemanusiaan dan sudah menjadi isu bersama umat manusia.<br><br>Kecaman tidak hanya datang dari umat Islam, tapi juga dari umat agama lain. Lihat saja sejumlah biksu yang tergabung dalam Perwakilan Umat Buddha Indonesia (Walubi), kemudian Persatuan Tionghoa Indonesia serta Dewan Pemuda Kristen Indonesia.<br><br>Mereka semua ikut berpatisipasi dalam aksi solidaritas untuk Palestina yang dilaksanakan di lapangan Monas, Jakarta Ahad (11/1/2009) lalu. Mereka mengutuk kebiadaban Israel. (sumber: sabili.co.id)<br>', 'Sabtu', '2009-01-31', '14:34:18', '11solidaritas.jpg', 12, 'gaza,israel,palestina'),
(71, 2, 'admin', 'Ronaldo "CR7" Pecahkan Transfer Termahal', 'ronaldo-cr7-pecahkan-transfer-termahal', 'Y', 'Cristiano Ronaldo segera menjadi pemain termahal dunia, menumbangkan rekor Zinedine Zidane. Agen Ronaldo menyebut bahwa kliennya terikat pra kontrak 91 juta poundsterling dengan Real Madrid. Dengan transfer senilai Rp 1,5 triliun itu, maka CR7 dipastikan akan menjadi pemain termahal dunia. Tapi, itu mungkin baru terealisasi musim depan alias musim panas nanti.<br><br>Sport melansir bahwa Pemain Terbaik Dunia 2008 itu terikat kontrak dengan Madrid untuk jangka panjang. Bahkan, juga disebutkan bahwa agen Ronaldo, Jorge Mendes, akan terkena klausul penalti (penalty clause) 20 juta euro (18 juta pounds) jika Ronaldo tak hadir di Santiago Bernabeu, musim depan.<br><br>Sebelumnya, pemain berusia 23 tahun ini dikabarkan juga terikat kontrak dengan mantan presiden Madrid, Florentino Perez. Ronaldo akan menjadi alat kampanye Perez dalam pemilihan presiden Madrid, pertengahan Juli 2009.<br><br>Rekor pemain termahal dunia kini masih dipegang Zinedine Zidane dengan 46 juta poundsterling pada 2001. Perez juga menjadi aktor di balik kedatangan maestro asal Prancis itu dari Juventus ke Madrid.<br><br>Demikian juga runner up pemain termahal dunia, Luis Figo. Perez membajaknya dari rival bebuyutan Barcelona pada 2000 dengan nilai 38,7 juta pounds. Saat itu, Figo juga jadi alat kampanye Perez. (sumber: vivanews.com)<br>', 'Sabtu', '2009-01-31', '14:41:25', '97cristiano-ronaldo.jpg', 31, 'sepakbola'),
(72, 22, 'admin', 'Belajar Dari Krisis Amerika', 'belajar-dari-krisis-amerika', 'Y', 'Ibarat karena nila setitik, rusak susu sebelanga. Dan di kolam susu inilah tampaknya warga dunia tengah menunggu kapan giliran nila itu datang yang akan benar-benar melumpuhkan sendi perekonomian di negaranya masing-masing, tak terkecuali kita di Indonesia.<br><br>Dan kini kita paham bahwa kondisi yang cukup serius kali ini memang awalnya bermula dari krisis nasional di AS, yang kemudian menyebar dengan cepat ke seluruh dunia. Namun jelas bahwa ia bukanlah penyebab utamanya seperti yang dituding oleh sejumlah media (lihat ''Runtuhnya Pusat Kapitalisme'', Editorial Harian Radar Bogor, 27/09/08).<br><br>Yang menjadi benang merah dari rentetan krisis ini justru adalah penerapan globalisasi dimana roda perekonomian banyak negara di dunia digantungkan. Sebab dalam sistem ekonomi global yang tengah dipraktikkan banyak negara saat ini, krisis yang dialami suatu negara akan menular bak virus ke negara-negara lain, khususnya bila krisis itu bermula dari negara-negara maju dan yang punya otoritas dalam peta perkonomian dunia.<br><br>Meski belum memiliki definisi yang mapan, istilah globalisasi banyak dihubungkan dengan peningkatan keterkaitan dan ketergantungan antarbangsa dan antarmanusia di seluruh dunia dunia melalui perdagangan, investasi, perjalanan, budaya populer, dan bentuk-bentuk interaksi yang lain sehingga batas-batas suatu negara menjadi bias (wikipedia.com).<br><br>Di alam globalisasi inilah, kesalingbergantungan antara negara satu dengan negara lain terjalin begitu kuat. Dengan begitu, sebuah negara yang telah maju diharapkan akan merangsang perekonomian negara-negara yang sedang berkembang lewat sistem pasar bebas yang saling terhubung dan kompetitif. Tak heran bila globalisasi dipercaya akan mampu membawa kemaslahatan pada segenap umat manusia di dunia.<br><br>Sebuah niat yang kedengarannya cukup mulia memang. Dan sejak diterapkan pada era 80-an, globalisasi menjadi sistem ekonomi (mencakup juga aspek sosial, budaya, dan komunikasi) yang populer di banyak negara. Tak terkecuali bagi negara kita tercinta yang kala itu berada di bawah rezim Orde Baru.<br><br>Tapi dengan adanya krisis global ini, untuk pertama kalinya kita disadarkan, betapa sistem globalisasi yang tengah dipraktikkan kebanyakan negara saat ini, ternyata juga berpotensi membawa umat manusia pada krisis berkepanjangan. Ditambah lagi betapa globalisasi ekonomi dunia kian hari kita lihat semu dan banal, yakni di mana triliunan dollar AS diperjualbelikan dan dipermainkan di pasar modal, tetapi hanya sebagian saja diantaranya yang benar-benar menyentuh sektor riil.<br><br>Dengan kondisi kesalingterhubungan dan kesalingbergantungan inilah globalisasi ekonomi menciptakan budaya ekonomi sebagai jaringan terbuka (open network) yang rawan terhadap kemacetan di suatu titik jaringan dan serangan virus ke seluruh jaringan. Serangan virus (semisal kemacetan likuiditas) di sebuah titik jaringan (seperti AS) dengan cepat menjalar ke seluruh jejaring global tanpa ada yang tersisa.<br><br>Maka di titik ini pulalah kita sadar betapa Indonesia sebagai salah satu peserta yang turut serta dalam sistem ekonomi global, cukup rentan terkena dampak krisis ini.<br><br>Sejatinya, krisis global ini memang lebih banyak berpengaruh pada industri keuangan, khususnya pasar modal. Ruang gerak pasar modal itu sendiri belum meluas bagi usaha dan bisnis yang dijalankan bagi kebanyakan masyarakat Indonesia.<br><br>Bisa disimak bahwa roda perekonomian di Kota Bogor sendiri lebih banyak digerakkan oleh sektor riil dan usaha kecil menengah (UKM). Kebanyakan dari mereka menjalankan usaha yang tak memiliki persinggungan langsung dengan investor, juga dikerjakan oleh SDM dari dalam negeri sendiri.<br><br>Karenanya, kita selaku warga Bogor patut menjadikan peristiwa krisis global saat ini sebagai momentum dalam mendukung segenap pelaku bisnis dan UKM kota Bogor. Sebab, sejarah negeri ini telah membuktikan bahwa para pelaku bisnis dan UKM-lah yang mampu bertahan ketika krisis menerpa Indonesia di tahun 1998.<br><br>Dan kepada merekalah kita bisa berharap krisis global kali ini takkan mampir ke Indonesia. (sumber: http://prys3107.blogspot.com/)<br>', 'Sabtu', '2009-01-31', '14:48:09', '44amerika.jpg', 8, 'amerika'),
(74, 19, 'admin', 'Google Chrome Susupi Microsoft', 'google-chrome-susupi-microsoft', 'Y', '<p>\r\nBrowser Microsoft, Internet Explorer (IE), bisa mendominasi karena tersedia secara default pada banyak komputer di pasaran. Google Chrome akan menggoyang dengan menyusup di lahan yang sama. Google rupanya sudah bersiap-siap menawarkan Google Chrome secara default pada komputer-komputer baru. \r\n</p>\r\n<p>\r\nPichai juga menjanjikan Chrome akan keluar dari versi Beta (uji coba) pada awal 2009. \r\nJika Google berhasil menyusupkan Chrome dalam lahan yang selama ini jadi &#39;mainan&#39; Microsoft, lanskap perang browser akan mengalami perubahan. \r\n</p>\r\n<p>\r\nSaat ini Microsoft masih mendominasi pada kisaran 70 persen lewat Internet Explorer-nya, sedangkan Firefox menguasai sekitar 20 persen. (sumber: <a href="http://detikinet.com" target="_blank">detikinet.com</a>)\r\n</p>\r\n', 'Sabtu', '2009-01-31', '13:34:25', '25chrome.jpg', 30, 'browser,google'),
(60, 19, 'admin', 'Digerus Firefox, IE Makin Melempem', 'digerus-firefox-ie-makin-melempem', 'Y', 'Browser Mozilla Firefox sepertinya makin berkibar. Berdasarkan data terbaru dari biro penelitian Net Applications, Firefox menapak naik dengan menguasai 20,78 persen pangsa pasar browser pada bulan November, naik dari angka 19,97 persen di bulan Oktober.<br><br>Dikutip detikINET dari Afterdawn, Selasa (2/1/2/2008), Firefox kemungkinan sukses menggaet user yang sebelumnya mengandalkan browser Internet Explorer (IE) besutan Microsoft. Pasalnya, masih menurut data Net Applications, pangsa pasar IE kini menurun di bawah 70 persen untuk kali pertama sejak tahun 1998. IE sekarang menguasai 69,8 persen pangsa pasar dari sebelumnya 71,3 persen di bulan Oktober.<br><br>Padahal di masa jayanya di tahun 2003, IE pernah begitu dominan dengan menguasai 95 persen pasaran browser. Penurunan pangsa pasar IE ini disinyalir juga terkait musim liburan di AS di mana banyak perusahaan libur. Padahal browser IE banyak dipakai oleh kalangan perusahaan.<br><br>Adapun produk browser lainnya menunjukkan tren peningkatan. Apple Safari kini punya pangsa 7,13 persen dan Google Chrome sebesar 0,83 persen dari yang sebelumnya 0,74 persen. Sementara pangsa pasar Opera mengalami penurunan dari yang sebelumnya 0,75 persen menjadi 0,71 persen saja. (sumber: <a target="_blank" title="http://detikinet.com" href="http://detikinet.com">detikinet.com</a>)<br>', 'Sabtu', '2009-01-31', '13:58:31', '47firefox.jpg', 4, 'browser'),
(61, 22, 'admin', 'Sepatu Melayang Saat Bush Berpidato di Irak', 'sepatu-melayang-saat-bush-berpidato-di-irak', 'Y', 'Apakah pemerintah AS sakit hati karena Presiden Bush ditimpuk sepatu? Sudah pasti. Tapi di Irak, sepatu melayang itu sebagai pamitan terindah untuk Bush. Muntazer Al Zaidi dieluk-elukkan di Irak. Tuntutan masyarakat agar dia dibebaskan juga semakin kencang. Mereka menilai tindakan Al Zaidi menimpuk Bush dengan sepatunya sebagai tindakan paling berani.<br><br>Sahabat Al Zaidi di stasiun TV Al Baghdadia, mengungkapkan betapa bencinya Al Zaidi pada Bush. Dia menganggap Bush sebagai tokoh yang memerintahkan perang di Irak.<br><br>"Melempari sepatu pada Bush merupakan ciuman pamitan terbaik hingga sejauh ini ... itu merupakan ungkapan bagaimana rakyat Irak dan bangsa Arab lainnya membenci Bush," tulis Musa Barhoumeh, editor koran independen Yordania, Al-Gahd, Selasa (16/12).<br><br>Di Washington, Al Zaidi dicap sebagai orang yang cuma mencari perhatian.<br><br>"Tak diketahui apa motivasi orang itu, ia tampaknya jelas hanya berusaha mendapatkan perhatian atas dirinya," kata Jurubicara Deplu AS, Roberet Wood, kepada para wartawan.<br><br>Pemerintah Irak mencap tindakan Zaidi sebagai ''memalukan'' dan menuntut permintaan maaf dari pemimpin redaksinya yang berkerdudukan di Kairo. Namun Bos Al Zaidi malah menuntut pembebasan reporternya itu. (sumber: <a target="_blank" title="http://inilah.com" href="http://inilah.com">inilah.com</a>)<br>', 'Sabtu', '2009-01-31', '14:04:27', '38bush.jpg', 11, 'amerika,george-bush'),
(62, 22, 'admin', 'Monumen Menghormati Pelempar Sepatu Bush', 'monumen-menghormati-pelempar-sepatu-bush', 'Y', 'Wartawan pelempar sepatu ke arah mantan Presiden Amerika Serikat George W Bush Desember lalu, benar-benar menjadi pahlawan. Sebuah kota di Irak bahkan membuatkan monumen sepatu untuk menghormatinya. Seperti diartikelkan Reuters, Jumat (30/1/2009), monumen sepatu yang terletak di kota Tikrit Irak tersebut diresmikan Kamis kemarin. Sepatu sepanjang dua meter itu dilapis material berwarna perunggu.<br><br>"Muntazar: Puasa (bicara) hingga pedang menyayat kebisuan dengan darah. Sunyi hingga mulut kami menyuarakan kebenaran," demikian tertulis di monument itu. Saat melemparkan sepatunya ke Bush dalam sebuah konferensi pers di Baghdad, wartawan televisi Al Baghdadia itu mengucapkan bahwa Bush merupakan orang yang bertangung jawab atas kematian ribuan warga Irak. Zaidi juga menyebut Bush dengan kata "anjing".<br><br>Sejak insiden itu Zaidi medekam di penjara Baghdad. Dia menghadapi tuntutan penyerangan terhadap tamu negara dengan ancaman hukuman penjara hingga 15 tahun.<br><br>Pimpinan rumah yatim piatu dan organisasi kesejahteraan anak Tikrit Fatin Abdul Qader mengatakan monumen itu didesain oleh Laith Al Amiri dengan bobot keseluruhan sekira 1,2 ton. Tema monumen tersebut adalah "Patung Semangat dan Kedermawanan".<br><br>"Monumen ini merupakan ekspresi penghargaan dan apresiasi kami untuk Muntazhar Zaidi akrena hati orang-orang Irak akan tenang dengan leparan sepatunya," kata Fatin. (sumber: <a target="_blank" title="http://sabili.co..id" href="http://sabili.co..id">sabili.co.id</a>)<br>', 'Sabtu', '2009-01-31', '14:11:28', '91bushet.jpg', 5, 'amerika,george-bush'),
(75, 22, 'admin', 'Krisis Ekonomi Amerika, Bukti Gagalnya Kapitalisme', 'krisis-ekonomi-amerika-bukti-gagalnya-kapitalisme', 'Y', '<p>\r\nPresiden Ekuador, Rafael Correa menilai krisis yang terjadi di Amerika menjadi bukti kegagalan sistem kapitalis dan periode Kapitalisme telah berakhir serta ekonomi Amerika sebagai pasar terbesar dunia telah dililit krisis. (Kantor artikel Fars Prensa Latina Kuba).\r\n</p>\r\n<p>\r\nCorrea menambahkan, apa yang terjadi di Amerika tidak terbatas pada krisis keuangan, namun bukti kebuntuan sebuah sistem yang dibangun tanpa dicermati secara serius. \r\n</p>\r\n<p>\r\nMenurut Correa, solusi krisis sistem keuangan Amerika tidak akan bisa selesai dengan menyuntikkan dana 700 miliar dolar kepada bank-bank yang telah bangkrut, namun yang lebih penting lagi adalah Amerika harus melakukan perubahan fundamental. (sumber: hidayatullah.com)\r\n</p>\r\n', 'Sabtu', '2009-01-31', '14:13:52', '54RafelKarera.jpg', 19, 'amerika'),
(79, 22, 'admin', 'Ahmadinejad: Gaza Akan Jadi Kuburan Israel', 'ahmadinejad-gaza-akan-jadi-kuburan-israel', 'Y', 'Iran dan Israel tampaknya tidak akan pernah melakukan genjatan senjata. Presiden Iran Mahmoud Ahmadinejad melontarkan kata-kata serangan terhadap Israel dengan menyebut negara Yahudi itu akan segera lenyap dari bumi. "<span style="font-weight: bold; font-style: italic;">Kejahatan yang dilakukan rejim Zionis (Israel) terjadi karena mereka sadar sudah sampai di akhir dan segera lenyap dari muka bumi</span>," kata Ahmadinejad dalam pawai anti-Israel yang berlangsung di Teheran, seperti dilaporkan kantor artikel Mehr dan dikutip DPA, Sabtu (13/12).<br><br>Dia mengatakan Israel sudah kehilangan arah dan kian sadar bahwa kelompok negara-negara kuat makin ragu untuk menunjukkan dukungan untuk negara Yahudi itu.<br><br>Ahmadinejad juga mengatakan bahwa kejahatan Israel di Gaza bertujuan mengganti pemimpin politik di wilayah itu agar sesuai dengan kepentingan politik Israel. (sumber: <a target="_blank" title="Situs artikel Inilah.com" href="http://inilah.com">inilah.com</a>)<br>', 'Senin', '2009-02-02', '14:23:39', '22ahmadinejad.jpg', 88, 'gaza,israel,palestina'),
(65, 23, 'admin', 'Michael Heart "Song for Gaza"', 'michael-heart-song-for-gaza', 'Y', 'Banyak cara untuk men-support perjuangan rakyat Palestina di Gaza, salah satunya dengan lagu. Seorang penyanyi di Los Angeles Amerika Serikat - Michael Heart yang bernama asli Annas Allaf kelahiran Syiria, membuat sebuah lagu khusus yang dia tujukan untuk rakyat Gaza yang sampai saat ini masih jadi sasaran pembantaian oleh Zionis Israel.<br><br>Sejak dia merilis lagu yang berjudul "We will not go down" (Song for Gaza), lagu tersebut mendapat banyak respon, berupa komentar dukungan, sampai ia sendiri kewalahan menjawab dan membalas berbagai email yang masuk.<br><br>Michael Heart menggambarkan kondisi rakyat Gaza akan gempuran Zionis Israel dalam lagunya itu membuat kita merasa tersindir dan sedih akan nasib rakyat Gaza. Walaupun lagu itu baru di rilis, namun telah ratusan ribu orang melihatnya di youtube dan mendownload MP3 nya.<br><br>Awalnya dia berencana dengan menjual CD lagu MP3 nya itu dan hasil penjualannya akan dia donasikan untuk kepentingan amal kemanusiaan untuk penduduk Gaza, tapi karena dia merasa sulit kalau harus sendiri mendonasikan hasil penjualan CD MP3 nya, akhirnya dia memutuskan semua orang bisa mendownload gratis lagu tersebut. Dan dia berharap, setelah mendengarkan lagu itu, orang-orang akan tergerak hatinya untuk membantu rakyat Palestina di Gaza dengan mendonasikan uangnya ke lembaga-lembaga kemanusiaan yang ada atau organisasi yang didedikasikan untuk meringankan penderitaan rakyat Palestina.<br><br>Sebagai musisi Michael Heart sangat berterima kasih atas dukungan yang diberikan kepada dia atas lagu tersebut. Dan dia berharap setiap orang yang masih mempunyai hati nurani, mendukung perjuangan rakyat Palestina dan membantu mereka walau hanya dengan berupa doa.<br><br><br><span style="font-weight: bold;">WE WILL NOT GO DOWN (Song for Gaza)</span><br style="font-weight: bold;"><br style="font-style: italic;"><span style="font-style: italic;">A blinding flash of white light</span><br style="font-style: italic;"><span style="font-style: italic;">Lit up the sky over Gaza tonight</span><br style="font-style: italic;"><span style="font-style: italic;">People running for cover</span><br style="font-style: italic;"><span style="font-style: italic;">Not knowing whether they''re dead or alive</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">They came with their tanks and their planes</span><br style="font-style: italic;"><span style="font-style: italic;">With ravaging fiery flames</span><br style="font-style: italic;"><span style="font-style: italic;">And nothing remains</span><br style="font-style: italic;"><span style="font-style: italic;">Just a voice rising up in the smoky haze</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In the night, without a fight</span><br style="font-style: italic;"><span style="font-style: italic;">You can burn up our mosques and our homes and our schools</span><br style="font-style: italic;"><span style="font-style: italic;">But our spirit will never die</span><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In Gaza tonight</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">Women and children alike</span><br style="font-style: italic;"><span style="font-style: italic;">Murdered and massacred night after night</span><br style="font-style: italic;"><span style="font-style: italic;">While the so-called leaders of countries afar</span><br style="font-style: italic;"><span style="font-style: italic;">Debated on who''s wrong or right</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">But their powerless words were in vain</span><br style="font-style: italic;"><span style="font-style: italic;">And the bombs fell down like acid rain</span><br style="font-style: italic;"><span style="font-style: italic;">But through the tears and the blood and the pain</span><br style="font-style: italic;"><span style="font-style: italic;">You can still hear that voice through the smoky haze</span><br style="font-style: italic;"><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In the night, without a fight</span><br style="font-style: italic;"><span style="font-style: italic;">You can burn up our mosques and our homes and our schools</span><br style="font-style: italic;"><span style="font-style: italic;">But our spirit will never die</span><br style="font-style: italic;"><span style="font-style: italic;">We will not go down</span><br style="font-style: italic;"><span style="font-style: italic;">In Gaza tonight </span><br><br>(sumber: detik.com)<br>', 'Sabtu', '2009-01-31', '14:26:40', '24michaelheart.jpg', 24, 'gaza,israel,palestina'),
(66, 22, 'admin', 'Demo Kecam Israel Warnai Ibukota', 'demo-kecam-israel-warnai-ibukota', 'Y', 'Aksi unjuk rasa menentang agresi militer Israel ke Jalur Gaza, Palestina kembali mewarnai Jakarta. Unjuk rasa kali ini dilakukan oleh Ormas Islam Hizbut Thahrir di kawasan Silang Monas, Jakarta. Sejak Minggu (4/1) pagi, para pengunjuk rasa nampak berbondong-bondong membawa karton besar bertuliskan ''Save Palestine'' dan foto anak-anak serta perempuan Palestina yang menjadi korban tak berdosa dari serangan biadab militer Israel.<br><br>Kepada warga Jakarta yang berolahraga di sekitar kawasan Monas, para pengunjuk rasa juga mengedarkan kotak sumbangan untuk didonasikan kepada korban warga Palestina.<br><br>Aksi unjuk rasa dan banyaknya warga Jakarta yang rutin berolahraga di kawasan Silang Monas setiap Minggu pagi, membuat kawasan itu cukup padat untuk dilalui kendaraan bermotor.<br><br>Serangan udara Israel yang dimulai pada 27 Desember 2008 sudah terjadi selama sepekan di Jalur Gaza dan menewaskan lebih 420 orang.<br><br>Meski mendapat kutukan keras dari dunia Internasional, termasuk Indonesia, Israel sampai saat ini belum menunjukkan tanda-tanda akan menghentikan aksi militernya. (sumber: inilah.com)<br>', 'Sabtu', '2009-01-31', '14:29:16', '32demo.jpg', 23, 'gaza,israel,palestina'),
(67, 2, 'admin', 'Ana Ivanovic Dinobatkan Sebagai Ratu Tenis 2008', 'ana-ivanovic-dinobatkan-sebagai-ratu-tenis-2008', 'Y', 'Ana Ivanovic, dara kelahiran Belgrade pada tanggal 6 November 1987 sudah mulai bermain tenis sejak umur 5 tahun sesudah menonton Monica Seles di TV, mengingat nomor telpon sekolah tenis lokal dan memohon kepada orang tuanya untuk mengajak pergi ke sekolah itu. Kemudian di acara ulang tahunnnya yang ke-5, orang tuanya memberi hadiah berupa raket tenis dan sejak itu dia mulai jatuh cinta dengan dunia tenis. Kemudian Ana mulai berlatih tenis secara intens dengan Scott Byrnes pada bulan juli 2006.<br><br>Dragana, ibunya adalah seorang pengacara, sedangkan Miroslav bapaknya adalah seorang pebisnis, Milos kakaknya adalah seorang pemain basket dan seluruh keluarganya menyukai olahraga, tetapi tidak ada yang menyukai tenis seperti ana.<br><br>Senjata utamanya di tenis adalah pukulan forehand-nya, dan dia bisa main di segala jenis lapangan. Hobinya adalah menonton film di bioskop atau menonton DVD di rumah. Ana juga suka membaca, khususnya tentang Mitologi dan Sejarah Yunani. Ana juga senang sekali mendengarkan musik.<br><br>Pada tahun 2008 ini, setelah menjuarai Roland Garros prancis dengan mengalahkan Dinara safina dari rusia di final, maka saat ini peringkat Ana Ivanovic naik menjadi peringkat 1 dunia untuk petenis putri.<br>', 'Sabtu', '2009-01-31', '14:30:48', '20anaivanovic.jpg', 7, 'tenis'),
(73, 2, 'admin', 'Maria Kirilenko, Petenis Terseksi Versi WTA', 'maria-kirilenko-petenis-terseksi-versi-wta', 'Y', 'Pesona kecantikan Maria Sharapova dan Ana Ivanovic sepertinya sudah mendapat saingan baru. Tidak jauh-jauh, nama Maria Kirilenko tiba-tiba menyeruak di daftar petenis terseksi pilihan responden WTA. Artinya, Maria sukses merengkuh gelar yang musim lalu diraih Maria Sharapova.<br><br>Setengah dari 7 ribu responden yang masuk ke WTA menyebut, kalau Maria adalah sosok petenis ideal dan paling proporsional di level bentuk tubuh. Meski hanya berperingkat 18 dunia, namun pesonanya di atas lapangan tenis menjadi daya tarik tersendiri.<br><br>"Tubuhnya sangat indah, siluetnya membuat setiap pria pasti penasaran ingin melihat lebih dekat. Yang jelas, ia memiliki kepribadian baik yang makin menyempurnakan pesona fisiknya," tulis seorang responden. Di kalangan petenis putri sendiri, sudah lama Maria menjadi saingan berat Masha dan Ana ivanovic.<br><br>Di situs pribadinya, petenis bernama asli Maria Yuryevna Kirilenko ini mengaku selalu menjaga proporsi tubuh dengan senam dan renang, selain tentu berlatih fisik tenis. "Olahraga adalah cermin hidupku, jika tak olahraga sehari saja, kadang membuat tubuhku terasa lemas dan tak bergairah," ujar Maria.&nbsp; (persda network/bud)<br><br>Meksi bersaing di lapangan dan dunia mode, namun ternyata sosok Maria Kirilenko adalah sobat sejati Maria Sharapova. Bukan hanya karena sama-sama berasal dari Rusia, namun gaya hidup mereka berdualah yang membuat Maria-Masha banyak memiliki kecocokan.<br>Selain suka fotografi, mereka berdua juga memiliki hobi berbelanja, terutama fashion dan perhiasan. Bukan untuk pamer memang, tapi mereka melakukan itu untuk tabungan dan investasi.<br><br>Di beberapa turnamen, Masha dan Maria memang tampak bersama tatkala berada di luar lapangan. Mereka biasanya menyingkir dari rombongan pemain lain, dan memilih berburu barang kesukaan mereka dengan menyisir bagian kota tempat mereka tengah bertanding. "Aku dan Masha seperti kakak beradik, bagiku dia lebih dari sekedar sahabat, dia begitu dewasa, apalagi saat kami berdua saling curhat," sebut Maria, di tennisnews. <br><br>Daftar petenis terseksi WTA:<br><ol><li>Maria Kirilenko (Russia)</li><li>Maria Sharapova (Russia)</li><li>Ana Ivanovic (Serbian)</li><li>Caroline Wozniacki (Danish)</li><li>Nicole Vaidisova (Czech)</li><li>Sania Mirza (Indian)</li><li>Ashley Harkleroad (American)</li><li>Gisela Dulko (Argentinian)</li><li>Samantha Stosur (Australian)<br></li></ol>', 'Sabtu', '2009-01-31', '15:01:49', '14mariakirilenko.jpg', 41, 'tenis'),
(68, 2, 'admin', 'Roger Federer, Petenis Legenda Abad Ini', 'roger-federer-petenis-legenda-abad-ini', 'Y', 'Siapa yang tak kenal dengan Roger Federer saat ini? Masih muda, ganteng, namun sudah jadi legenda. Bayangkan, dalam usia belum menginjak 26 tahun, ia sudah memecahkan rekor bertahan sebagai peringkat pertama dunia tenis selama 161 pekan berturut-turut. Ia memecahkan rekor Jimmy Connor yang sudah bertahan puluhan tahun. <br><br>Itu baru satu rekor. Sebelumnya, ia juga mendapat penghargaan Bagel Award, yakni penghargaan sebagai petenis paling banyak memenangkan set tenis dengan angka sempurna 6-0. "Saya hanya berusaha melakukan yang terbaik dan tidak berhenti memperbaiki kesalahan-kesalahan saya,"sebut Federer merendah tentang prestasinya itu.<br><br>Dengan kerendahhatian dan semangat untuk terus memperbaiki diri, pria keturunan campuran Swiss, German, dan Afrika Selatan ini sepertinya akan terus mengukir prestasi. Sebab, mengingat usia yang masih muda dan jarak nilai ATP dengan peringkat kedua dunia Rafael Nadal, cukup jauh, ia akan bisa terus bertahan di rangking satu dunia. Apalagi jika ia nantinya bisa memenangkan satu-satunya gelar tenis Grand Slam yang belum diraih, Perancis Terbuka. Ia akan jadi satu-satunya petenis pria yang bisa mengawinkan semua gelar tenis Grand Slam.<br><br>Roger Federer memang sepertinya terlahir untuk jadi legenda. Bahkan, menurut pengakuannya, sejak kecil ia sudah disebut banyak orang punya bakat gemilang di bidang olahraga. Tapi, menurut dirinya, bukan bakat yang membuatnya seperti sekarang. Kerja keras, ketekunan berlatih, dan keuletan di lapangan lah yang membuat dia bisa jadi juara sejati. "Saya terus berlatih untuk meningkatkan teknik permainan saya dan menambah kekuatan saya. Proses ini saya jalani sampai hari ini dan bahkan makin saya tingkatkan sejak saya jadi juara. Ini saya lakukan karena saya yakin masih banyak perbaikan yang harus terus dilakukan."<br><br>Dengan tekad untuk terus melakukan perbaikan itu, Roger Federer terus meretas jalan untuk mengukir rekor-rekor lainnya. Namun, semua rekor dan kemenangan yang diperolehnya, ternyata bukan hanya untuk kebanggaan dirinya. Melalui sebuah yayasan yang diberi nama seperti dirinya, Roger Federer Foundation, ia membantu anak-anak kurang beruntung di dunia terutama di Afrika Selatan. Sebagian hadiah yang diperoleh dari kemenangannya di kejuaraan tenis, digunakan untuk membantu anak-anak itu. Ia juga berperan banyak saat terjadi tsunami akhir tahun 2005. Saat itu, ia terpilih menjadi duta UNICEF, untuk membantu anak-anak yang jadi korban tsunami di Tamil Nadu, India. Ia juga berjanji untuk mengukir lebih banyak kemenangan guna mengumpulkan lebih banyak dana untuk yayasannya. Ia juga merelakan beberapa raketnya untuk dilelang guna disumbangkan melalui UNICEF. Roger Federer telah membuktikan, dengan kerja keras, semangat pantang menyerah, tekad kuat, dan kepedulian terhadap sesama, telah menjadikannya sebagai juara sejati.<br><br>Dari kisah sukses Roger Federer ini, kita dapat mengambil pelajaran bahwa dengan kerja keras disertai semangat pantang menyerahlah kita bisa mewujudkan cita-cita. Selain itu, kepedulian kepada sesama juga selayaknya dapat mendorong semangat kita untuk terus mengukir prestasi. (sumber: andriewongso.com)<br>', 'Sabtu', '2009-01-31', '18:59:14', '33federer.jpg', 16, 'tenis'),
(70, 19, 'admin', 'Kisah Sukses Google', 'kisah-sukses-google', 'Y', 'Dalam daftar orang terkaya di Amerika baru-baru ini, terselip dua nama yang cukup fenomenal. Masih muda, usianya baru di awal 30-an, namun kekayaannya mencapai miliaran dolar. Nama kedua orang itu adalah Larry Page dan Sergey Brin. Mereka adalah pendiri Google, situs pencari data di internet paling terkenal saat ini.<br><br>Terlepas dari jumlah kekayaan mereka, ada beberapa hal yang perlu dicontoh dari kisah sukses mereka. Satu hal yang pertama, yang disebut Sergey Brin, yang kini menjabat sebagai Presiden Teknologi Google, yakni tentang kekuatan kesederhanaan. Menurutnya, simplicity web adalah hal yang disukai penjelajah internet. Dan, Google berhasil karena menggunakan filosofi tersebut, menghadirkan web yang bukan saja mudah untuk mencari informasi, namun juga menyenangkan orang.<br><br>Kunci sukses kedua adalah integritas mereka dalam mewujudkan impiannya. Mereka rela drop out dari program doktor mereka di Stanford University untuk mengembangkan google. Mereka pun pada awalnya tidak mencari keuntungan dari proyek tersebut. Malah, kedua orang itu berangkat dari sebuah ide sederhana. Yakni, bagaimana membantu banyak orang untuk mempermudah mencari sumber informasi dan data di dunia maya. Mereka sangat yakin, ide mereka akan sangat berguna bagi banyak orang untuk mempermudah mencari data apa saja di internet.<br><br>Kunci sukses lainnya yaitu mereka tidak melupakan jasa orang-orang yang mendukung kesuksesan mereka. Larry dan Sergey sangat memerhatikan kesejahteraan SDM di Google. Kantornya yang diberi nama Googleplex dinobatkan sebagai tempat bekerja terbaik di Amerika tahun 2007 oleh majalah Fortune. Di sana suasananya sangat kekeluargaan, ada makanan gratis tiga kali sehari, ada tempat perawatan bagi bayi ibu muda, bahkan sampai kursi pijat elektronik pun tersedia. Mereka sadar, di balik sukses inovasi yang dilakukan Google, ada banyak doktor matematika dan lulusan terbaik dari berbagai universitas yang membantu mereka.<br><br>Larry dan Sergey memang tak pernah menduga Google akan sesukses sekarang. Kedua orang yang terlahir dari keluarga ilmuwan ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ ayah Sergey adalah doktor matematika, sedangkan Larry adalah putra almarhum doktor pertama komputer di Amerika ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ ini memang hanya berangkat dari sebuah masalah sederhana. Mereka berusaha memecahkan masalah tersebut, dan berbagi dengan orang lain. Namun, justru dengan kesederhanaan dan integritas mereka, mampu membuat Google saat ini menjadi mesin pencari terdepan, dikunjungi lebih dari 300 juta orang perhari. Diterjemahkan dalam 88 bahasa dengan nilai saham mencapai lebih dari 500 dolar AS per lembar, membuat sebuah kesederhanaan menjelma menjadi kekuatan yang luar biasa.<br><br>Sebuah niat mulia, meski sesederhana apapun, jika dilandasi kerja keras dan integritas yang tinggi, akan menghasilkan sesuatu yang istimewa. Hal tersebut nampak dari contoh kisah sukses Larry Page dan Sergey Brin di atas. Google yang mereka dirikan terbukti telah membantu banyak orang untuk bisa mendapatkan apa saja dari internet. Dan kini, mereka pun mendapatkan imbalan yang bahkan tak diduga mereka sebelumnya. Kesuksesan sejati memang akan terasa saat kita bisa berbagi. Dan, Larry serta Sergey membuktikannya sendiri. (sumber: andriewongso.com)<br>', 'Minggu', '2009-01-25', '20:26:26', '73google.jpg', 6, 'google'),
(85, 19, 'admin', 'Windows 7 Gantikan Windows Vista', 'windows-7-gantikan-windows-vista', 'Y', '<p>\r\nMicrosoft  ingin memudahkan rencana para administrator komputer yang akan bermigrasi ke Windows 7, namun sebuah tulisan di blog salam satu anggota tim Windows 7 berkata sebaliknya.\r\nSkenario uji coba terbaru menunjukkan, sebagian besar pengguna, proses upgrading akan menyulitkan, mengambil waktu kira-kira 30 menit. \r\n</p>\r\n<p>\r\nProsentasi terbesar pengguna menyebut, migrasi butuh waktu hingga 21 jam.\r\nSalah satu anggota tim Windows dari Microsoft, Chris Hernandez, mengungkap hasi pengetesan timnya dengan berbagai merek komputer dan konfigurasi tipikal pengguna lewat simulasi pada tingkatan berbeda dari proses migrasi Vista ke Windwos pada Jumat akhir pekan lalu.\r\n</p>\r\n<p>\r\nTujuan simulasi untuk memastikan apakah upgrade dari Vista Service Pack (SP) 1 ke Windows 7, dalam lima persen percobaan utama, lebih cepat ketimbang upgrade dari Vista SP1 ke Vista SP2, ujar Chris.\r\nProses dari Vista SP1 ke Vista SP2 dipilih karena itu opsi instalasi paling umum digunakan Microsoft Product Support Services, yakni skenario repair (perbaikan ulang) di mana prosedur yang paling dianjurkan adalah melakukan re-instalasi sistem operasi (OS) yang sudah ada di komputer saat itu. \r\n</p>\r\n<p>\r\nChris menampilkan hasil tes dalam blognya.\r\nTim mengetes konfigurasi komputer khusus hadware, merentang dari label hardware low-end (spesifikasi rendah), mid-range (spesifikasi menengah) dan high-end (spesifikasi atas). label itu berlawanan dengan skenario pengguna pada umumnya yang berbasis pertanyaan seperti, berapa besar set data yang dibutuhkan pengguna dan bagaimana macam aplikasi tersebut diinstall.\r\n</p>\r\n<p>\r\nUntuk label komputer spesifikasi atas, Chris dan timnya mendefinisikan komputer dengan sistem operasi 32 bit dan memiliki CPU berprosesor Inter Core 2 Quad, yang bejalan di 2,4 GHz, memori 4GB dan hardisk 1 Terabyte .\r\nSementara, pengguna umumnya memiliki data sebesar 125 GB yang terikat dalam format dokumen, musik dan gambar dengan 40 aplikasi yang diinstal di komputer mereka.\r\nKinerja upgrade Vista SP1 ke Windows 7 pada hardware spesifikasi atas dengan konfigurasi pemilik pengguna kelas berat, membutuhkan 160 menit, atau sekitar 2,7 jam. \r\n</p>\r\n<p>\r\nSebagai perbandingan, upgrade repair (perbaikan) dari Vista SP1 ke Vista SP1 dengan hadware yang sama dan penggunaan bera membutuhkan 176 menit, atau 2,9 jam.\r\nSkenario terburuk muncul pada konfigurasi hadware kelas menengah, yakni CPU 32 bit namun dengan software dan konfigurasi &quot;pengguna super&quot;. Proses upgrading akan butuh waktu hingga 1.220 menit alias 20,3 jam. Padahal yang dianggap hadware kelas menengah, memiliki spesifikasi setara memory 2GB RAM, prosesor dual core, Athlon 64 X2, pada 2,6GHz dan hardisk 1 Terabyte.\r\n</p>\r\n<p>\r\nMereka yang dianggap pengguna super, memiliki profil lebih sadis dalam istilah penggunaan data, ketimbang pengguna kelas berat pada umumnya. Sebagai contoh, tim penguji menyebut pengguna super memiliki 650 GB data dan 40 aplikasi lebih yang terinstal dalam komputer mereka.\r\nLalu pada kelas rendah, pengguna medium, dengan 70 GB data dan 20 aplikasi, dengan memori sekitar 1 GB, prosesor 64 bit, AMD Athlon pada kecepatan 2,2 GHz, bakal butuh waktu bermigrasi sekitar 175 menit. Hardware yang lebih bertenaga, secara umum membutuhkan waktu instalasi lebih singkat.\r\n</p>\r\n<p>\r\nMicrosoft tidak selalu bisa mencapai target lima persen tujuan tim Chris yang telah dijanjikan. Dalam satu contoh, instalasi bersih (instalasi pertama pada komputer baru tanpa OS) Windows 7 pada hardware spesifikasi menengah membutuhkan 30 menit sementara instalasi bersih Vista SP1 butuhk 31 menit. Hanya saja, secara keseluruhan, tidak ada instalasi Windows 7 yang lebih lambat dibandingkan Vista.\r\n</p>\r\n<p>\r\nPertanyaan tersisa, apakah para toko dan ritel software akan mendengar rayuan Microsoft dan memutuskan hijrah ke Windows 7 lebih cepat? Tradisi yang berlaku, ritel IT akan cenderung menunggu Service Pack I sebelum mendatangkan versi terbaru Windows.\r\nWaktu yang akan menjadi sumber menentukan apakah kalangan profesional IT akan berpindah, sehingga Vista tak lagi menarik bagi ritel dan toko software. Jadi kehijrahan mereka ke Windows 7 dengan segera, menandakan pula, apakah para profesional IT suka dengan hasil pengujian waktu instal yang dilakukan Chris Hernandez.  internetnews/itz.\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:25:22', '19windows7.jpg', 18, 'komputer'),
(92, 23, 'admin', 'Pemilik Facebook akan Dibuat Filmnya', 'pemilik-facebook-akan-dibuat-filmnya', 'Y', '<p>\r\nSutradara David Fincher nampak jeli melihat peluang di tengah booming fenomena Facebook. Fincher akan menghadirkan sebuah film yang menceritakan tentang Mark Zuckerberg dan Facebook bagi para pencinta film dan Facebook tentunya.\r\n</p>\r\n<p>\r\nFincher mengaku rencana pembuatan film ini masih dinegosiasikan dengan pihak Zuckerberg. Dia hanya menyebutkan, filmya akan fokus menceritakan Mark Zuckerberg yang awalnya merancang Facebook sebatas untuk keperluan mahasiswa Universitas Harvard.\r\n</p>\r\n<p>\r\nFilm ini memaparkan bagaimana setelah itu Facebook kemudian berkembang menjadi fenomena yang mendunia sejak diluncurkan pada 2004.\r\n</p>\r\n<p>\r\nDalam penggarapan film ini, Fincher mengajak serta orang-orang kompeten di bidang film. Antara lain Aaron Sorkin, yang merupakan penulis naskah acara serial televisi ternama The West Wing.\r\n</p>\r\n<p>\r\nSementara itu, Columbia Pictures yang menamai film ini &quot;The Social Network&quot; dipercaya untuk memulai produksi film pada akhir tahun ini.\r\n</p>\r\n<p>\r\nSebagian orang menilai kehadiran film ini nantinya akan mengorek kembali kasus lama dimana tiga teman Zuckerberg, Cameron dan Tyler Winklevoss serta Divya Narendra mengklaim Zuckerberg telah mencuri ide mereka untuk membuat Facebook.\r\n</p>\r\n<p>\r\nPada saat Zuckerberg meluncurkan Facebook, mereka menuntut perkara atas Zuckerberg. Awal tahun ini, pengadilan AS memutuskan Facebook harus membayar USD65 juta untuk melunasi perkara ini.\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:36:47', '17mark_zuckerberg.jpg', 22, 'film'),
(90, 19, 'admin', 'Ferrari 458 Polesan Teknologi Jepang', 'ferrari-458-polesan-teknologi-jepang', 'Y', '<p>\r\nBarangkali hanya Jepang (diluar Italia) yang berani memoles bodi mobil dari Ferrari, sekaligus mengumumkan hasilnya kepada publik. Seperti dilakukan rumah modifikasi ASI terhadap Ferrari 458 yang oleh pabrikannya di Italia baru di launching.\r\n</p>\r\n<p>\r\nASI dengan keberaniannya menggarap proyek berisiko tinggi. Beberapa mobil berharga miliaran rupiah pernah digarap dan membuat tampilan mobil lebih sporty dan tambah dinamis dari versi standar.\r\n</p>\r\n<p>\r\nSebut saja, Bentley Continental GT (yang diberi julukan The ASI Tetsu GTR) dan Ferrari 430. Bahkan Ferrari milik seorang pengusaha muda di Indonesia pernah juga dimodifikasi (body) di Jepang pada 2007.\r\n</p>\r\n<p>\r\nCEO ASI Satoshi Kondo menjelaskan, bahwa tim rekayasanya telah bekerja keras memproduksi aerokit untuk Ferrari 458. ASI, katanya sengaja mengeluarkan sketsa dari hasil kerja mereka dengan terus melakukan finalisasi prototype yang ada, dan menghindari pencurian desain.\r\n</p>\r\n<p>\r\nSentuhan pada bagian depan dari kuda jingkrak menjadi salah satu yang menonjol. Di antaranya moncong yang baru, lubang udara lebih besar, dan dilanjutkan pada bagian roda. Dari sketsa gambar tampak terpasang sayap baru di bagian belakang.\r\n</p>\r\n<p>\r\nPaket body kit dari ASI mempertegas tampilan Ferrari sebagai hasil kawin silang dari gaya tuner Jepang dengan kendaraan eksotis khas Italia. ASI mengklaim, adanya perubahan dan penambahan pada bodi tidak mengurangi performa standar. Bahkan bobot kendaraan lebih ringan dari asli. (sumber: kompas.com)\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:44:05', '4ferrari458.jpg', 2, 'mobil'),
(86, 22, 'admin', 'Program 100 Hari Menkominfo Tifatul', 'program-100-hari-menkominfo-tifatul', 'Y', '<p>\r\nBelum juga resmi diumumkan masuk jajaran kabinet, sejumlah calon menteri sudah berani membeberkan programnya. Salah satunya, Tifatul Sembiring. Tifatul disebut-sebut sebagai calon kuat Menkominfo (Menteri Komunikasi dan Informasi).\r\n</p>\r\n<p>\r\nApa saja program Tifatul? &quot;100 Hari pertama? Kita targetkan sampai 2014 itu ada 10 ribu desa komputer. Presiden menargetkan tiga bulan ini ada 100 desa komputer harus tercapai,&quot; kata Tifatul di Gedung MPR/DPR, Jakarta, Selasa 20 Oktober 2009.\r\n</p>\r\n<p>\r\nKomputer-komputer ini, kata dia, bisa dimasukkan ke lembaga pendidikan untuk meningkatkan sumber daya manusia. Bagaimana SDM Indonesia bisa masuk ke bisnis supaya Indonesia bisa bersaing dengan negara-negara lain. Selain itu juga untuk meningkatkan e-goverment untuk meminimalisir korupsi, kolusi, kolusi dan nepotisme.\r\n</p>\r\n<p>\r\nDengan e-goverment, kata dia, maka nantinya semua urusan menjadi less paper. Artinya pegawai di tingkat pemda dan kecamatan, tidak lagi menerima uang tunai. &quot;Tapi cukup menerima resi, sehingga sogok menyogok bisa diminimalisir,&quot; kata dia.\r\n</p>\r\n<p>\r\nTifatul sendiri mengaku tidak begitu asing dengan dunia Kominfo karena latar belakang pendidikannya cukup mendukung. Gelar sarjana strata satunya di bidang Informatika dan Komunikasi. Ia juga mengaju pernah bekerja selama delapan tahun di sistem informatika dan komunikasi PT Perusahaan Listrik Negara.\r\n</p>\r\n<p>\r\nSementara strata duanya di bidang politik internasional di Islamabad, Pakistan. &quot;Itu saja sih, pinter ya belum, diupayakan sesuai,&quot; kata dia.\r\n</p>\r\n<p>\r\nNamun ia berharap bisa menembus tantangan Kominfo ke depan, yakni perbedaan kemudahan akses di kota besar dan desa. Selain itu juga soal infrastruktur yang masih lemah. Masalah lain, kurangnya tayangan edukatif di bidang informasi. &quot;Dalam satu riset dikatakan 10 dari 75 tayangan di TV, radio masih bermasalah,&quot; kata dia.\r\n</p>\r\n<p>\r\nDia menambahkan, pelayanan informasi di Indonesia juga masih  lemah. Karena itu ia akan mengusahakan peningkatan layanan informasi ini. (Sumber: vivanews.com)\r\n</p>\r\n', 'Minggu', '2009-10-25', '07:49:46', '27tifatul_sembiring.jpg', 16, 'komputer'),
(93, 23, 'admin', 'Dalam Dua Pekan, KCB 2 Ditonton 1,5 Juta Penonton', 'dalam-dua-pekan-kcb-2-ditonton-15-juta-penonton', 'Y', '<p>\r\nFilm Ketika Cinta Bertasbih (KCB) 2 diyakini bakal mereguk sukses seperti sekuel pertamanya Sejak diputar perdana tanggal 17 September lalu atau selama 15 hari, film garapan SinemArt telah disaksikan 1,5 juta penonton. \r\n</p>\r\n<p>\r\nRekor yang sama juga dialami KCB 1. &quot;Pada pemutaran KCB 1 kami bisa memecah rekor pemutaran film di Indonesia, yaitu mendapat penonton sebanyak 100.000 perhari,&quot; ungkap Frans dari SinemArt saat promo film KCB 2 di Royal Plaza, Minggu (4/10).\r\n</p>\r\n<p>\r\nPihak SinemArt berharap KCB 2 bisa meraih prestasi minimal sama dengan KCB 1 dengan total 3 juta penonton. Untuk mencapai target tersebut, pihak SinemArt tak henti melakukan serangkaian promo di sejumlah kota di Tanah Air maupun di mancanegara.\r\n</p>\r\n<p>\r\n&quot;Hari ini (Minggu, 4/10), Kholidi (Kholidi Asadil Alam, pemeran Azzam) dan Oki (Oki Setiana Dewi pemeran Anna) ke Hongkong untuk promo di sana,&quot; imbuh Frans. Pekan depan (10-12 Oktober 2009), giliran Meyda Sefira berangkat ke Makau untuk kegiatan yang sama.\r\n</p>\r\n<p>\r\nFilm besutan sutradara Chaerul Umam ini juga dijadwalkan diputar di Aceh pada tanggal 11-12 Oktober mendatang. Menurut Frans, pemutaran KCB 1 di kota yang dikenal dengan sebutan Serambi Mekkah ini ditonton 8.000 orang.\r\n</p>\r\n<p>\r\nPadahal di kota tersebut sama sekali tidak ada gedung bioskop. Karena itu kru SinemArt terpaksa mengusung peralatan khusus dari Jakarta dan memutar di sebuah gedung khusus selama dua hari dalam tujuh kali show.\r\n</p>\r\n<p>\r\nBertutur tentang kesan berperan di KCB 2, Kholidi beberapa waktu lalu mengaku paling terkesan dengan adegan kecelakaan saat membonceng Bu&#39;e (Ninik L Karim). Karena ketika sepeda motornya terjatuh dia harus teriak memanggil ibundanya. &quot;Bu&#39;eee! Wah itu lumayan sulit,&quot; ungkap Kholidi.\r\n</p>\r\n<p>\r\nAdegan lain yang cukup berkesan adalah ketika pria asal Pasuruan ini terkapar di rumah sakit paska kecelakaan yang dia alami. &quot;Ekspresi orang sakitnya kan harus dapat. Terus suaranya juga harus disesuaikan, tidak seperti kita ngomong biasa, jadi agak sedikit tertahan di tenggorokan, powernya tidak full seperti ngomong biasanya,&quot; bebernya.\r\n</p>\r\n<p>\r\nUntuk adegan itu Kholidi yang kini menempuh pendidikan di Universitas Al Azhar, Jakarta melakukan observasi pada beberapa orang yang pernah mengalami kecelakaan. &quot;Aku juga tanya-tanya ke dokter. Ternyata di tempat tidurnya nggak bisa pakai bantal, posisi badannya harus lurus. Terus kalau ada gips di kaki, posisi jalan kita akan seperti apa. Biar nantinya terlihat lebih reel lah adengannya,&quot;  pungkas Kholidi. (sumber: <a href="http://surya.co.id">surya.co.id</a>) \r\n</p>\r\n', 'Minggu', '2009-10-25', '07:55:45', '54kcb2.jpg', 53, 'film'),
(91, 2, 'admin', 'Manchester United Incar Zidane Baru', 'manchester-united-incar-zidane-baru', 'Y', '<p>\r\nManchester United sedang mengincar pemain muda Perancis berdarah Aljazair. Pemain itu adalah Sofiane Feghouli yang baru berusia 19 tahun.\r\n</p>\r\n<p>\r\nSofiane Feghouli saat ini memperkuat tim Liga Perancis, Grenoble Foot 38. Posisinya adalah di lapangan tengah.\r\n</p>\r\n<p>\r\nPemain yang punya tinggi badan 178 cm itu disebut punya gaya bermain yang serupa dengan Zinedine Zidane. Feghouli sudah masuk dalam tim nasional Perancis U-21.\r\n</p>\r\n<p>\r\nTak hanya MU yang menginginkan pemain yang pernah ditolak Paris Saint-Germain itu. Tim-tim besar macam Barcelona, Liverpool dan Inter Milan juga sedang mengambil ancang-ancang untuk mengajukan tawaran.\r\n</p>\r\n<p>\r\nSeperti diartikelkan Tribalfootball, MU sudah berencana untuk melakukan transaksi dengan Grenoble bulan Januari nanti. (Sumber: vivanews.com)\r\n</p>\r\n', 'Minggu', '2009-10-25', '13:58:18', '62sofiane.jpg', 20, 'sepakbola'),
(99, 19, 'admin', 'Editor TextArea Ala Ms Word', 'editor-textarea-ala-ms-word', 'Y', '<div style="text-align: center">\r\n</div>\r\n<div style="text-align: center">\r\n</div>\r\n<div style="text-align: center">\r\n</div>\r\n<p>\r\nSecara standar, textarea akan ditampilkan apa adanya, artinya teks yang diketik tidak bisa diatur formatnya, misalnya apabila kita ingin kalimat tertentu ditebalkan, dimiringkan atau diatur jenis dan ukuran hurufnya. Hal ini tidak bisa dilakukan dalam textarea standar, kecuali Anda hapal perintah HTML, kemudian menuliskannya secara manual di textarea tersebut, namun bagi reporter atau user yang awam tentu hal ini cukup menyulitkan mereka.<br />\r\n<br />\r\nSolusinya, gunakan editor <strong>WYSIWYG</strong> (<em>What You See Is What You Get</em>) &ndash; Apa yang kau lihat adalah apa yang kau dapatkan. Menurut pengertian dari Wikipedia, WYSIWYG adalah suatu editor yang memungkinkan user untuk menentukan format, ukuran dan jenis huruf, menambahkan hyperlink dan tabel, dan juga bisa mengupload file, gambar, animasi flash, dan video.<br />\r\n</p>\r\n<div style="text-align: center">\r\n<img src="http://localhost./lokomedia/tinymcpuk/gambar/Image/cktini.jpg" alt=" " width="326" height="72" />\r\n</div>\r\n<p>\r\nSaat ini banyak sekali editor WYSIWYG, tapi daripada bingung memilih, saya sarankan untuk menggunakan <strong>TinyMCE</strong> atau <strong>CKEditor</strong>, karena kedua open source editor WYSIWYG tersebut sudah teruji di CMS sekelas Joomla dan Wordpress. Alasan lainnya, karena kelengkapan dokumentasi, kaya fiturnya, kompatibilitas browser, dukungan forum, update, dan plugins. \r\n</p>\r\n<p>\r\nSaat searching di Google, saya ketemu sama yang namanya <strong>tinyFCK</strong> (<a href="http://p4a2.crealabsfoundation.org/tinyfck" target="_blank">http://p4a2.crealabsfoundation.org/tinyfck</a>), editor WYSIWYG yang menggabungkan kelebihan dari TinyMCE dan CKEditor, atau yang lebih kompleks lagi, yaitu <strong>TinyMCPUK</strong>, karena selain menggabungkan kelebihan dari TinyMCE dan CKEditor, juga ditambahkan image manager yang berguna untuk memanipulasi gambar.\r\n</p>\r\n', 'Selasa', '2010-01-12', '02:27:42', '72office.jpg', 185, 'komputer');
INSERT INTO `artikel` (`id_artikel`, `id_label`, `username`, `judul`, `judul_seo`, `headline`, `isi_artikel`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(101, 2, 'admin', 'Jadwal Lengkap Sepakbola Piala Dunia 2010', 'jadwal-lengkap-sepakbola-piala-dunia-2010', 'Y', '<p>\r\nPerhelatan akbar piala dunia 2010 yang diselenggrakan di Afsel (Afrika Selatan) akan jatuh pada bulan Juni nanti, walaupun pada piala dunia kali saya kurang antusias karena pemain pujaan tidak lagi bertanding, Zinedine Zidane, tapi tetep berusaha meyakinkan diri bahwa Perancis setidaknya dapat berbicara banyak nanti.<br />\r\n<br />\r\nBerikut ini adalah jadwal piala dunia 2010 berserta jam tayang, tanggal dan bulan, yang akan ditayangkan di ke 2 stasiun TV swasta yakni RCTI dan Global TV karena mereka yang dapat hak siar<br />\r\n<br />\r\n<strong>Keterangan</strong>: Waktu untuk pertandingan ialah GMT+1, yang perlu dilakukan untuk sesuaikan dengan waktu Indonesia cukup memajukan 6 jam saja karena Indonesia termasuk kedalam waktu GMT+7<br />\r\n<br />\r\nGrup A<br />\r\n<br />\r\nJumat, 11 Juni 2010<br />\r\nAfrika Selatan v Meksiko, 15:00<br />\r\nUruguay v Perancis, 19:30<br />\r\n<br />\r\nRabu, 16 Juni 2010<br />\r\nAfrika Selatan v Uruguay, 19:30<br />\r\n<br />\r\nKamis, 17 Juni 2010<br />\r\nFrance v Meksiko, 12:30<br />\r\n<br />\r\nSelasa, 22 Juni 2010<br />\r\nFrance v Afrika Selatan, 15:00<br />\r\nMeksiko v Uruguay, 15:00<br />\r\n<br />\r\nGrup B<br />\r\n<br />\r\nSabtu, 12 Juni 2010<br />\r\nArgentina v Nigeria, 12:30<br />\r\nKorea Selatan v Yunani, 15:00<br />\r\n<br />\r\nKamis, 17 Juni 2010<br />\r\nArgentina v Korea Selatan, 19:30<br />\r\nYunani v Nigeria, 15:00<br />\r\n<br />\r\nSelasa, 22 Juni 2010<br />\r\nYunani v Argentina, 19:30<br />\r\nNigeria v Korea Selatan, 19:30<br />\r\n<br />\r\nGrup C<br />\r\n<br />\r\nSabtu, 12 Juni 2010<br />\r\nEngland v USA, 19:30<br />\r\n<br />\r\nMinggu, 13 Juni 2010<br />\r\nAlgeria v Slovenia, 12:30<br />\r\n<br />\r\nJumat, 18 Juni 2010<br />\r\nEngland v Aljazair, 19:30<br />\r\nSlovenia v USA, 15:00<br />\r\n<br />\r\nRabu, 23 Juni 2010<br />\r\nSlovenia v England, 15:00<br />\r\nUSA v Aljazair, 15:00<br />\r\n<br />\r\nGrup D<br />\r\n<br />\r\nMinggu, 13 Juni 2010<br />\r\nJerman v Australia, 15:00<br />\r\nSerbia v Ghana, 19:30<br />\r\n<br />\r\nJumat, 18 Juni 2010<br />\r\nJerman v Serbia, 12:30<br />\r\n<br />\r\nSabtu, 19 Juni 2010<br />\r\nGhana v Australia, 12:30<br />\r\n<br />\r\nRabu, 23 Juni 2010<br />\r\nAustralia v Serbia, 19:30<br />\r\nGhana v Germany, 19:30<br />\r\n<br />\r\nGrup E<br />\r\n<br />\r\nSenin, 14 Juni 2010<br />\r\nJepang v Kamerun, 15:00<br />\r\nBelanda v denmark, 12:30<br />\r\n<br />\r\nSabtu, 19 Juni 2010<br />\r\nKamerun v denmark, 19:30<br />\r\nBelanda v Jepang, 15:00<br />\r\n<br />\r\nKamis, 24 Juni 2010<br />\r\nKamerun v Belanda, 19:30<br />\r\nDenmark v Jepang, 19:30<br />\r\n<br />\r\nGrup F<br />\r\n<br />\r\nSenin, 14 Juni 2010<br />\r\nItalia v Paraguay, 19:30<br />\r\n<br />\r\nSelasa, 15 Juni 2010<br />\r\nSelandia Baru v Slowakia, 12:30<br />\r\n<br />\r\nMinggu, 20 Juni 2010<br />\r\nItalia v Selandia Baru, 15:00<br />\r\nParaguay v Slowakia, 12:30<br />\r\n<br />\r\nKamis, 24 Juni 2010<br />\r\nParaguay v Selandia Baru, 15:00<br />\r\nSlovakia v Italia, 15:00<br />\r\n<br />\r\nGrup G<br />\r\n<br />\r\nSelasa, 15 Juni 2010<br />\r\nBrasil v Korea Utara, 19:30<br />\r\nPantai Gading v portugal, 15:00<br />\r\n<br />\r\nMinggu, 20 Juni 2010<br />\r\nBrasil v Pantai Gading, 19:30<br />\r\n<br />\r\nSenin, 21 Juni 2010<br />\r\nPortugal v Korea Utara, 12:30<br />\r\n<br />\r\nJumat, 25 Juni 2010<br />\r\nKorea Utara v Pantai Gading, 15:00<br />\r\nPortugal v Brazil, 15:00<br />\r\n<br />\r\nGrup H<br />\r\n<br />\r\nRabu, 16 Juni 2010<br />\r\nHonduras v Chili, 12:30<br />\r\nSpanyol v Swiss, 15:00<br />\r\n<br />\r\nSenin, 21 Juni 2010<br />\r\nChili v Swiss, 15:00<br />\r\nSpanyol v Honduras, 19:30<br />\r\n<br />\r\nJumat, 25 Juni 2010<br />\r\nChili v Spanyol, 19:30<br />\r\nSwiss v Honduras, 19:30\r\n</p>\r\n<p>\r\n(sumber: pialadunia2010com.com) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:21:38', '54bola.jpg', 18, 'sepakbola'),
(102, 2, 'admin', 'Lionel Messi ''Berlumuran'' Rekor Gol', 'lionel-messi-berlumuran-rekor-gol', 'Y', '<p>\r\nTanpa ampun Lionel Messi menggelontor gawang Arsenal dengan empat gol\r\ndi Camp Nou. Dengan gol-gol itu, si andalan Barcelona pun bikin\r\nsejumlah raihan positif.<br />\r\n<br />\r\nDi hadapan sekitar 95 ribu penonton yang memadati Camp Nou, Rabu (7/4/2010) dinihari WIB, Barca memastikan laju ke semifinal usai Messi menjebol gawang Manuel Almunia pada menit 21,\r\n37, 42 dan 88. Arsenal sendiri hanya sempat membalas lewat gol Nicklas\r\nBendtner pada menit 18.<br />\r\n<br />\r\nDengan penampilan apik berbuah gol-gol\r\ntersebut, Messi dicatat situs Barca membuat sejumlah capaian. Berikut\r\ncapaian-capaian tersebut:<br />\r\n</p>\r\n<ul>\r\n	<li>\r\n	Ini adalah kali pertama Messi bikin\r\n	empat gol dalam satu pertandingan untuk Barca. Sebelumnya, si pemain\r\n	Argentina itu &quot;cuma&quot; bisa bikin lima hat-trick dan 18 kali membuat\r\n	sepasang gol dalam satu laga.</li>\r\n	<li>Messi menjadi pemain pertama musim ini yang berhasil membuat empat gol dalam satu laga di Liga Champions.</li>\r\n	<li>Messi menjadi satu dari enam pemain di dalam sejarah kompetisi ini\r\n	untuk membuat empat gol di satu partai. Sebelumnya telah ada Marco Van\r\n	Basten (AC Milan), Simone Inzaghi (Lazio), Dado Prso (M&ograve;naco), Ruud Van\r\n	Nistelroy (M. United) dan Andriy Shevchenko (AC Milan). Artinya, Messi\r\n	juga menjadi pemain pertama Barca yang melakukannya.</li>\r\n	<li>Berkat\r\n	tiga gol di paruh pertama, Messi menjadi satu dari sembilan pemain yang\r\n	mampu bikin hat-trick di babak pertama partai Liga Champions. Messi\r\n	adalah pemain pertama yang melakukannya musim ini.</li>\r\n	<li>Tambahan\r\n	empat gol ke gawang Arsenal membuat total gol Messi di Liga Champions\r\n	menjadi 25 gol. Ini menyamai pundi gol mantan pemain Barca, Rivaldo,\r\n	yang juga topskorer Barca dalam kompetisi tersebut.</li>\r\n	<li>Dengan\r\n	empat gol ke gawang Arsenal di satu partai, Messi membuat klub London\r\n	tersebut menjadi tim yang paling banyak dia bobol gawangnya di Eropa.\r\n	Sevilla dan Atletico Madrid adalah lumbung gol kesukaan Messi di La\r\n	Liga Primera dengan tujuh gol.</li>\r\n	<li>Dengan tambahan empat gol,\r\n	Messi kini menjadi topskorer sementara Liga Champions dengan delapan\r\n	gol. Pesaing terdekatnya adalah andalan Real Madrid --yang sudah\r\n	tersingkir-- Cristiano Ronaldo (tujuh gol) dan bintang Manchester\r\n	United Wayne Rooney (lima gol).</li>\r\n	<li>Messi sudah mengoleksi total\r\n	39 gol musim ini. Jumlah itu lebih banyak satu gol ketimbang musim\r\n	lalu. Messi kini bahkan melakukannya hanya dalam 42 laga, delapan\r\n	partai lebih sedikit dibandingkan musim lalu.</li>\r\n	<li>Empat gol ke\r\n	gawang Arsenal juga menambah catatan gol Messi di kandang Barca, yang\r\n	kini menjadi 67 gol. Sejumlah 52 gol lain dia buat di laga tandang.\r\n	</li>\r\n</ul>\r\n<p>\r\n(sumber: detiksport.com) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:28:32', '51messi.jpg', 21, 'sepakbola'),
(103, 22, 'admin', 'Penanganan Gempa Berjalan Cepat, Presiden SBY Puas', 'penanganan-gempa-berjalan-cepat-presiden-sby-puas', 'Y', '<p>\r\nPresiden\r\nSusilo Bambang Yudhoyono (SBY) mengaku puas atas reaksi\r\ninstansi-instansi terkait dalam menangani gempa di Nanggroe Aceh\r\nDarussalam dan beberapa daerah di Sumatera pada Rabu (7/4) pukul 05.15\r\nWIB. Menurut Presiden, sistem reaksi cepat penanggulangan bencana telah\r\nberjalan dengan baik.<br />\r\n<br />\r\n&quot;Saya juga senang bahwa sistem telah\r\nberjalan karena begitu diterima gempa, satuan reaksi cepat\r\npenanggulangan bencana siap di Halim,&quot; kata Presiden di Bandara Halim\r\nPerdanakusuma, Rabu (7/4). Presiden menyampaikan hal itu sebelum\r\nbertolak menuju Hanoi, Vietnam untuk menghadiri KTT ASEAN hingga Sabtu\r\n(10/4).<br />\r\n<br />\r\nPresiden mengatakan, dirinya langsung berkomunikasi\r\nKetua Badan Nasional Penanggulangan Bencana (BNPB), Gubernur NAD, dan\r\nGubernur Sumatera Utara. Melalui komunikasi itu, Presiden mendapat\r\ninformasi bahwa kerusakan yang ditimbulkan tergolong ringan dan\r\npemadaman listrik sudah berakhir. Presiden mengucapkan terima kasih\r\natas kerja sigap instansi terkait.<br />\r\n<br />\r\nDalam kesempatan sama,\r\nMenteri Sosial, Salim Segaf Aljufri, mengatakan, dampak dari gempa di\r\nAceh itu tergolong ringan, tidak banyak bangunan yang rusak berat.\r\n&quot;Luka berat empat orang, seluruhnya 12 orang yang dirawat di rumah\r\nsakit,&quot; kata mantan Dubes RI di Arab Saudi ini.<br />\r\n<br />\r\nSalim\r\nmengatakan, gempa itu juga masih bisa ditangani oleh pemerintah daerah.\r\nAlasannya, stok bantuan bahan pangan di daerah masih mencukupi,\r\nkhususnya beras dan lauk pauk. &quot;Buffer stock kita di provinsi cukup,\r\nberas ada 50 ton,&quot; ujar Salim. Penyaluran bantuan pun belum ada kendala\r\nberarti.\r\n</p>\r\n<p>\r\n(sumber: republika.co.id) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:32:19', '58sby.jpg', 10, ''),
(104, 23, 'admin', 'Film ''My Name is Khan'' Cetak Rekor di Amerika', 'film-my-name-is-khan-cetak-rekor-di-amerika', 'Y', '<p>Dengan US$1,86 juta pada <em>box office</em> di minggu pertamanya, film <em>My Name is Khan</em> yang dibintangi Shah Rukh Khan telah memecahkan rekor sebagai film India dengan pendapatan terbanyak yang diputar di Amerika Utara. <br /> <br /> Film arahan Karan Johar ini diperkirakan menghasilkan US$15.500 dari 120 bioskop di AS dan Kanada pada akhir pekan 12-14 Februari 2009. Rekor sebelumnya dipegang film musikal yang juga dibintangi Shah Rukh, <em>Om Shanti Om</em>, dengan pendapatan US$1,76 juta dari 114 bioskop saat dirilis pada 2007. <br /> <br /> Saat diluncurkan Jumat (12/2), <em>My Name is Khan</em> langsung mendapatkan US$444 ribu, lalu langsung meningkat 65% menjadi US$734.000 Sabtu (13/2). Tapi, film ini lalu menurun sebanyak 7% menjadi US$682 ribu pada Minggu (14/2) yang bertepatan dengan Hari Valentine. <br /> <br /> Terlebih lagi, <em>My Name is Khan</em> mendapatkan pujian dari kritikus AS. Publikasi surat kabar <em>Hollywood Reporter</em> mengatakan, "Ini sepadan untuk perjalanan selama 162 menit. Shah Rukh Khan datang ke Amerika (walau melalui film Bollywood) dan telah menunjukkan bahwa dirinya adalah megabintang India," tambahnya. <br /> <br /> "Yang khas dari bintang Bollywood adalah mereka tidak hanya aktor yang berkualitas, tapi juga memiliki kharisma. Jadi, tidak mengejutkan bila menemukan megabintang Shah Rukh Khan dalam <em>My Name is Khan</em>. Tampaknya ia sedang menantang dirinya sendiri untuk meningkatkan kemampuan aktingnya dan memperluas jaringan penggemar internasionalnya." <br /> <br /> "Dengan arahan sutradara andal Karan Johar dan musik pengiring yang menggugah oleh Shankar, Ehsaan &amp; Loy, Khan membuat kita mudah meneteskan air mata seraya mengajarkan kita mengenai Islam dan toleransi," kata surat kabar <em>Times</em>. <br /> <br /> Di dalam negeri sendiri, pada saat rilis perdananya, Jumat (12/2), hanya 13 bioskop yang memutarnya dari awal rencana 63 bioskop. Tapi, pada Sabtu (13/2), semua bioskop di Mumbai, Pune, dan Maharashra telah menayangkannya. Terakhir, pendapatan film tersebut di seluruh dunia telah mencapai US$18 juta.</p>\r\n<p>(sumber: mediaindonesia.com)</p>', 'Sabtu', '2010-04-10', '22:46:50', '39khan.jpg', 19, 'film'),
(105, 2, 'admin', 'Taufik Berada di Grup Maut Kejuaran Dunia Bulutangkis', 'taufik-berada-di-grup-maut-kejuaran-dunia-bulutangkis', 'Y', '<p>\r\nTaufik Hidayat akan menghadapi pemain China, Bao Chunlai, di babak awal pertadingan Grup A \r\nkejuaraan World Super Series Masters Finals, Rabu (2/11).<br />\r\n<br />\r\nTaufik,\r\nyang merupakan satu-satunya pemain tunggal putra asal Indonesia,\r\nbergabung di Grup A bersama peringkat satu dunia Lee Chong Wei, Bao\r\nChunlai, serta pemain China Taipei, Hsieh Yu Hsin.<br />\r\n<br />\r\nMemakai\r\nsistem pertandingan round robin, Taufik akan menghadapi Chunlai,\r\nsedangkan Chong Wei bertemu dengan Hsieh Yu Hsin dalam pertandingan\r\nlainnya, Rabu (2/11).<br />\r\n<br />\r\nGrup A dianggap sebagai grup neraka atau\r\nmaut, sedangkan Grup B terdiri dari dua pemain Denmark, Peter Hoeg Gade\r\ndan Jan O Jorgensen, serta pemain Thailand, Boonsak Ponsana.<br />\r\n<br />\r\nTaufik\r\nsendiri menjadi satu-satunya pemain tunggal asal Indonesia setelah Sony\r\nDwi Kuncoro dan Simon Santoso absen karena diprioritaskan bermain di\r\najang SEA Games, Laos, Desember ini.<br />\r\n<br />\r\nPeraih medali emas\r\nOlimpiade Atlanta 2004 ini mengaku siap menghadapi tantangan di grup\r\nyang berat ini. Di jejaring sosial Facebook, ia menulis, &quot;Death Group?&quot;\r\nTantangan berat di Johor Bahru, tapi harus memberi yang terbaik! Let&#39;s\r\nGo!\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<div style="text-align: center">\r\n<img src="http://localhost./lokomedia/tinymcpuk/gambar/Image/taufik_hidayat.jpg" alt=" " width="350" height="250" />\r\n</div>\r\n<br />\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nGrup A<br />\r\n1 [MAS] LEE Chong Wei<br />\r\n1 [CHN] BAO Chunlai <br />\r\n1 [INA] HIDAYAT Taufik<br />\r\n1 [TPE] HSIEH Yu Hsin<br />\r\n<br />\r\nGrup B<br />\r\n1 [DEN] GADE Peter Hoeg<br />\r\n1 [KOR] PARK Sung Hwan <br />\r\n1 [DEN] O JORGENSEN Jan<br />\r\n1 [THA] PONSANA Boonsak\r\n</p>\r\n<p>\r\n(sumber: artikeljitu.com) \r\n</p>\r\n', 'Sabtu', '2010-04-10', '22:51:14', '92taufik.jpg', 75, 'tenis'),
(122, 22, 'admin', 'Terima Kasih Gayus Tambunan', 'terima-kasih-gayus-tambunan', 'Y', '<p>\r\nSekali lagi, terima kasih Gayus Tambunan! Kita semua mesti berterima \r\nkasih pada pegawai Pajak golongan III A  ini.\r\nGara-gara aksinya terbongkar, semua mata kini memandang ke kasus  \r\npenggelapan pajak yang menimpanya. 25 Milyar rupiah bukan jumlah yang  \r\nsedikit. Apalagi dimiliki seorang pegawai negeri sipil yang gaji per  \r\nbulan plus tunjangan ini itu 12 jutaan.\r\n</p>\r\n<p>\r\nBerterima kasihlah pada Gayus. Karena berkat jasanya lah kasus  Century \r\njadi temaram. Siapa yang peduli dengan kasus 6,7 trilyun yang  tak jelas\r\nkemana itu. Setidaknya kini media massa ramai-ramai berdendang  lagu \r\nGAYUS. Lupakan huru hara di panggung paripurna DPR bulan lalu.  Lupakan \r\npula rekomendasi yang meminta penon aktifan dua petinggi negara,  Wapres\r\nBoediono dan Menteri Keuangan Sri Mulyani.\r\n</p>\r\n<p>\r\nKini arahkan pandangan kita pada rumah megah Gayus di Kelapa Gading.  \r\nSaya sendiri hanya berdecak kaget. Wow, darimana ya si Gayus yang masih \r\n30 tahunan itu bisa membangun istana semegah itu?\r\n</p>\r\n<p>\r\nBenarkah itu <em>tilepan</em> pajak rakyat? Atau suap para  pengemplang \r\npajak agar cuma bayar pajak dalam jumlah kecil. Entahlah.\r\n</p>\r\n<p>\r\nYang jelas saya ingin berucap terima kasih pada Gayus, karena berkat  \r\nkasusnya KPK, kepolisian, kejaksaan, atau para pengacara kondang bakal  \r\ndapat job menggiurkan. Ya siapa tahu kecipratan 25 M!\r\n</p>\r\n<p>\r\nGayus, di tangan saya masih ada form SPT yang baru terisi separuhnya.  \r\nSaya berencana menyerahkan form ini sebelum &ldquo;D&rdquo; day 31 Maret mendatang. \r\nTapi hati saya galau. Sebagai warga negara yang baik saya biasanya taat\r\nbayar pajak. Karena saya sadar pajak itu akan kembali pada kita \r\nsebagai  warga dalam bentuk layanan dan fasilitas publik.\r\n</p>\r\n<p>\r\nTapi, kelakuanmu Gayus, membuat saya dan juga pembayar pajak yang  taat \r\nterluka. Apalah artinya laporan pajak saya yang &#39;cuma&#39; beberapa  juta \r\nrupiah ini, jika ternyata uang pajak yang mestinya disalurkan  \r\ndikemplang pegawainya sendiri?\r\n</p>\r\n<p>\r\nHaruskah saya bayar pajak, Gayus? (sumber:www.kompas.com)\r\n</p>\r\n', 'Kamis', '2011-02-10', '23:23:57', '80gayus.jpg', 28, 'gayus'),
(121, 2, 'admin', 'Hantam Laos 6-0, Indonesia Semifinal', 'hantam-laos-60-indonesia-semifinal', 'Y', '<p>\r\nIndonesia menang meyakinkan atas Laos. Enam\r\ngol mereka lesakkan, membuat mereka lolos ke semifinal dengan status \r\njuara Grup A. Di stadion Gelora Bung Karno, Sabtu (4/12/2010), \r\nIndonesia langsung menekan sejak awal laga. Lewat sebuah serangan balik,\r\nIndonesia mengancam pertahanan Laos melalui M. Ridwan di sisi sayap \r\nkanan. Tapi umpan silang Ridwan masih bisa dihalau. Sepak pojok untuk \r\nIndonesia.\r\n</p>\r\n<p>\r\nPada menit ketujuh, Ridwan kembali mencoba \r\nperuntungannya. Tapi tendangan kaki kananannya dari luar kotak penalti \r\nmembentur tubuh pemain Laos. Kembali, Indonesia mendapatkan sepak pojok.<br />\r\n<br />\r\nSemenit\r\nberselang, umpan silang Firman Utina di sayap kiri diterima oleh Hamka \r\nHamzah di tiang jauh. Sial bagi Hamka, sundulannya masih melenceng \r\ntipis.<br />\r\n<br />\r\nOoh! Laos mendapatkan kesempatan emas pertamanya dalam \r\nlaga ini. Sepakan Kaysone Soukhavong dari luar kotak penalti membentur \r\ntiang gawang Indonesia. Nyaris.<br />\r\n<br />\r\nPenalti untuk Indonesia! Cristian\r\nGonzales dijatuhkan di dalam kotak penalti ketika memggiring bola di \r\ndalam kotak penalti.<br />\r\n<br />\r\nFirman Utina maju menjadi eksekutornya, dan \r\nkapten Indonesia ini berhasil mengecoh kiper Sengphachan Bounthisanh \r\nuntuk membawa Indonesia unggul 1-0.<br />\r\n<br />\r\nGol lagi untuk Indonesia! \r\nAksi Ridwan, usai memanfaatkan blunder operan Kitsada, membawa Indonesia\r\nunggul 2-0 atas Laos.<br />\r\n<br />\r\nRidwan membawa bola sendirian ke dalam \r\nkotak penalti, ia mengecoh kiper Bounthisanh, dan menceploskan bola ke \r\ndalam gawang, meski sempat terpeleset. <br />\r\n<br />\r\nIndonesia memulai babak \r\nkedua dengan baik, dan tepat pada menit 49 &#39;Garuda&#39; kembali membobol \r\njala Laos. Kembali Firman yang menjadi pencetak golnya.<br />\r\n<br />\r\nGol \r\ntersebut diawali oleh operan satu-dua dengan Ridan di luar kotak \r\npenalti. Begitu kembali menerima bola, Firman melepaskan sepakan kaki \r\nkanan ke tiang jauh. Indonesia unggul 3-0.<br />\r\n<br />\r\nKeunggulan Indonesia \r\nbertambah besar menjadi 4-0 di menit 51 dan yang menjadi pendulangnya \r\nadalah Irfan Bachdim. Ini adalah gol keduanya dalam turnamen ini.<br />\r\n<br />\r\nGol\r\nkeempat Indonesia itu tercipta setelah Irfan melakukan operan satu-dua \r\ndengan Cristian Gonzales. Lewat satu sepakan kaki kanan ke tiang jauh, \r\nIrfan pun membobol jala Laos.<br />\r\n<br />\r\nTekanan Indonesia ke pertahana Laos\r\nakhirnya kembali berbuah hasil di menit 76. Berawal dari umpan lambung \r\nFirman, terjadi kemelut di dalam kotak penalti Laos.<br />\r\n<br />\r\nSepakan \r\nHamka masih bisa ditepis Bounthisanh, tapi bola disambar oleh Arief \r\nSuyono dan terciptalah gol kelima Indonesia. Ini adalah gol kedua Arief \r\ndalam turnamen ini.<br />\r\n<br />\r\nGol lagi! Indonesia unggul jauh 6-0 atas Laos\r\ndi menit 80 dengan diawali oleh umpan terobosan Irfan kepada Okto \r\nManiani. Lewat kecepatannya, Okto mengungguli dua pemain Laos dan \r\nmelepaskan tendangan kaki kiri ke tiang dekat. Si pemain nomor 10 ini \r\nakhirnya mencetak gol.<br />\r\n<br />\r\nAksi Okto itu kemudian menjadi gol penutup\r\ndalam pertandingan ini. Indonesia menang enam gol tanpa balas dan \r\nberhak melaju ke semifinal dengan status juara Grup A. \r\n</p>\r\n', 'Kamis', '2011-02-10', '23:22:35', '1bachdim.jpg', 23, 'sepakbola'),
(120, 23, 'admin', 'Saat Raja Belajar Bertutur Kata', 'saat-raja-belajar-bertutur-kata', 'Y', '<p>Ini dia film yang meraih perolehan nominator terbanyak dalam acara Academy Awards ke 83. Dari 24 jumlah nominasi yang ada, The King''s Speech berhasil meraih setengahnya dan menjadikan film produksi See Saw Films dan Bedlam Productions itu merajai Oscar 2011 yang merupakan ajang perfilman paling bergengsi di dunia.<br /> <br /> Setelah kematian ayahandanya, raja George V (Michael Gambon), pangeran Albert (Colin Firth) akhirnya dinobatkan sebagai raja. Diangkatnya ayah dua anak ini menjadi raja baru Inggris karena sang kakak, pangeran Edward VIII (Guy Pearce) yang seharusnya berkuasa, rela turun tahta karena lebih memilih seorang janda keturunan Amerika untuk dinikahinya. <br /> <br /> Tapi apa jadinya jika seorang raja menderita kesulitan berbicara?terutama pada saat berpidato. Karena sebelum dinobatkan sebagai Raja, beberapa kali Bertie (panggilan pangeran Albert dari orang-orang terdekatnya) harus mewakili pidato ayahnya yang sakit, baik secara langsung maupun melalui siaran radio dan hasilnya sangat mengecewakan bagi siapa saja yang mendengarnya.<br /> <br /> Dibantu sang istri tercinta, Elizabeth (Helena Bonham Carter), Raja George VI menemui ahli terapi bicara bersama Lionel Logue (Geoffrey Rush) yang eksentrik. Pertemuan keduanya walau diawali dengan perseteruan, keduanya akhirnya menjalani program terapi dan akhirnya membentuk ikatan yang tak terpisahkan.<br /> <br /> Masalah raja George VI ternyata bukan hanya dari dalam dirinya saja, dengan keadaan negara yang diambang peperangan, raja baru itu akhirnya melakukan pidato pertamanya di radio BBC untuk rakyat dan negaranya. Dengan dukungan dari Lionel, keluarga, pemerintah dan Winston Churchill (Timothy Spall), mampukah raja baru ini menginspirasi seluruh Inggris untuk bersiap melawan kebrutalan tentara Jerman.<strong><br /> </strong> <br /> Kejeniusan sang sutradara mengemas film akhirnya memberikan jaminan <strong>The King''s Speech</strong> menjadi tontonan yang sangat menarik. Anda akan merasakan emosi sekaligus tertawa saat melihat Colin Firth yang sangat mendalami karakter raja George VI. Akting Geoffrey Rush sebagai ahli bicara membuktikan dirinya memang jago berbicara, bahkan di hadapan seorang Raja.</p>', 'Kamis', '2011-02-10', '23:15:39', '89speech.jpg', 10, 'film'),
(124, 19, 'admin', 'Angry Birds Siap Hadirkan Budaya Indonesia', 'angry-birds-siap-hadirkan-budaya-indonesia', 'Y', '<p>Game mobile Angry Birds yang tengah digandrungi, rencananya akan masuk pasar Indonesia. Tim game Rovio ingin menggaet developer tanah air. Mereka mengaku mengharapkan kelahiran Angry Birds yang khas Indonesia.</p>\r\n<p>"Kami mengerti (keinginan) itu. Siapa tahu nantinya Angry Birds ala Indonesia akan memakai batik," ungkap Chief Marketing Officer Rovio, Peter Vesterbacka, saat ditemui di Hotel Kempinski, Jakarta, Rabu (25/1). "Tapi kami ingin menyelami lebih dalam. Apa saja yang bisa digali dari Indonesia."</p>\r\n<p>Peter juga mengungkapkan telah menerima banyak masukan untuk menghadirkan wayang, batik, garuda dan Bali di game tersebut. Untuk itu, Rovio bersama Nokia kemudian menggelar kompetisi. Diharapkan dari situ akan lahir Angry Birds yang "Indonesia Banget".</p>\r\n<p>Sayangnya, Peter enggan menyebutkan kapan tepatnya rencana itu akan direalisasikan. Namun ini tetap menjadi kabar baik untuk developer lokal untuk semakin berkibar. "Pengembang aplikasi di Indonesia memiliki potensi dan talenta untuk dikembangkan," lanjut Peter yakin.</p>\r\n<p>(sumber: wowkeren.com)</p>', 'Sabtu', '2012-02-11', '01:14:45', '32angrybird.jpg', 95, 'film');

-- --------------------------------------------------------

--
-- Table structure for table `detail_galery`
--

CREATE TABLE `detail_galery` (
  `id_gambar` int(5) NOT NULL,
  `id_galery` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `utama` enum('Y','N') NOT NULL DEFAULT 'N',
  `tgl_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_galery`
--

INSERT INTO `detail_galery` (`id_gambar`, `id_galery`, `judul`, `gambar`, `deskripsi`, `utama`, `tgl_posting`) VALUES
(1, 1, 'si agu', '67DSCF0448.JPG', '<p>sok yes dech</p>\r\n', 'Y', '2015-11-20'),
(2, 2, 'Edisi Ngampus ', '18DSC00546.jpg', '<p>Lha malah selvie :)</p>\r\n', 'Y', '2015-11-20'),
(3, 3, 'Nungguin jodoh', '77DSC08932.jpg', '<p>Hahahhaahaahah</p>\r\n', 'Y', '2015-11-20'),
(4, 4, 'Bukti kirim', '98DSCF0156.JPG', '<p>udah dikirim ne yah</p>\r\n', 'Y', '2015-11-20'),
(5, 5, 'Dekor mobil pagi-pagi buta', '64DSCF5921.JPG', '<p>abis ga tidur semaleman nich ,, langsung dekor mobil .. huuaaammmm</p>\r\n', 'Y', '2015-11-20'),
(6, 6, 'Berendam', '52IMG-20150126-00279.jpg', '<p>Seger.... berendam rame-rame</p>\r\n', 'Y', '2015-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `waktu` date NOT NULL,
  `tempat` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galery`, `nama`, `waktu`, `tempat`, `aktif`) VALUES
(1, 'Bonusan Time', '2015-01-01', 'Edelweis Florist', 'Y'),
(2, 'Kampus Uniga', '2015-11-16', 'Uniga Malang', 'Y'),
(3, 'Edisi Narsis', '2015-11-20', 'Edelweis Florist', 'Y'),
(4, 'Pengiriman', '2015-11-13', 'Tempat tujuan pesanan', 'Y'),
(5, 'Dekorasi Mobil', '2015-11-28', 'Depan Edelweis', 'Y'),
(6, 'Liburan Cangar', '2015-11-30', 'Pemandian Air Panas Cangar Malang', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar`, `kategori_seo`) VALUES
(19, 'Papan Ucapan', 'foto-produk-1481234210.jpg', 'papan-ucapan'),
(20, 'Hand Bouquet', 'foto-produk-1481231072.png', 'hand-bouquet'),
(21, 'Bunga krans', 'foto-produk-1481231082.jpg', 'bunga-krans'),
(22, 'Bunga Trans', 'foto-produk-1481230781.png', 'decoration'),
(23, 'Bunga Ikat', 'foto-produk-1481231679.png', ''),
(24, 'Bunga Plastik', 'foto-produk-1481231117.png', ''),
(25, 'Bunga Steroform', 'foto-produk-1481231150.png', ''),
(26, 'Bunga Pot', 'foto-produk-1481656194.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `id_kustomer` int(5) NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `password`, `nama_lengkap`, `alamat`, `email`, `telpon`, `id_kota`) VALUES
(1, 'd9c84901c7cdbfddbc3b75af86ba1701', 'tomo', 'Jl. abcd no.x jakarta', 'tomo@tomo.com', '0897575005', 1229),
(2, 'd9c84901c7cdbfddbc3b75af86ba1701', 'Imam', 'Jl. Entah berantah dimana saja\r\nRt. 10 rw.10', 'computerz.engineerz@gmail.com', '0896667791613', 1228),
(3, 'd9c84901c7cdbfddbc3b75af86ba1701', 'aji', 'jl. jalan saja. dimana kek', 'aji@aji.com', '123456', 5077),
(4, 'd9c84901c7cdbfddbc3b75af86ba1701', 'Budi', 'ada deh', 'budi@budi.com', '123456', 1900),
(5, 'd9c84901c7cdbfddbc3b75af86ba1701', 'amoy', 'jakarta', 'amoy@amoy.com', '123456', 2465),
(6, 'd9c84901c7cdbfddbc3b75af86ba1701', 'andy', 'asd', 'andy@andy.com', '123456', 4965),
(7, '0cc175b9c0f1b6a831c399e269772661', 'Andre', 'adasd', 'a@a.com', '123456', 679),
(8, '92eb5ffee6ae2fec3ad71c777531578f', 'Budia', 'asdasd', 'b@b.b', '123456', 2787),
(9, '7694f4a66316e53c8cdd9d9954bd611d', 'qqq', 'aaa', 'q@q.c', '123456', 5077),
(10, '35304da65f326649322ae246ce6e7f38', 'vbrie', 'jl. lekso no 20 ', 'vbrienea@gmail.com', '085790885666', 4964),
(11, 'e10adc3949ba59abbe56e057f20f883e', 'danni', 'fjhdsgkjhdfsgj', 'agu.prasetya@gmail.com', '085790885666', 4963),
(12, 'e10adc3949ba59abbe56e057f20f883e', 'nia', 'hfkhksfs', 'neavbrie@gmail.com', '085790885666', 4964),
(13, 'e10adc3949ba59abbe56e057f20f883e', 'nina', 'dsfdgfd', 'nina@gmail.com', '085790885666', 4964),
(14, 'e10adc3949ba59abbe56e057f20f883e', 'nunanuna', 'hgkjhj', 'nunanuna@gmail.com', '085790885666', 2787),
(15, '7ebf4c0357e869fa76a4a5d4e36f1c08', 'galih Tri Cahyaning Putri', 'Dieng atas No 67 Malang Jatim', 'galihputri@gmail.com', '085790885666', 4964),
(16, 'e10adc3949ba59abbe56e057f20f883e', 'dani', 'jl.mawar no.5', 'dani@gmail.com', '081233', 2045);

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE `label` (
  `id_label` int(5) NOT NULL,
  `nama_label` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `label_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`id_label`, `nama_label`, `label_seo`, `aktif`) VALUES
(19, 'Teknologi', 'teknologi', 'Y'),
(22, 'Politik', 'politik', 'Y'),
(23, 'Hiburan', 'hiburan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` enum('admin','visitor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `pass`, `nama`, `email`, `level`) VALUES
(1, 'rifky', 'c7606d21629a29f87ddff80ca16d5219', 'rifky', 'Rifky', 'rifky_rep@gmail.com', 'admin'),
(2, 'visitor', '127870930d65c57ee65fcc47f2170d38', 'visitor', 'Pengunjung', 'visitor@gmail.com', 'visitor');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL,
  `status_order` char(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(1, 'Lunas', '2011-05-28', '11:52:25', 1),
(23, 'Baru', '2015-03-09', '21:44:46', 2),
(22, 'Baru', '2015-03-09', '21:39:44', 2),
(21, 'Baru', '2015-03-09', '21:19:16', 4),
(20, 'Baru', '2015-03-09', '21:01:08', 6),
(19, 'Baru', '2015-03-09', '20:57:54', 4),
(18, 'Baru', '2015-03-09', '20:48:25', 5),
(17, 'Baru', '2015-03-09', '20:44:00', 4),
(16, 'Baru', '2015-03-09', '20:36:38', 2),
(15, 'Baru', '2015-03-09', '20:34:37', 3),
(14, 'Baru', '2015-03-09', '20:21:51', 2),
(13, 'Lunas', '2015-03-09', '10:05:01', 2),
(24, 'Baru', '2015-03-09', '21:46:24', 4),
(25, 'Baru', '2015-03-09', '21:51:07', 4),
(26, 'Baru', '2015-03-09', '21:54:49', 7),
(27, 'Baru', '2015-03-09', '21:57:02', 8),
(28, 'Lunas', '2015-03-09', '22:01:46', 9),
(29, 'Baru', '2015-11-14', '19:11:04', 10),
(30, 'Baru', '2015-11-14', '23:23:21', 11),
(31, 'Baru', '2015-11-14', '23:27:06', 11),
(32, 'Baru', '2015-11-14', '23:30:17', 11),
(33, 'Baru', '2015-11-14', '23:32:34', 11),
(34, 'Baru', '2015-11-15', '09:47:19', 11),
(35, 'Baru', '2015-11-15', '10:17:17', 11),
(36, 'Baru', '2015-11-15', '10:17:41', 11),
(37, 'Baru', '2015-11-15', '10:17:58', 11),
(38, 'Baru', '2015-11-15', '10:18:28', 11),
(39, 'Baru', '2015-11-15', '10:18:59', 11),
(40, 'Baru', '2015-11-15', '10:19:37', 11),
(41, 'Baru', '2015-11-15', '10:20:51', 11),
(42, 'Baru', '2015-11-15', '10:21:53', 11),
(43, 'Baru', '2015-11-15', '10:22:45', 11),
(44, 'Baru', '2015-11-15', '10:25:35', 11),
(45, 'Baru', '2015-11-15', '10:26:32', 11),
(46, 'Baru', '2015-11-15', '10:29:11', 11),
(47, 'Baru', '2015-11-15', '10:32:34', 11),
(48, 'Baru', '2015-11-15', '10:45:34', 11),
(49, 'Baru', '2015-11-15', '10:53:20', 11),
(50, 'Lunas', '2015-11-15', '10:56:56', 11),
(51, 'Lunas', '2015-11-15', '10:59:14', 11),
(52, 'Baru', '2015-11-15', '11:07:01', 11),
(53, 'Lunas', '2015-11-15', '11:14:38', 12),
(54, 'Baru', '2015-11-15', '11:25:17', 13),
(55, 'Lunas', '2015-11-15', '11:38:18', 14),
(56, 'Baru', '2015-11-16', '20:06:31', 11),
(57, 'Baru', '2015-11-16', '20:19:04', 0),
(58, 'Baru', '2015-11-16', '20:22:20', 0),
(59, 'Lunas', '2015-11-18', '19:37:14', 11),
(60, 'Baru', '2015-11-19', '00:49:24', 11),
(61, 'Send', '2015-11-19', '17:56:19', 11),
(62, 'Send', '2015-11-27', '16:53:17', 11),
(63, 'Baru', '2015-11-29', '15:07:52', 15),
(64, 'Baru', '2015-11-29', '15:23:44', 11),
(65, 'Baru', '2015-11-29', '15:30:27', 11),
(66, 'Baru', '2015-11-29', '15:31:54', 11),
(67, 'Baru', '2015-11-29', '15:34:51', 11),
(68, 'Produksi', '2015-11-29', '21:05:57', 15),
(69, 'Lunas', '2015-12-03', '19:50:11', 11),
(70, 'Send', '2015-12-03', '20:38:16', 11),
(71, 'OTW', '2015-12-04', '10:45:06', 11),
(72, 'Baru', '2015-12-04', '11:05:41', 16),
(73, 'Baru', '2015-12-04', '11:17:16', 11),
(74, 'Lunas', '2015-12-04', '11:19:22', 11),
(75, 'Lunas', '2015-12-04', '15:45:25', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(20, 56, 1),
(19, 59, 2),
(18, 57, 1),
(18, 59, 1),
(17, 59, 1),
(16, 59, 1),
(15, 60, 1),
(14, 60, 1),
(13, 57, 1),
(12, 61, 1),
(21, 59, 1),
(22, 59, 1),
(23, 59, 1),
(24, 59, 1),
(25, 60, 1),
(26, 59, 1),
(27, 57, 1),
(28, 60, 1),
(29, 60, 1),
(30, 61, 1),
(31, 61, 1),
(34, 60, 1),
(34, 56, 1),
(34, 61, 1),
(41, 56, 1),
(41, 61, 1),
(43, 61, 1),
(43, 56, 1),
(45, 60, 1),
(45, 61, 1),
(46, 60, 1),
(46, 61, 1),
(47, 60, 1),
(47, 61, 1),
(48, 60, 1),
(48, 61, 1),
(49, 60, 1),
(49, 61, 1),
(50, 60, 1),
(50, 61, 1),
(51, 60, 1),
(51, 61, 1),
(52, 60, 1),
(52, 61, 1),
(53, 60, 1),
(53, 61, 1),
(54, 61, 1),
(54, 60, 1),
(55, 60, 1),
(55, 61, 1),
(56, 56, 1),
(57, 61, 1),
(58, 61, 1),
(59, 68, 1),
(59, 62, 1),
(60, 81, 1),
(60, 62, 1),
(61, 76, 1),
(61, 67, 1),
(62, 68, 1),
(62, 67, 1),
(63, 63, 1),
(64, 82, 1),
(64, 65, 1),
(65, 89, 1),
(66, 78, 1),
(67, 69, 1),
(68, 62, 1),
(68, 69, 1),
(69, 69, 1),
(70, 69, 1),
(70, 63, 1),
(71, 69, 1),
(71, 62, 2),
(72, 68, 2),
(73, 68, 2),
(75, 68, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(253, 67, 'uok9q4tb8v1kkotm2bbe5jsn40', 1, '2015-12-04', '17:03:35', 5),
(250, 68, 'em3u931fvi8revo2l393gfkb00', 2, '2015-12-04', '11:16:40', 2),
(252, 76, 'uok9q4tb8v1kkotm2bbe5jsn40', 4, '2015-12-04', '17:02:56', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pemb` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_orders` int(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dana` int(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `dibuka` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pemb`, `email`, `id_orders`, `nama`, `dana`, `gambar`, `tgl_bayar`, `dibuka`) VALUES
(1, 'agu.prasetya@gmail.com', 23, 'danni', 300000, '', '2015-11-25', 9),
(2, 'agu.prasetya@gmail.com', 22, 'danni', 390000, '', '2015-11-25', 8),
(3, 'agu.prasetya@gmail.com', 62, 'danni', 2267400, '', '2015-11-27', 2),
(4, 'agu.prasetya@gmail.com', 69, 'dani', 670000, '', '2015-12-03', 2),
(5, 'agu.prasetya@gmail.com', 70, 'dani', 890000, '', '2015-12-03', 2),
(6, 'agu.prasetya@gmail.com', 71, 'agu', 1260000, '', '2015-12-04', 2),
(7, 'agu.prasetya@gmail.com', 74, 'agu', 3000000, '', '2015-12-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `produk_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `slider` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `berat` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `slider`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(7, 21, 'Landscape Two Flower', 'landscape-two-flowers-', 'bunga kuning\r\n', 100000, 2, '0', '10.00', '2015-11-18', 'foto-produk-1481254126.jpg', 1, 5),
(8, 12, 'Half Of Circle Flowers', 'half-of-circle-flowers', '<p>Masukkan keterangan produk disini.</p>\r\n', 700000, 3, '0', '8.00', '2015-11-18', 'foto-produk-1480910779.png', 1, 0),
(9, 20, 'Wedding Love Box', 'wedding-love-box', 'Bunga \r\n', 880000, 6, '0', '7.00', '1996-07-07', 'foto-produk-1481222320.jpg', 2, 12),
(10, 12, 'Bird Flower Wedding', 'bird-flower-wedding', '<p>Masukkan keterangan produk disini.</p>\r\n', 900000, 0, '0', '7.50', '2015-11-18', 'foto-produk-1480910892.png', 5, 5),
(11, 19, 'Full Flower Box', 'full-flower-box', 'sasaswqw\r\n', 950000, 4, '0', '8.00', '2015-11-18', 'foto-produk-1481040606.jpg', 5, 20),
(1, 20, 'White Rose Blue Variant', 'white-rose-blue-variant', 'Produk bunga\r\n', 125000, 5, '0', '0.50', '2015-03-09', 'foto-produk-1480911105.png', 1, 0),
(99, 24, 'aaaaaaq', '', 'sasa', 12122, 12, '0', '0.00', '0000-00-00', 'foto-produk-1481222295.jpg', 1, 0),
(118, 44, 'ooooooooo', '', 'sdsds', 11212, 12, '0', '0.00', '0000-00-00', 'foto-produk-1481060187.png', 1, 0),
(106, 24, 'qwqwqwq', '', 'dsdsd', 12, 12, '0', '0.00', '0000-00-00', 'foto-produk-1480964590.png', 1, 0),
(85, 24, 'White Table Wedding', 'white-table-wedding', '<p>Masukkan keterangan produk disini.</p>\r\n', 5000000, 9, '0', '8.00', '2015-11-18', 'foto-produk-1481222337.jpg', 1, 0),
(127, 12, 'masuk', '', 'dsdsdsdsd', 2121, 121, '0', '0.00', '2016-12-27', 'foto-produk-1481065556.png', 1, 0),
(128, 12, 'rifky nur aziz', '', 'sasasasadsd', 21212, 12, '0', '0.00', '2016-12-28', 'foto-produk-1481065622.jpg', 1, 0),
(111, 20, 'The power of flower', '', 'asasa', 300000, 12, '0', '0.00', '2014-12-05', 'foto-produk-1481212608.jpg', 1, 0),
(112, 20, 'wqwq', '', 'qqsq', 12121, 121, '0', '0.00', '0000-00-00', 'foto-produk-1480995225.jpg', 1, 0),
(119, 12, 'weewewe', '', 'dd', 1212, 12, '0', '0.00', '0000-00-00', 'foto-produk-1481060327.png', 1, 0),
(125, 12, 'rifky', '', 'qsqsas', 1212, 2, '0', '0.00', '2016-12-22', 'foto-produk-1481065346.png', 1, 0),
(84, 24, 'Wedding Decoration Holiday', 'wedding-decoration-holiday', '<p>Masukkan keterangan produk disini.</p>\r\n', 20000000, 1, '0', '20.00', '2015-11-18', 'foto-produk-1481236535.jpg', 1, 5),
(4, 20, 'Purple White Rose', 'purple-white-rose', '                                            \r\n                                        \r\n                                        ', 250000, 6, '0', '0.25', '2015-11-18', '55toko-bunga-mawar-HB350-B.jpg', 5, 0),
(5, 20, 'sunflower', 'sunflower-dream-bouquet', 'wee', 175000, 11, '0', '0.30', '2015-11-18', '8sunflower_dream_bouquet_bridal_yellow_hd-wallpaper-1586400.jpg', 2, 25),
(136, 24, 'masuk nggak?', '', 'hghfgfg', 44444, 444, '0', '0.00', '2016-12-15', 'foto-produk-1481215570.jpg', 1, 0),
(134, 24, 'testbiasa2', '', 'sdsd', 1212, 121, '0', '0.00', '2016-12-26', 'foto-produk-1481087945.jpg', 1, 0),
(6, 20, 'Mix Purple white rose', 'mix-purple-white-rose', 'ddeeeeded', 150000, 0, '0', '0.35', '2015-11-18', 'foto-produk-1481254164.png', 1, 0),
(114, 21, 'asasas', '', 'wsasa', 2121, 121, '0', '0.00', '0000-00-00', 'foto-produk-1481056057.png', 1, 0),
(12, 20, 'Wedding Brown White Rose', 'wedding-brown-white-rose', '<p>Masukkan keterangan produk disini.</p>\r\n', 350000, 0, '1', '0.50', '2015-11-18', '95slide3.jpg', 1, 25),
(13, 20, 'Sea Flower Bouquet', 'sea-flower-bouquet', '<p>Masukkan keterangan produk disini.</p>\r\n', 267000, 4, '1', '1.00', '2015-11-18', '30slide2.jpg', 1, 5),
(15, 20, 'Pink Beach Roses', 'pink-beach-roses', '<p>Masukkan keterangan produk disini.</p>\r\n', 75000, 15, '1', '0.20', '2015-11-18', '34slide4.jpg', 1, 0),
(86, 24, 'Altar Decoration', 'altar-decoration', '<p>Masukkan keterangan produk disini.</p>\r\n', 3000000, 6, '0', '9.00', '2015-11-18', '47Wedding-Church-Decoration-with-White-Flowers.jpg', 1, 0),
(87, 24, 'Arabian Wedding', 'arabian-wedding', '<p>Masukkan keterangan produk disini.</p>\r\n', 15000000, 12, '0', '10.00', '2015-11-18', '7arabian-decoration-wedding-20150702194624-5595f780cd465.jpg', 1, 10),
(88, 24, 'Purple Theme', 'purple-theme', '<p>Masukkan keterangan produk disini.</p>\r\n', 35000000, 5, '0', '15.00', '2015-11-18', '79pink.jpg', 1, 0),
(89, 24, 'Room Private Wedding', 'room-private-wedding', '<p>Masukkan keterangan produk disini.</p>\r\n', 5000000, 7, '0', '10.00', '2015-11-18', '70Choosing-Color-Decoration-Wedding-Room-Bed-7-440x353.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_sup` char(10) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `nama_sup` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `id_kota` int(3) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `fax` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bbm` varchar(10) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_sup`, `tgl_masuk`, `nama_sup`, `alamat`, `id_kota`, `telp`, `fax`, `email`, `bbm`, `lat`, `lng`) VALUES
('SUP0001', '2015-10-11', 'CV. Agro Mawar', 'Jl. Raya Beji No. 89 Batu', 1, '0341-871879', '0341-871879', 'argomawar@gmail.com', 'BT9078BB', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `detail_galery`
--
ALTER TABLE `detail_galery`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id_kustomer`);

--
-- Indexes for table `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`id_label`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pemb`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_sup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `detail_galery`
--
ALTER TABLE `detail_galery`
  MODIFY `id_gambar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22115;
--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id_kustomer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `label`
--
ALTER TABLE `label`
  MODIFY `id_label` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pemb` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
