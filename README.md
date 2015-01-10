# SQLite build scripts for Android

## Update SQLite version if needed

* No download is necessary, Makefile will take care of that for you. Use the
  download link only to choose any `sqlite-amalgamation` version number.

http://www.sqlite.org/download.html

* Update Makefile with desired SQLite version.

```bash
  vi Makefile

  ...
  SQLITE_VERSION ?= 3080704
  ...
```

## Configure your environment

* Get Android NDK and configure your environment so the command `ndk-build`
  can be found in the PATH. This is a build dependency and is necessary to
  cross-compile and build Native Code Applications for Android.

https://developer.android.com/tools/sdk/ndk/index.html

## Build

* Make the CLI and Shared Lib.

```bash
  make clean
  make

  * Expected output
  [armeabi] Compile thumb  : sqlite3-cli <= shell.c
  [armeabi] Compile thumb  : sqlite3-cli <= sqlite3.c
  [armeabi] Compile thumb  : sqlite3 <= sqlite3.c
  [armeabi] StaticLibrary  : libsqlite3.a
  [armeabi] Executable     : sqlite3
  [armeabi] Install        : sqlite3 => libs/armeabi/sqlite3
```

## Artifacts

* CLI

```bash
  libs/armeabi/sqlite3
```

* Statically linked shared library

```bash
  obj/local/armeabi/libsqlite3.a
```

* You may now push SQLite to your Android device

```bash
  adb push libs/armeabi/sqlite3 /sdcard/
  adb shell
  cp /sdcard/sqlite3 /data/local/
  rm -f /sdcard/sqlite3
  chmod 755 /data/local/sqlite3
  /data/local/sqlite3 -help
```
