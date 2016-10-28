pragma Singleton
import QtQuick 2.0

Item {
  id: fontAwesome
  FontLoader { id: iconFontLoader;source: 'fontawesome-webfont.ttf' }
  property string fontName : iconFontLoader.name
}
