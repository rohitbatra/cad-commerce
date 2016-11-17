<?php
/**
 * Created by PhpStorm.
 * User: rohit
 * Date: 11/17/16
 * Time: 8:58 AM
 */

error_reporting(E_ALL);

require_once('admin/config.php');

require_once('dropbox-sdk/Dropbox/autoload.php');

function connectDB()
{
    $link = mysqli_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
    return $link;
}

function closeConnect($link)
{
    mysqli_close($link);
}

function getLocalFilesFromDB($link)
{
    $sql = "SELECT * FROM `".DB_PREFIX."download` WHERE remote_url IS NULL;";
    $res = mysqli_query($link,$sql);
    return $res->fetch_all(MYSQLI_ASSOC);
}

function updateDB($data,$link)
{

    $sql_u = "UPDATE `".DB_PREFIX."download` SET remote_url = '".urlencode($data['remote_url'])."', log_data = '".$data['log_data']."'  WHERE download_id = '{$data['download_id']}' ";
    mysqli_query($link,$sql_u);

}


use \Dropbox as dbx;

$dropbox_config = array(
    'key'    => APP_KEY,
    'secret' => APP_SECRET
);

$appInfo = dbx\AppInfo::loadFromJson($dropbox_config);
$webAuth = new dbx\WebAuthNoRedirect($appInfo, "PHP-Example/1.0");

/*
$authorizeUrl = $webAuth->start();
echo "1. Go to: <a href='" . $authorizeUrl . "'>Here</a><br>";
echo "2. Click \"Allow\" (you might have to log in first).<br>";
echo "3. Copy the authorization code and insert it into $authCode.<br>";

$authCode = trim('UGtPQl9Z3NAAAAAAAAAAFPHAP4BRPS4BzTnEtruVV1g');

list($accessToken, $dropboxUserId) = $webAuth->finish($authCode);
echo "Access Token: " . $accessToken . "<br>";
*/

$accessToken = APP_ACCESS_TOKEN;

// Get all Downloads from DB
$l = connectDB();

$localFiles = getLocalFilesFromDB($l);

foreach ($localFiles as $file) {

    $filePath = DIR_DOWNLOAD . basename($file['filename']);

    $remoteFileName = $file['mask'];

    $dbxClient = new dbx\Client($accessToken, "PHP-Example/1.0");

    // Uploading the file
    $f = fopen($filePath, "rb");
    $result = $dbxClient->uploadFile("/SEZ_USER_{$file['user_id']}/{$remoteFileName}", dbx\WriteMode::add(), $f);
    fclose($f);

    //print_r($result);

    // Get file info
    $fileM = $dbxClient->getMetadata("/SEZ_USER_{$file['user_id']}/{$remoteFileName}");

    // sending the direct link:
    $dropboxPath = $fileM['path'];
    $pathError = dbx\Path::findError($dropboxPath);
    if ($pathError !== null)
    {
        updateDB(array('download_id' => $file['download_id'], 'log_data' => json_encode($fileM)),$l);
        fwrite(STDERR, "Invalid <dropbox-path>: $pathError\n");
        die;
    }

    /*
    // The $link is an array!
    //$link = $dbxClient->createTemporaryDirectLink($dropboxPath);
    $link = $dbxClient->createShareableLink($dropboxPath);
    // adding ?dl=1 to the link will force the file to be downloaded by the client.
    $dw_link = $link[0]."?dl=1";

    echo "Download link: ".$dw_link."<br>";
    */

    updateDB(array('download_id' => $file['download_id'], 'remote_url' => $dropboxPath, 'log_data' => json_encode($fileM)),$l);

    }

closeConnect($l);