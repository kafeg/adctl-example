#-------------------------------------------------
#
# Project created by QtCreator 2015-10-12T12:20:46
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = AdCtlApp
TEMPLATE = app

SOURCES += main.cpp\
        MainWindow.cpp

HEADERS  += MainWindow.h

FORMS    += MainWindow.ui

CONFIG += mobility
MOBILITY = 

android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/platform/android
    android:DISTFILES += $$ANDROID_PACKAGE_SOURCE_DIR/AndroidManifest.xml
}

ios {
    ios:QMAKE_INFO_PLIST = $$PWD/platform/ios/Info.plist
}

include(adctl/AdCtl.pri)
