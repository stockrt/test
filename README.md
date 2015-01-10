# SQLite build scripts for Android

## Update SQLite version if needed

* No download is necessary, Makefile will take care of that for you.

http://www.sqlite.org/download.html

```bash
  SQLITE_VERSION ?= 3080704
```

## Build dependency

* Get Android NDK and configure your environment so the command `ndk-build` can be found in the PATH.

https://developer.android.com/tools/sdk/ndk/index.html

## Usage

```bash
  make clean
  make

  [armeabi] Compile thumb  : sqlite3-cli <= shell.c
  [armeabi] Compile thumb  : sqlite3-cli <= sqlite3.c
  [armeabi] Compile thumb  : sqlite3 <= sqlite3.c
  [armeabi] StaticLibrary  : libsqlite3.a
  [armeabi] Executable     : sqlite3
  [armeabi] Install        : sqlite3 => libs/armeabi/sqlite3
```

## Artifacts

* CLI

libs/armeabi/sqlite3

* Statically linked shared library

obj/local/armeabi/libsqlite3.a
