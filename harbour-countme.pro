# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-countme

#CONFIG += sailfishapp

# Start of temporary fix for the icon for the Nov 2013 harbour requirements
QT += quick qml

target.path = /usr/bin

qml.files = qml
qml.path = /usr/share/$${TARGET}

desktop.files = $${TARGET}.desktop
desktop.path = /usr/share/applications

icon.files = $${TARGET}.png
icon.path = /usr/share/icons/hicolor/86x86/apps

INSTALLS += target qml desktop icon

CONFIG += link_pkgconfig
PKGCONFIG += sailfishapp
INCLUDEPATH += /usr/include/sailfishapp

OTHER_FILES += $$files(rpm/*)
# End of nov 2013 fix

SOURCES += src/harbour-countme.cpp

OTHER_FILES += qml/harbour-countme.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-countme.spec \
    rpm/harbour-countme.yaml \
    harbour-countme.desktop \
    qml/pages/MainPage.qml \
    qml/components/ResetDialog.qml \
    qml/components/AboutDialog.qml \
    qml/components/MidSeparator.qml

