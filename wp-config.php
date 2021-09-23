<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'atitude_imoveis' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ')z0zmX-WnxI^Vo@a|trPh6BLrdjzICTA*W#(83)r00WR*~)l_*Jg[yYO|3*n6 R.' );
define( 'SECURE_AUTH_KEY',  '?Ul7pe5-lm~1gI{}^(`Dt#&:TOp73n3:/XYAy!nq0N:E/QU)TG}m]&|c?t5fGZvs' );
define( 'LOGGED_IN_KEY',    'p_f>i79DFY2CzHHA|-O#)MXj|Ne`9C6nUDvJ#{c|?`Bo*A/Z-gA^Ao<x^Jgy-f+e' );
define( 'NONCE_KEY',        '0WQJD!Huw~4bOJlOZx~CpRNo`>mcXUIgdTQN)-jn-#1?,:!;76jh7+!Y`5:YvgT;' );
define( 'AUTH_SALT',        '!T}ic![c/-NS*!DXjSPbs|zQ.zPRI>MNAS3FKUZm6WWd.Vx6IsB_oK@?d?`H&& 8' );
define( 'SECURE_AUTH_SALT', '!:P~$CKG^C~hDe/j=^i<5#b.5v=}s69?>aD#:7w16Ed-X3aF$(NSp+?#r{WCI9{g' );
define( 'LOGGED_IN_SALT',   '!r-l4bAVkX3BmK({>YHT-G:ejC;5+f^=3v`j!A+1&/?p`eAyi?7/oee2@8We[cP5' );
define( 'NONCE_SALT',       'DW4wGI{cXnqtq}M?.{+6<Qvg>#mlt4d~%h<GKi@jFM7>JP,hri%!%W~!@;+~Z|Gh' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
