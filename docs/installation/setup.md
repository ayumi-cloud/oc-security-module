## Setup instructions

## Table of contents

- [Install PHP 7 on Windows 10](#install-php-7-on-windows-10)
- [Install PHP 8 on Windows 10](#install-php-8-on-windows-10)
- [Install Composer 2.x on Windows 10](#install-composer-2x-on-windows-10)
- [Setup XAMPP](#setup-xampp)
- [Setup Database](#setup-database)
   - [MySQL on Localhost](#mysql-on-localhost)
- [Install Summer CMS (Command Line)](#install-summer-cms-command-line)

## Install PHP 7 on Windows 10

1. Install the [Visual C++ Redistributable for Visual Studio 2015](http://www.microsoft.com/en-us/download/details.aspx?id=48145) - this is linked in the sidebar of the [PHP for Windows Download page](https://windows.php.net/download/), but it's kind of hidden. If you don't do this, you'll run into a rather cryptic error message, `VCRUNTIME140.DLL was not found` and `php` commands won't work.

1. [Download PHP for Windows](https://windows.php.net/download/). Select the latest PHP 7.4.x version and click on the `Download source code` which should download a `zip` file.

1. Expand the zip file into the path `C:\PHP7`.

1. Configure PHP to run correctly on your system:

   1. In the `C:\PHP7` folder, rename the file `php.ini-development` to `php.ini`.

   1. Edit the `php.ini` file in a code editor (e.g. Notepad++, Atom, or Sublime Text).
    
   1. Change the following settings in the file and save the file:

      1. Change `memory_limit` from `128M` to `1G` (because PHP Composer can use lots of memory).
        
      1. Uncomment the line that reads `; extension_dir = "ext"` (remove the `;` so the line is just `extension_dir = "ext"`).
        
      1. In the section where there are a bunch of `extension=` lines, uncomment the following lines:

      ```
      extension=curl
      extension=fileinfo
      extension=gd2
      extension=mbstring
      extension=openssl
      ```
      
      Also choose which database `pdo` extension you are using from the list:
      
      ```
      ;extension=pdo_firebird
      ;extension=pdo_mysql
      ;extension=pdo_oci
      ;extension=pdo_odbc
      ;extension=pdo_pgsql
      ;extension=pdo_sqlite
      ```
      
      From the above list we will uncommment the `extension=pdo_mysql` by removing the `;` at the beginning - as we will use a **MySQL** database for this example.

1. Add `C:\PHP7` to your Windows system path:
      
   1. Do a search for **'View Advanced System Settings'** and open the application.

      ![image text](https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/windows-advanced-settings.jpg)
   
   1. Click the **'Environment Variables...'** button.
   
   1. Under **'System variables'** click on the **'Path'** row  and then click on the **'Edit...'** button.
   
   1. Click on the **'New'** button and add the row `C:\PHP7`.
   
   1. Click on the **'Ok'** button and close all the **'View Advanced System Settings'** windows.
      
   1. Open [Git for Windows](https://gitforwindows.org/) or another terminal emulator, and type in `php -v` to verify PHP is working.

      ```
      $ php -v
      PHP 7.4.13 (cli) (built: Jan 1 9999 12:34:56) ( NTS Visual C++ 2017 x64 )
      Copyright (c) The PHP Group
      Zend Engine v3.4.0, Copyright (c) Zend Technologies
      ```

## Install PHP 8 on Windows 10

1. Install the [Visual C++ Redistributable for Visual Studio 2015](http://www.microsoft.com/en-us/download/details.aspx?id=48145) - this is linked in the sidebar of the [PHP for Windows Download page](https://windows.php.net/download/), but it's kind of hidden. If you don't do this, you'll run into a rather cryptic error message, `VCRUNTIME140.DLL was not found` and `php` commands won't work.

1. [Download PHP for Windows](https://windows.php.net/download/). Select the latest PHP 8.x version and click on the `Download source code` which should download a `zip` file.

1. Expand the zip file into the path `C:\PHP8`.

1. Configure PHP to run correctly on your system:

   1. In the `C:\PHP8` folder, rename the file `php.ini-development` to `php.ini`.

   1. Edit the `php.ini` file in a code editor (e.g. Notepad++, Atom, or Sublime Text).
    
   1. Change the following settings in the file and save the file:

      1. Change `memory_limit` from `128M` to `1G` (because PHP Composer can use lots of memory).
        
      1. Uncomment the line that reads `; extension_dir = "ext"` (remove the `;` so the line is just `extension_dir = "ext"`).
        
      1. In the section where there are a bunch of `extension=` lines, uncomment the following lines:

      ```
      extension=curl
      extension=fileinfo
      extension=gd2
      extension=mbstring
      extension=openssl
      ```
      
      Also choose which database `pdo` extension you are using from the list:
      
      ```
      ;extension=pdo_firebird
      ;extension=pdo_mysql
      ;extension=pdo_oci
      ;extension=pdo_odbc
      ;extension=pdo_pgsql
      ;extension=pdo_sqlite
      ```
      
      From the above list we will uncommment the `extension=pdo_mysql` by removing the `;` at the beginning - as we will use a **MySQL** database for this example.

1. Add `C:\PHP8` to your Windows system path:
      
   1. Do a search for **'View Advanced System Settings'** and open the application.

      ![image text](https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/windows-advanced-settings.jpg)
   
   1. Click the **'Environment Variables...'** button.
   
   1. Under **'System variables'** click on the **'Path'** row  and then click on the **'Edit...'** button.
   
   1. Click on the **'New'** button and add the row `C:\PHP8`.
   
   1. Click on the **'Ok'** button and close all the **'View Advanced System Settings'** windows.
      
   1. Open [Git for Windows](https://gitforwindows.org/) or another terminal emulator, and type in `php -v` to verify PHP is working.

      ```
      $ php -v
      PHP 8.0.0 (cli) (built: Jan 1 9999 12:34:56) ( NTS Visual C++ 2017 x64 )
      Copyright (c) The PHP Group
      Zend Engine v3.4.0, Copyright (c) Zend Technologies
      ```

## Install Composer 2.x on Windows 10

1. Download the [Windows Installer for Composer](https://getcomposer.org/download/) and run it.

1. Note that the Windows Installer for Composer might ask to make changes to your `php.ini` file. That's okay, allow it and continue through the setup wizard.

1. Close out of any open [Git for Windows](https://gitforwindows.org/) or other terminal windows and then open a new one.

1. Run the `composer` command and verify you get a listing of the Composer help and available commands.

   ![image text](https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/composer-2.png)

## Setup XAMPP

1. Open [XAMPP Downloads](https://www.apachefriends.org/download.html), select the correct version and click on the **'Download (64 bit)'** button, to download an installer file. For Windows that will be `.exe`, for MAC that will be `.dmg` and for Linux that will be `.run`

1. Run the installer and follow the instructions.

## Setup Database

### MySQL on Localhost

1. Open the location: [Localhost phpMyAdmin](http://localhost/phpmyadmin/)

1. Click on `Databases` at the top.

   1. In the `Database name` field add a database name and click on the **'Create'** button.
   
1. Click on the `phpMyAdmin` logo or click on this link: [Localhost phpMyAdmin](http://localhost/phpmyadmin/) to return back to the home page.

1. Click on `User accounts` at the top.

   1. Click on `Add user account` under the **New** section.
   
   1. Fill in the `User name`, `Password`, `Re-Type` (Re-Type Password) fields.
   
   1. Next to the `Global privileges` click on the checkbox to check all the fields.
   
   1. Then click on `Go` near the bottom right of the page.
   
   1. Click on the `Database` button  and select which database you want to connect the database user. There should be a selectbox with several dataabses listed, you can select more than one if needed.
   
   1. Then click on `Go` near the bottom right of the page.
   
   1. You may see a screen asking for `Database-specific privileges` click on the checkbox next to it, to select all the options.
   
   1. Then click on `Go` near the bottom right of the page and you should see a message saying that you have updated the privileges for your database account.

## Install Summer CMS (Command Line)

> To be updated when ready to release to public for beta-testing.
