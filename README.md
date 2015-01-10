# SQLite build scripts for Android #

## Get your SQLite version and update Makefile if needed ##

http://www.sqlite.org/download.html

  SQLITE_VERSION  ?= 3080704

## Build dependency ##

Android NDK

https://developer.android.com/tools/sdk/ndk/index.html

## Usage ##

  make clean
  make

[armeabi] Compile thumb  : sqlite3-cli <= shell.c
[armeabi] Compile thumb  : sqlite3-cli <= sqlite3.c
[armeabi] Compile thumb  : sqlite3 <= sqlite3.c
[armeabi] StaticLibrary  : libsqlite3.a
[armeabi] Executable     : sqlite3
[armeabi] Install        : sqlite3 => libs/armeabi/sqlite3

## Artifacts ##

- CLI
libs/armeabi/sqlite3

- Statically linked shared library
obj/local/armeabi/libsqlite3.a
