PHPUnit & GitHub & Travis CI 整合自動化測試
============================
## 需求
+ Composer
+ PHPUint
+ Xdebug
+ GitHub
+ Travis CI

### STEP 1 - 安裝 Composer

+ 官網下載頁面 : https://getcomposer.org/download/
+ 安裝方式有以下兩種：
  1. Windows Installer
  2. Command-line Installer

### STEP 2 - 安裝 PHPUnit
+ 官網安裝說明 : https://phpunit.de/manual/current/en/installation.html
+  Composer 安裝 PHPUint

```sh
$ composer require --dev phpunit/phpunit
```

### STEP 3 - 執行測試

+ 將目錄切換至`專案根目錄`
+ command-line：
 ```sh
  $ phpunit -c phpunit.xml --coverage-html coverage
 ```
+ 執行測試完成後，將自動產生 `coverage`資料夾與檔案

### SETP 4 - 加入 Travis CI 持續測試

1. 需先至 https://travis-ci.org/ 註冊帳號，透過 OAuth 連結你的 GitHub 帳號
2. 在登入帳號之後 ，將會列出在 GitHub 上的 Repository，選擇你要持續測試的專案
3. 新增.travis.yml 檔案
```sh
language: php
php:
  - 5.4
  - 5.5
install:
  - composer install --no-dev --quiet
script: phpunit -c phpunit.xml --coverage-text

```
4. 將.travis.yml 檔案放在根目錄即可進行持續測試
5. 設定觸發設定
6. GitHub - repository push 之後，將會自動執行PHPUint 測試並發送測試結果到電子信箱

### 參考資料
+ Composer - https://getcomposer.org/
+ PHP 依賴性管理工具 Composer - http://getcomposer.ycnets.com/doc/00-intro.md
+ PHPUnit - https://phpunit.de/
+ GitHub - https://github.com/
+ Travis CI
  - https://travis-ci.com/ (付費版，提供私人 repository)
  - https://travis-ci.org/ (免費版，只提供公開 repository)
  - https://docs.travis-ci.com/user/languages/php/ (各程式語言設定參數)
