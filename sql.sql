CREATE TABLE IF NOT EXISTS `faucet_banned_address` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `faucethub_username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `faucet_banned_ip` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `faucet_pages` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `timestamp_created` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `faucet_settings` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

INSERT INTO `faucet_settings` (`id`, `name`, `value`) VALUES
(1, 'faucet_name', 'FaucetHub Faucet'),
(2, 'space_top', 'Space on the top'),
(3, 'space_left', 'Space on the left side'),
(4, 'space_right', 'Space on the right side'),
(5, 'timer', '15'),
(6, 'min_reward', '1'),
(7, 'max_reward', '20'),
(8, 'reCaptcha_privKey', ''),
(9, 'reCaptcha_pubKey', ''),
(10, 'faucethub_key', ''),
(11, 'claim_enabled', 'no'),
(12, 'admin_username', 'admin'),
(13, 'admin_password', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(14, 'vpn_shield', 'no'),
(15, 'referral_percent', '0'),
(16, 'reverse_proxy', 'no'),
(17, 'admin_login', ''),
(18, 'auto_withdraw', 'no'),
(19, 'faucet_coupons', 'no');

CREATE TABLE IF NOT EXISTS `faucet_coupons` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` VARCHAR(20) NOT NULL,
  `coupon_value` decimal(10,8) NOT NULL,
  `coupon_expiration` datetime NOT NULL,
  `coupon_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
/* TESTING */
INSERT INTO `faucet_coupons` (`id`, `coupon_value`, `coupon_expiration`, `coupon_count`) VALUES
(1, 'coupon_code_1', '100', '15-July-2019', '10'),
(2, 'coupon_code_2', '50', '25-July-2019', '20');

CREATE TABLE IF NOT EXISTS `faucet_transactions` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(32) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` decimal(10,8) NOT NULL,
  `timestamp` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
/* */
CREATE TABLE IF NOT EXISTS `faucet_user_list` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `faucethub_username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `balance` decimal(10,8) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  `last_activity` int(32) NOT NULL,
  `referred_by` int(32) NOT NULL,
  `last_claim` int(32) NOT NULL,
  `claim_cryptokey` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
