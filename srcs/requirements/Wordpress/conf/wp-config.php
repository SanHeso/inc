<?php
define('DB_NAME', 'wp');
define('DB_USER', 'hnewman');
define('DB_PASSWORD', 'raritet42');
define('DB_HOST', 'mariadb');
define('DB_CHARSET', 'utf8' );
define('DB_COLLATE', '' );
define('AUTH_KEY',         'Pi#xCgE]Yh@pczsrgYq2*!Oy+&R=pAp@*o6)sz.?w_jJT`6MjuLn*Nn/rRU[}y$T');
define('SECURE_AUTH_KEY',  'tmb#0Y2O$p[||]^Poiy+UIe+dO51uh7{B_[NYF&:?>q2iKKl+xOSfK|)I6e5_wy;');
define('LOGGED_IN_KEY',    'YFhUhhhG/brtzirsQr*)5`iw0dlFUx`(3^{1Bv~?lT;3)a26)3OhN+>#XrmU>_MO');
define('NONCE_KEY',        'Z;>^)~#|,CRU`E Zaa=Thi}znWa2C,xt{2F+)1x&-wN<0>PgW-.&//(9<wxERE:<');
define('AUTH_SALT',        'UD1#1<L9#9OAegvtX,fTQj5^dtvXiy=OW3Jv$U|w:OCtnnm+l@[qo=VuA8W3_lf.');
define('SECURE_AUTH_SALT', 'E=|mCOW;2sW0=zEw 4mjp-% xlQObK@Bx(w|=&b5Sewok-+<@o2K?,~a~k8M/ML^');
define('LOGGED_IN_SALT',   '$l_!4nVKM]l+%}uz_uxDf7_=w|y$$(m/t})ew%:{V-^#&imD-idL?6HGuzX:``4V');
define('NONCE_SALT',       'J~Kdn+9t[{]:AYWrR-Z]3>7us/cYv|M.[yBFnZ-NEgw9ntw+K$E}%mDOWgKBrCh0');
$table_prefix = 'wp_';
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_DISPLAY', false );
define( 'WP_DEBUG_LOG', true );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}
require_once( ABSPATH . 'wp-settings.php' );
?>