-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 10. Mai 2022 um 11:15
-- Server-Version: 10.3.31-MariaDB-0+deb10u1
-- PHP-Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mkargar`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `artikelnummer` int(11) NOT NULL,
  `bezeichnung` varchar(50) NOT NULL,
  `herstell` varchar(50) NOT NULL,
  `preis` int(11) NOT NULL,
  `beschreibung` varchar(10000) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`artikelnummer`, `bezeichnung`, `herstell`, `preis`, `beschreibung`, `img`) VALUES
(1, 'SCHOKOLADEN-CUPCAKE', 'Danet', 5, 'Schritt 1: Mischen Sie die trockenen Zutaten\r\nZuerst Mehl und Backpulver mischen und dreimal sieben, um es aufzuhellen, dann in eine Schüssel gießen und Zucker, Kakaopulver und Vanille hinzufügen und die Zutaten mit einem Handmixer gut vermischen.\r\n\r\nSchritt 2: Fügen Sie die Eier hinzu\r\nFügen Sie die Eier einzeln hinzu und mischen Sie die Zutaten gut mit einem Elektro- oder Handmixer oder einer Gabel, fügen Sie dann das Öl bzw. die Milch hinzu und rühren Sie, bis sie vollständig homogen sind.\r\n\r\nSchritt 3: Schokoladen-Cupcakes zubereiten\r\nZum Schluss rühren Sie die Zutaten mit einem Hand- oder Elektromixer einige Minuten lang, bis sie gedehnt und glatt sind, bereiten Sie dann Papierkapseln oder Muffinformen vor und gießen Sie 1/3 des Fassungsvermögens jedes Bechermaterials mit der Hilfe in jede Dose oder Kapsel einer Schöpfkelle oder eines Löffels.', '1.jpg'),
(2, 'ERFRISCHENDE CUPCAKES ', 'Maria', 8, 'Heizen Sie den Backofen auf 175° C vor und legen Sie die Muffinsform mit Papierförmchen aus.\r\nSchlagen Sie Eier und Zucker zu einer cremigen Masse und geben Sie dann Öl, Orangen- und Zitronensaft hinzu.\r\nRühren Sie nun Backpulver und Mehl rasch unter die Buttermasse und heben Sie anschließen die Mandeln unter den Teig.\r\nVerteilen Sie den Teig gleichmäßig in den Förmchen und backen Sie die Cakes auf mittlerer Schiene für etwa 25 Minuten.\r\nLegen Sie pro Cupcake eine Erdbeere zur Seite und pürieren Sie die restlichen. Geben Sie dann den Topfen hinzu und verrühren alles zu einer glatten Masse.\r\nSchlagen Sie Schlagobers mit dem Sahnesteif und Vanillezucker steif und heben Sie ihn unter die Erdbeer-Topfen-Masse.\r\nGeben Sie die fertige Creme in einen Spritzbeutel und garnieren Sie die abgekühlten Cupcakes damit. Zuletzt geben Sie noch die Erdbeeren auf die Creme.', '2.jpg'),
(3, 'SCHWARZWÄLDER KIRSCH CUPCAKE', 'Müller', 9, 'In einer Schüssel Mehl, Backpulver und Kakaopulver vermischen. Ofen auf 180°C vorheizen.\r\nDie weiche Butter, Eier, Zucker, Kirschschnaps und Vanillezucker schaumig rühren, Milch zufügen. Die Mehlmischung vorsichtig unterheben.\r\nEin Muffinblech mit Formen mit Butter ausfetten, dann zur Hälfte mit Teig füllen und 20-25 Min. backen und auskühlen lassen.\r\nFür die Creme: Schlagobers schlagen, Zucker, Sahnesteif und Kakao unterrühren.\r\nDie Muffins in der Mitte (quer) durchschneiden und mit Creme bestreichen. Oberen Muffinteil wieder drauf setzen. Die restliche Creme in einen Spritzsack mit zackiger Tülle aufspritzen. Mit Schokoraspel und Belegkirschen garnieren. Dann nach Wunsch in Papier-Muffinförmchen setzen.', '3.jpg'),
(4, 'OREO CUPCAKES', 'Oreo', 8, 'Die Eier mit dem Zucker schaumig schlagen. Währenddessen die Schokolade über ein Wasserbad mit der Butter schmelzen, ein bisschen abkühlen lassen und anschließend langsam untermixen. Abschließend Mehl und Backpulver unter den Teig heben.\r\nEin Muffinblech mit Muffinförmchen auslegen und je einen Oreokeks in eine Muffinform legen und den Teig darüber verteilen. Die Muffins bei 180°C, Ober- und Unterhitze zirka 20-25 Minuten backen.\r\nFür die Creme: Die restlichen Oreokekse fein hacken.\r\nDie restliche, zimmertemperaturwarme Butter mit dem Staubzucker mixen und den Frischkäse dazugeben. Schließlich die zerhackten Oreokekse untermischen und die Creme nun auf den Muffins mit Hilfe eines Spritzbeutels verteilen.\r\nZur Dekoration je einen halben Oreokeks oder einen Minioreokeks auf einen Muffin geben.', '4.jpg'),
(5, 'NUTELLA CUPCAKES', 'Nutella', 9, 'Für die Nutella Cupcakes zuerst das Backrohr auf 180 Grad Ober-/Unterhitze vorheizen und eine Muffinform mit Papierförmchen auslegen.\r\nIn einer Rührschüssel das Mehl, Kakaopulver, Butter, Zucker, Backpulver und Salz mit dem Mixer mischen. Unter Rühren zunächst die Milch, dann das Ei und Nutella unterrühren, bis ein geschmeidiger Teig entsteht.\r\nDie Masse in die vorbereitete Form füllen und für 20 Minuten im Backrohr backen.\r\nFür die Glasur: Zucker, Nutella, Butter und Milch gut verrühren und in den Kühlschrank stellen. Wenn die Cupcakes ausgekühlt sind mit der Glasur verzieren.', '5.jpg');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`artikelnummer`),
  ADD UNIQUE KEY `artikelnummer` (`artikelnummer`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `artikelnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
