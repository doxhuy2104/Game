<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.5.0" name="terrain" tilewidth="16" tileheight="16" tilecount="3200" columns="40">
 <image source="../terrain.png" width="640" height="1280"/>
 <tile id="49" probability="0.015"/>
 <tile id="50" probability="0.015"/>
 <tile id="51" probability="0.015"/>
 <tile id="52" probability="0.015"/>
 <tile id="53" probability="0.015"/>
 <tile id="54" probability="0.025"/>
 <tile id="87" probability="0.015"/>
 <tile id="88" probability="0.015"/>
 <tile id="89" probability="0.015"/>
 <tile id="90" probability="0.015"/>
 <tile id="91" probability="0.015"/>
 <tile id="92" probability="0.015"/>
 <tile id="93" probability="0.015"/>
 <tile id="201">
  <animation>
   <frame tileid="201" duration="350"/>
   <frame tileid="204" duration="350"/>
   <frame tileid="207" duration="350"/>
   <frame tileid="210" duration="350"/>
  </animation>
 </tile>
 <tile id="203">
  <animation>
   <frame tileid="203" duration="350"/>
   <frame tileid="206" duration="350"/>
   <frame tileid="209" duration="350"/>
   <frame tileid="212" duration="350"/>
  </animation>
 </tile>
 <tile id="214">
  <animation>
   <frame tileid="214" duration="350"/>
   <frame tileid="254" duration="350"/>
   <frame tileid="294" duration="350"/>
   <frame tileid="334" duration="350"/>
  </animation>
 </tile>
 <tile id="215">
  <animation>
   <frame tileid="215" duration="350"/>
   <frame tileid="255" duration="350"/>
   <frame tileid="295" duration="350"/>
   <frame tileid="335" duration="350"/>
  </animation>
 </tile>
 <tile id="241">
  <animation>
   <frame tileid="241" duration="350"/>
   <frame tileid="244" duration="350"/>
   <frame tileid="247" duration="350"/>
   <frame tileid="250" duration="350"/>
  </animation>
 </tile>
 <tile id="243">
  <animation>
   <frame tileid="243" duration="350"/>
   <frame tileid="246" duration="350"/>
   <frame tileid="249" duration="350"/>
   <frame tileid="252" duration="350"/>
  </animation>
 </tile>
 <tile id="281">
  <animation>
   <frame tileid="281" duration="350"/>
   <frame tileid="284" duration="350"/>
   <frame tileid="287" duration="350"/>
   <frame tileid="290" duration="350"/>
  </animation>
 </tile>
 <tile id="282">
  <animation>
   <frame tileid="282" duration="350"/>
   <frame tileid="285" duration="350"/>
   <frame tileid="288" duration="350"/>
   <frame tileid="291" duration="350"/>
  </animation>
 </tile>
 <tile id="283">
  <animation>
   <frame tileid="283" duration="350"/>
   <frame tileid="286" duration="350"/>
   <frame tileid="289" duration="350"/>
   <frame tileid="292" duration="350"/>
  </animation>
 </tile>
 <tile id="361">
  <animation>
   <frame tileid="361" duration="350"/>
   <frame tileid="363" duration="350"/>
   <frame tileid="365" duration="350"/>
   <frame tileid="367" duration="350"/>
  </animation>
 </tile>
 <tile id="362">
  <animation>
   <frame tileid="362" duration="350"/>
   <frame tileid="364" duration="350"/>
   <frame tileid="366" duration="350"/>
   <frame tileid="368" duration="350"/>
  </animation>
 </tile>
 <tile id="401">
  <animation>
   <frame tileid="401" duration="350"/>
   <frame tileid="403" duration="350"/>
   <frame tileid="405" duration="350"/>
   <frame tileid="407" duration="350"/>
  </animation>
 </tile>
 <tile id="402">
  <animation>
   <frame tileid="402" duration="350"/>
   <frame tileid="404" duration="350"/>
   <frame tileid="406" duration="350"/>
   <frame tileid="408" duration="350"/>
  </animation>
 </tile>
 <tile id="486">
  <animation>
   <frame tileid="486" duration="100"/>
   <frame tileid="487" duration="100"/>
   <frame tileid="488" duration="100"/>
  </animation>
 </tile>
 <tile id="526">
  <animation>
   <frame tileid="526" duration="100"/>
   <frame tileid="527" duration="100"/>
   <frame tileid="528" duration="100"/>
  </animation>
 </tile>
 <tile id="566">
  <animation>
   <frame tileid="566" duration="100"/>
   <frame tileid="567" duration="100"/>
   <frame tileid="568" duration="100"/>
  </animation>
 </tile>
 <tile id="606">
  <animation>
   <frame tileid="606" duration="200"/>
   <frame tileid="646" duration="200"/>
   <frame tileid="686" duration="200"/>
  </animation>
 </tile>
 <tile id="607">
  <animation>
   <frame tileid="607" duration="200"/>
   <frame tileid="647" duration="200"/>
   <frame tileid="687" duration="200"/>
  </animation>
 </tile>
 <tile id="608">
  <animation>
   <frame tileid="608" duration="200"/>
   <frame tileid="648" duration="200"/>
   <frame tileid="688" duration="200"/>
  </animation>
 </tile>
 <tile id="1096" probability="0.05"/>
 <tile id="1097" probability="0.1"/>
 <tile id="1098" probability="0.05"/>
 <tile id="1135" probability="0.1"/>
 <tile id="1136" probability="0.05"/>
 <tile id="1137" probability="0.05"/>
 <tile id="1138" probability="0.05"/>
 <tile id="1216" probability="0.05"/>
 <tile id="1217" probability="0.1"/>
 <tile id="1218" probability="0.05"/>
 <tile id="1255" probability="0.1"/>
 <tile id="1256" probability="0.05"/>
 <tile id="1257" probability="0.05"/>
 <tile id="1258" probability="0.05"/>
 <wangsets>
  <wangset name="Grasslands" type="corner" tile="49">
   <wangcolor name="Elevation" color="#ff0000" tile="-1" probability="1"/>
   <wangcolor name="Grass Edges" color="#00ff00" tile="-1" probability="1"/>
   <wangcolor name="Water Edges" color="#00ffff" tile="-1" probability="1"/>
   <wangcolor name="Path" color="#ff7700" tile="-1" probability="1"/>
   <wangcolor name="Grass Edges 2" color="#00aa00" tile="-1" probability="1"/>
   <wangcolor name="Dirt" color="#ff00d8" tile="-1" probability="1"/>
   <wangcolor name="Cliff" color="#ffff00" tile="-1" probability="1"/>
   <wangtile tileid="41" wangid="0,0,0,1,0,0,0,0"/>
   <wangtile tileid="42" wangid="0,0,0,1,0,1,0,0"/>
   <wangtile tileid="43" wangid="0,0,0,0,0,1,0,0"/>
   <wangtile tileid="45" wangid="0,1,0,0,0,1,0,1"/>
   <wangtile tileid="46" wangid="0,1,0,1,0,0,0,1"/>
   <wangtile tileid="55" wangid="0,2,0,0,0,2,0,2"/>
   <wangtile tileid="56" wangid="0,2,0,0,0,0,0,2"/>
   <wangtile tileid="57" wangid="0,2,0,2,0,0,0,2"/>
   <wangtile tileid="58" wangid="0,0,0,2,0,0,0,0"/>
   <wangtile tileid="59" wangid="0,0,0,0,0,2,0,0"/>
   <wangtile tileid="61" wangid="0,0,0,5,0,0,0,0"/>
   <wangtile tileid="62" wangid="0,0,0,5,0,5,0,0"/>
   <wangtile tileid="63" wangid="0,0,0,0,0,5,0,0"/>
   <wangtile tileid="65" wangid="0,5,0,0,0,5,0,5"/>
   <wangtile tileid="66" wangid="0,5,0,5,0,0,0,5"/>
   <wangtile tileid="81" wangid="0,1,0,1,0,0,0,0"/>
   <wangtile tileid="82" wangid="0,1,0,1,0,1,0,1"/>
   <wangtile tileid="83" wangid="0,0,0,0,0,1,0,1"/>
   <wangtile tileid="85" wangid="0,0,0,1,0,1,0,1"/>
   <wangtile tileid="86" wangid="0,1,0,1,0,1,0,0"/>
   <wangtile tileid="95" wangid="0,0,0,0,0,2,0,2"/>
   <wangtile tileid="96" wangid="0,2,0,2,0,2,0,2"/>
   <wangtile tileid="97" wangid="0,2,0,2,0,0,0,0"/>
   <wangtile tileid="98" wangid="0,2,0,0,0,0,0,0"/>
   <wangtile tileid="99" wangid="0,0,0,0,0,0,0,2"/>
   <wangtile tileid="101" wangid="0,5,0,5,0,0,0,0"/>
   <wangtile tileid="102" wangid="0,5,0,5,0,5,0,5"/>
   <wangtile tileid="103" wangid="0,0,0,0,0,5,0,5"/>
   <wangtile tileid="105" wangid="0,0,0,5,0,5,0,5"/>
   <wangtile tileid="106" wangid="0,5,0,5,0,5,0,0"/>
   <wangtile tileid="121" wangid="0,1,0,0,0,0,0,0"/>
   <wangtile tileid="122" wangid="0,1,0,0,0,0,0,1"/>
   <wangtile tileid="123" wangid="0,0,0,0,0,0,0,1"/>
   <wangtile tileid="135" wangid="0,0,0,2,0,2,0,2"/>
   <wangtile tileid="136" wangid="0,0,0,2,0,2,0,0"/>
   <wangtile tileid="137" wangid="0,2,0,2,0,2,0,0"/>
   <wangtile tileid="141" wangid="0,5,0,0,0,0,0,0"/>
   <wangtile tileid="142" wangid="0,5,0,0,0,0,0,5"/>
   <wangtile tileid="143" wangid="0,0,0,0,0,0,0,5"/>
   <wangtile tileid="201" wangid="0,3,0,0,0,3,0,3"/>
   <wangtile tileid="202" wangid="0,3,0,0,0,0,0,3"/>
   <wangtile tileid="203" wangid="0,3,0,3,0,0,0,3"/>
   <wangtile tileid="241" wangid="0,0,0,0,0,3,0,3"/>
   <wangtile tileid="243" wangid="0,3,0,3,0,0,0,0"/>
   <wangtile tileid="281" wangid="0,0,0,3,0,3,0,3"/>
   <wangtile tileid="282" wangid="0,0,0,3,0,3,0,0"/>
   <wangtile tileid="283" wangid="0,3,0,3,0,3,0,0"/>
   <wangtile tileid="361" wangid="0,0,0,3,0,0,0,0"/>
   <wangtile tileid="362" wangid="0,0,0,0,0,3,0,0"/>
   <wangtile tileid="370" wangid="0,3,0,3,0,3,0,3"/>
   <wangtile tileid="401" wangid="0,3,0,0,0,0,0,0"/>
   <wangtile tileid="402" wangid="0,0,0,0,0,0,0,3"/>
   <wangtile tileid="530" wangid="0,0,0,7,0,0,0,0"/>
   <wangtile tileid="531" wangid="0,0,0,7,0,7,0,0"/>
   <wangtile tileid="532" wangid="0,0,0,0,0,7,0,0"/>
   <wangtile tileid="533" wangid="0,0,0,7,0,0,0,0"/>
   <wangtile tileid="534" wangid="0,0,0,7,0,7,0,0"/>
   <wangtile tileid="535" wangid="0,0,0,0,0,7,0,0"/>
   <wangtile tileid="570" wangid="0,7,0,7,0,0,0,0"/>
   <wangtile tileid="571" wangid="0,7,0,7,0,7,0,7"/>
   <wangtile tileid="572" wangid="0,0,0,0,0,7,0,7"/>
   <wangtile tileid="573" wangid="0,7,0,7,0,0,0,0"/>
   <wangtile tileid="575" wangid="0,0,0,0,0,7,0,7"/>
   <wangtile tileid="610" wangid="0,7,0,0,0,0,0,0"/>
   <wangtile tileid="611" wangid="0,7,0,0,0,0,0,7"/>
   <wangtile tileid="612" wangid="0,0,0,0,0,0,0,7"/>
   <wangtile tileid="613" wangid="0,7,0,0,0,0,0,0"/>
   <wangtile tileid="614" wangid="0,7,0,0,0,0,0,7"/>
   <wangtile tileid="615" wangid="0,0,0,0,0,0,0,7"/>
   <wangtile tileid="761" wangid="0,0,0,4,0,0,0,0"/>
   <wangtile tileid="762" wangid="0,0,0,4,0,4,0,0"/>
   <wangtile tileid="763" wangid="0,0,0,0,0,4,0,0"/>
   <wangtile tileid="765" wangid="0,4,0,0,0,4,0,4"/>
   <wangtile tileid="766" wangid="0,4,0,4,0,0,0,4"/>
   <wangtile tileid="768" wangid="0,0,0,6,0,0,0,0"/>
   <wangtile tileid="769" wangid="0,0,0,6,0,6,0,0"/>
   <wangtile tileid="770" wangid="0,0,0,0,0,6,0,0"/>
   <wangtile tileid="772" wangid="0,6,0,0,0,6,0,6"/>
   <wangtile tileid="773" wangid="0,6,0,6,0,0,0,6"/>
   <wangtile tileid="801" wangid="0,4,0,4,0,0,0,0"/>
   <wangtile tileid="802" wangid="0,4,0,4,0,4,0,4"/>
   <wangtile tileid="803" wangid="0,0,0,0,0,4,0,4"/>
   <wangtile tileid="805" wangid="0,0,0,4,0,4,0,4"/>
   <wangtile tileid="806" wangid="0,4,0,4,0,4,0,0"/>
   <wangtile tileid="808" wangid="0,6,0,6,0,0,0,0"/>
   <wangtile tileid="809" wangid="0,6,0,6,0,6,0,6"/>
   <wangtile tileid="810" wangid="0,0,0,0,0,6,0,6"/>
   <wangtile tileid="812" wangid="0,0,0,6,0,6,0,6"/>
   <wangtile tileid="813" wangid="0,6,0,6,0,6,0,0"/>
   <wangtile tileid="841" wangid="0,4,0,0,0,0,0,0"/>
   <wangtile tileid="842" wangid="0,4,0,0,0,0,0,4"/>
   <wangtile tileid="843" wangid="0,0,0,0,0,0,0,4"/>
   <wangtile tileid="848" wangid="0,6,0,0,0,0,0,0"/>
   <wangtile tileid="849" wangid="0,6,0,0,0,0,0,6"/>
   <wangtile tileid="850" wangid="0,0,0,0,0,0,0,6"/>
  </wangset>
  <wangset name="Cave" type="corner" tile="-1">
   <wangcolor name="Wall" color="#ff0000" tile="-1" probability="1"/>
   <wangcolor name="Ground" color="#00ff00" tile="-1" probability="1"/>
   <wangtile tileid="1081" wangid="0,0,0,1,0,0,0,0"/>
   <wangtile tileid="1082" wangid="0,0,0,1,0,1,0,0"/>
   <wangtile tileid="1083" wangid="0,0,0,0,0,1,0,0"/>
   <wangtile tileid="1085" wangid="0,1,0,0,0,1,0,1"/>
   <wangtile tileid="1086" wangid="0,1,0,1,0,0,0,1"/>
   <wangtile tileid="1088" wangid="0,0,0,2,0,0,0,0"/>
   <wangtile tileid="1089" wangid="0,0,0,2,0,2,0,0"/>
   <wangtile tileid="1090" wangid="0,0,0,0,0,2,0,0"/>
   <wangtile tileid="1092" wangid="0,2,0,0,0,2,0,2"/>
   <wangtile tileid="1093" wangid="0,2,0,2,0,0,0,2"/>
   <wangtile tileid="1121" wangid="0,1,0,1,0,0,0,0"/>
   <wangtile tileid="1122" wangid="0,1,0,1,0,1,0,1"/>
   <wangtile tileid="1123" wangid="0,0,0,0,0,1,0,1"/>
   <wangtile tileid="1125" wangid="0,0,0,1,0,1,0,1"/>
   <wangtile tileid="1126" wangid="0,1,0,1,0,1,0,0"/>
   <wangtile tileid="1128" wangid="0,2,0,2,0,0,0,0"/>
   <wangtile tileid="1129" wangid="0,2,0,2,0,2,0,2"/>
   <wangtile tileid="1130" wangid="0,0,0,0,0,2,0,2"/>
   <wangtile tileid="1132" wangid="0,0,0,2,0,2,0,2"/>
   <wangtile tileid="1133" wangid="0,2,0,2,0,2,0,0"/>
   <wangtile tileid="1161" wangid="0,1,0,0,0,0,0,0"/>
   <wangtile tileid="1162" wangid="0,1,0,0,0,0,0,1"/>
   <wangtile tileid="1163" wangid="0,0,0,0,0,0,0,1"/>
   <wangtile tileid="1168" wangid="0,2,0,0,0,0,0,0"/>
   <wangtile tileid="1169" wangid="0,2,0,0,0,0,0,2"/>
   <wangtile tileid="1170" wangid="0,0,0,0,0,0,0,2"/>
  </wangset>
 </wangsets>
</tileset>
