## Setup instructions

=== TOC ===

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
   
   1. Click **'New'** and add the row `C:\PHP7`.
   
   1. Click OK, then OK, then OK, and close out of the System Control Panel.
      
1. Open [Git for Windows](https://gitforwindows.org/) or another terminal emulator, and type in `php -v` to verify PHP is working.

    
xxxxxxxxxx



















