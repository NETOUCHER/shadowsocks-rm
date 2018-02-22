SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `t` int(11) NOT NULL DEFAULT 0,
  `u` bigint(20) NOT NULL,
  `d` bigint(20) NOT NULL,
  `transfer_enable` bigint(20) NOT NULL,
  `port` int(11) NOT NULL,
  `switch` tinyint(4) NOT NULL DEFAULT 1,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `last_get_gift_time` int(11) NOT NULL DEFAULT 0,
  `last_rest_pass_time` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `email`, `pass`, `passwd`, `t`, `u`, `d`, `transfer_enable`, `port`, `switch`, `enable`, `type`, `last_get_gift_time`, `last_rest_pass_time`, `pid`) VALUES
(0, '', '', '0000000', 0, 0, 0, 1, 8000, 1, 1, 1, 0, 0, 0);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`port`),
  ADD UNIQUE KEY `pid` (`pid`);


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
