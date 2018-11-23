<?php

/**
 *	The Leginon software is Copyright under
 *	Apache License, Version 2.0
 *	For terms of the license agreement
 *	see  http://leginon.org
 *
 */
 
 /**
  *  Please visit http://yourhost/myamiwebfolder/setup
  *  for automatically setup this config file for the
  *  first time.
  */
 

require_once 'inc/config.inc';
define('WEB_ROOT',dirname(__FILE__));

// --- define myamiweb tools base --- //
define('PROJECT_NAME', "myamiweb");
define('PROJECT_TITLE', "Appion-Protomo in a Docker Container");

// --- define site base path -- //
// --- This should be changed if the myamiweb directory is located -- //
// --- in a sub-directory of the Apache web directory. -- //
// --- ex. myamiweb is in /var/www/html/applications/myamiweb/ then -- //
// --- change "myamiweb to "applications/myamiweb" -- //
define('BASE_PATH',"myamiweb");

define('BASE_URL', "/".BASE_PATH."/");
define('PROJECT_URL', BASE_URL."project/");

// --- myamiweb login --- //
// Browse to the administration tools in myamiweb prior to 
// changing this to true to populate DB tables correctly.
define('ENABLE_LOGIN', false);
define('ENABLE_ANONYMOUS', false);
define('COOKIE_PASSPHRASE', '');

// --- Administrator email title and email address -- //
define('EMAIL_TITLE', 'The name of your institute');
define('ADMIN_EMAIL', "anoble@nysbc.org");

// --- When 'ENABLE_SMTP set to true, email will send out -- //
// --- via ADMIN_EMIL's SMTP server. --// 
define('ENABLE_SMTP', false);
define('SMTP_HOST', 'mail.institute.edu');	//your smtp host

// --- Check this with your email administrator -- //
// --- Set it to true if your SMTP server requires authentication -- //
define('SMTP_AUTH', false);

// --- If SMTP_AUTH is not required(SMTP_AUTH set to false, -- //
// --- no need to fill in 'SMTP_USERNAME' & SMTP_PASSWORD -- //
define('SMTP_USERNAME', "");
define('SMTP_PASSWORD', "");

// --- Set your MySQL database server parameters -- //
define('DB_HOST', "localhost");		// DB Host name
define('DB_USER', "usr_object");	// DB User name
define('DB_PASS', "appion-protomo");	// DB Password
define('DB_LEGINON', "leginondb");	// Leginon database name
define('DB_PROJECT', "projectdb");	// Project database name

// --- default URL for project section --- //
define('VIEWER_URL', BASE_URL."3wviewer.php?expId=");
define('SUMMARY_URL', BASE_URL."summary.php?expId=");
define('UPLOAD_URL', BASE_URL."processing/uploadimage.php");

// --- Set cookie session time -- //
define('COOKIE_TIME', 0);		//0 is never expire. 

// --- defaut user group -- //
define('GP_USER', 'users');

// --- Set Default table definition -- //
define('DEF_PROCESSING_TABLES_FILE', "defaultprocessingtables.xml");
define('DEF_PROCESSING_PREFIX', "ap");		//update mysql privileges

// --- Set External SQL server here (use for import/export application) -- //
// --- You can add as many as you want, just copy and paste the block -- //
// --- to a new one and update the connection parameters -- //
// --- $SQL_HOSTS['example_host_name']['db_host'] = 'example_host_name'; -- //
// --- $SQL_HOSTS['example_host_name']['db_user'] = 'usr_object'; -- //
// --- $SQL_HOSTS['example_host_name']['db_pass'] = ''; -- //
// --- $SQL_HOSTS['example_host_name']['db'] = 'legniondb'; -- //

$SQL_HOSTS[DB_HOST]['db_host'] = DB_HOST;
$SQL_HOSTS[DB_HOST]['db_user'] = DB_USER;
$SQL_HOSTS[DB_HOST]['db_pass'] = DB_PASS;
$SQL_HOSTS[DB_HOST]['db'] = DB_LEGINON;

// --- path to main --- //
set_include_path(dirname(__FILE__).PATH_SEPARATOR
				.dirname(__FILE__)."/project".PATH_SEPARATOR
				.dirname(__FILE__)."/lib".PATH_SEPARATOR
				.dirname(__FILE__)."/lib/PEAR");

// --- add plugins --- //
// --- uncomment to enable processing web pages -- //
addplugin("processing");


// --- Add as many processing hosts as you like -- //
// --- Please enter your processing host information as in the following example. -- //
// --- if the login and passphrase are false/null	-- //
// --- the username and password that the user   	-- //
// --- logs into appion with will be used.			-- //
$PROCESSING_HOSTS[] = array(
  'host' => 'localhost',
  'nproc' => 1,'nodesdef' => '1','nodesmax' => '1',
  'ppndef' => '1','ppnmax' => '1',
  'reconpn' => '1',
  'walltimedef' => '48','walltimemax' => '240',
  'cputimedef' => '1536','cputimemax' => '10000',
  'memorymax' => '',
  'appionbin' => 'bin/','appionlibdir' => 'appion/',
  'baseoutdir' => 'appion','localhelperhost' => '',
  'dirsep' => '/','wrapperpath' => 'appion',
  'loginmethod' => 'SHAREDKEY','loginusername' => '',
  'passphrase' => '','publickey' => 'rsa.pub',
  'privatekey' => 'rsa',
  'gpus' => array( '0.0' => 'device 0: Tesla', '1' => 'device 1', '2' => 'device 2'), 
  'queues' => array('bigmem','myami')
);


// --- Restrict file server if you want --- //
// --- Add your allowed processing directory as string in the array
$DATA_DIRS = array();

// --- Enable Image Cache --- //
define('ENABLE_CACHE', false);
// --- caching location --- //
// --- please make sure the apache user has read access to this folder --- //
// --- define('CACHE_PATH', "/srv/www/cache/"); --- //
define('CACHE_PATH', "");

// --- define Flash player base url --- //
define('FLASHPLAYER_URL', "/flashplayer/");

// --- define python commands - path --- //

// to download images as TIFF or JPEG
// $pythonpath="/your/site-packages";
// putenv("PYTHONPATH=$pythonpath");

// --- Check if IMAGIC is installed and running, otherwise hide all functions --- //
define('HIDE_IMAGIC', true);

// --- Check if MATLAB is installed and running, otherwise hide all functions --- //
define('HIDE_MATLAB', true);

// --- hide processing tools still under development. --- //
define('HIDE_FEATURE', true);

// --- temporary images upload directory --- //
define('TEMP_IMAGES_DIR', "");

// --- use appion wrapper (prepends APPION_WRAPPER_PATH to all Appion commands) --- //
define('USE_APPION_WRAPPER', false);
// --- define('APPION_WRAPPER_PATH', ""); --- //

// --- default appion base directory to store processing results (Normally `parallel to leginon image directory defined in leginon/leginon.cfg) --- // 
// note:  This should end with the directory named "appion"
define('DEFAULT_APPION_PATH',"");

// --- number of parent directories before the sessionname to append after DEFAULT_APPION_PATH --- // 
// The result is a subdivision of data by user after DEFAULT_APPION_PATH, as configured in each user's leginon/leginon.cfg or upon creation of the Leginon session--- //
define('APPION_PARENT_ADDITION',0);

// --- negative index of the directory before the sessionname used to replace the elemenr of DEFAULT_APPION_PATH --- //
// --- negative index of the directory before the last directory named "leginon"
// in DEFAULT_APPION_PATH used to replace the element of DEFAULT_APPION_PATH
// before the last directory named "appion"--- //
// Thre result is a subdivision of data by user or group before appion/leginon directories.
//define('APPION_PARENT_REPLACEMENT',-2);

// --- sample tracking ---//
define('SAMPLE_TRACK', false);

// --- exclude projects in statistics. give a string with numbers separated by ',' ---//
// --- for example, "1,2" ---//
define('EXCLUDED_PROJECTS',"");

// --- hide testing tools related to specific data sets. --- //
define('HIDE_TEST_TOOLS', true);

// --- A startup message may be shown to the user --- //
define('STARTUP_MESSAGE', "");

// --- Redux server Host and Port information. --- //
// --- define('SERVER_HOST', "redux.schools.edu"); --- //
// --- define('SERVER_PORT', "55123"); --- //
define('SERVER_HOST', "localhost");
define('SERVER_PORT', "55123");

$TEST_SESSIONS = array();

?>
