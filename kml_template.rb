$kml_header = <<'EOS'
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
  <Document>
    <name>title</name>
    <description/>
    <Style id="icon-1899-000000-nodesc-normal">
      <IconStyle>
        <color>ff000000</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-000000-nodesc-highlight">
      <IconStyle>
        <color>ff000000</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="110">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-000000-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-000000-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Style id="icon-1899-0288D1-nodesc-normal">
      <IconStyle>
        <color>ffd18802</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-0288D1-nodesc-highlight">
      <IconStyle>
        <color>ffd18802</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="60">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-0288D1-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-0288D1-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Style id="icon-1899-7CB342-nodesc-normal">
      <IconStyle>
        <color>ff42b37c</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-7CB342-nodesc-highlight">
      <IconStyle>
        <color>ff42b37c</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="70">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-7CB342-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-7CB342-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Style id="icon-1899-BDBDBD-nodesc-normal">
      <IconStyle>
        <color>ffbdbdbd</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-BDBDBD-nodesc-highlight">
      <IconStyle>
        <color>ffbdbdbd</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="50">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-BDBDBD-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-BDBDBD-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Style id="icon-1899-FBC02D-nodesc-normal">
      <IconStyle>
        <color>ff2dc0fb</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-FBC02D-nodesc-highlight">
      <IconStyle>
        <color>ff2dc0fb</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="90">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-FBC02D-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-FBC02D-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Style id="icon-1899-FF5252-nodesc-normal">
      <IconStyle>
        <color>ff5252ff</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-FF5252-nodesc-highlight">
      <IconStyle>
        <color>ff5252ff</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="100">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-FF5252-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-FF5252-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Style id="icon-1899-FFEA00-nodesc-normal">
      <IconStyle>
        <color>ff00eaff</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>0</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <Style id="icon-1899-FFEA00-nodesc-highlight">
      <IconStyle>
        <color>ff00eaff</color>
        <scale>1</scale>
        <Icon>
          <href>http://www.gstatic.com/mapspro/images/stock/503-wht-blank_maps.png</href>
        </Icon>
        <hotSpot x="32" xunits="pixels" y="64" yunits="insetPixels"/>
      </IconStyle>
      <LabelStyle>
        <scale>1</scale>
      </LabelStyle>
      <BalloonStyle>
        <text><![CDATA[<h3>$[name]</h3>]]></text>
      </BalloonStyle>
    </Style>
    <StyleMap id="80">
      <Pair>
        <key>normal</key>
        <styleUrl>#icon-1899-FFEA00-nodesc-normal</styleUrl>
      </Pair>
      <Pair>
        <key>highlight</key>
        <styleUrl>#icon-1899-FFEA00-nodesc-highlight</styleUrl>
      </Pair>
    </StyleMap>
    <Folder>
      <name>系列</name>
      <Placemark>
        <name>単価110万以上</name>
        <styleUrl>#110</styleUrl>
        <Point>
          <coordinates>
            135.758767,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>単価100万以上</name>
        <styleUrl>#100</styleUrl>
        <Point>
          <coordinates>
            135.758767,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>単価90万以上</name>
        <styleUrl>#90</styleUrl>
        <Point>
          <coordinates>
            135.758767,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>単価80万以上</name>
        <styleUrl>#80</styleUrl>
        <Point>
          <coordinates>
            135.758767,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>単価70万以上</name>
        <styleUrl>#70</styleUrl>
        <Point>
          <coordinates>
            135.7587667,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>単価60万以上</name>
        <styleUrl>#60</styleUrl>
        <Point>
          <coordinates>
            135.758767,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>単価60万未満</name>
        <styleUrl>#50</styleUrl>
        <Point>
          <coordinates>
            135.758767,34.985849,0
          </coordinates>
        </Point>
      </Placemark>
    </Folder>
    <Folder>
      <name>物件</name>
EOS
$kml_footer = <<'EOS'
    </Folder>
  </Document>
</kml>
EOS
