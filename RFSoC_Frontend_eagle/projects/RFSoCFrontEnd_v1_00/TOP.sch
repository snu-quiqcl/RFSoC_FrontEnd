<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_B_L" urn="urn:adsk.eagle:symbol:13883/1" library_version="1">
<frame x1="0" y1="0" x2="431.8" y2="279.4" columns="9" rows="6" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_B_L" urn="urn:adsk.eagle:component:13938/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt; B Size , 11 x 17 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_B_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="325.12" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ERJ2RKD1004X">
<description>&lt;b&gt;ERJ-2R(0402)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.512" y="0" dx="0.5" dy="0.475" layer="1" rot="R90"/>
<smd name="2" x="0.512" y="0" dx="0.5" dy="0.475" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="-0.95" y1="0.025" x2="-0.95" y2="0.025" width="0.05" layer="21"/>
<wire x1="-0.95" y1="0.025" x2="-0.95" y2="-0.025" width="0.05" layer="21" curve="180"/>
<wire x1="-0.95" y1="-0.025" x2="-0.95" y2="-0.025" width="0.05" layer="21"/>
<wire x1="-0.95" y1="-0.025" x2="-0.95" y2="0.025" width="0.05" layer="21" curve="180"/>
</package>
<package name="CAPC1005X55N">
<description>&lt;b&gt;MK105 (0402)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.46" y="0" dx="0.62" dy="0.6" layer="1" rot="R90"/>
<smd name="2" x="0.46" y="0" dx="0.62" dy="0.6" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.91" y1="0.46" x2="0.91" y2="0.46" width="0.05" layer="51"/>
<wire x1="0.91" y1="0.46" x2="0.91" y2="-0.46" width="0.05" layer="51"/>
<wire x1="0.91" y1="-0.46" x2="-0.91" y2="-0.46" width="0.05" layer="51"/>
<wire x1="-0.91" y1="-0.46" x2="-0.91" y2="0.46" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
<package name="TCM233X">
<description>&lt;b&gt;DB1627_2022&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.27" y="1.59" dx="1.65" dy="0.76" layer="1" rot="R90"/>
<smd name="2" x="0" y="1.59" dx="1.65" dy="0.76" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="1.59" dx="1.65" dy="0.76" layer="1" rot="R90"/>
<smd name="4" x="1.27" y="-1.59" dx="1.65" dy="0.76" layer="1" rot="R90"/>
<smd name="5" x="0" y="-1.59" dx="1.65" dy="0.76" layer="1" rot="R90"/>
<smd name="6" x="-1.27" y="-1.59" dx="1.65" dy="0.76" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.905" y1="1.905" x2="1.905" y2="1.905" width="0.1" layer="51"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="-1.905" width="0.1" layer="51"/>
<wire x1="1.905" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1" layer="51"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="1.905" width="0.1" layer="51"/>
<wire x1="-2.905" y1="3.415" x2="2.905" y2="3.415" width="0.1" layer="51"/>
<wire x1="2.905" y1="3.415" x2="2.905" y2="-3.415" width="0.1" layer="51"/>
<wire x1="2.905" y1="-3.415" x2="-2.905" y2="-3.415" width="0.1" layer="51"/>
<wire x1="-2.905" y1="-3.415" x2="-2.905" y2="3.415" width="0.1" layer="51"/>
<wire x1="-1.905" y1="0.4" x2="-1.905" y2="-0.4" width="0.2" layer="21"/>
<wire x1="1.905" y1="0.4" x2="1.905" y2="-0.4" width="0.2" layer="21"/>
<wire x1="-1.27" y1="3" x2="-1.27" y2="3" width="0.1" layer="21"/>
<wire x1="-1.27" y1="3" x2="-1.27" y2="2.9" width="0.1" layer="21" curve="180"/>
<wire x1="-1.27" y1="2.9" x2="-1.27" y2="2.9" width="0.1" layer="21"/>
<wire x1="-1.27" y1="2.9" x2="-1.27" y2="3" width="0.1" layer="21" curve="180"/>
</package>
<package name="LFCG1000">
<description>&lt;b&gt;LFCG-1000+-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.65" y="-0.9" dx="1" dy="0.35" layer="1" rot="R90"/>
<smd name="2" x="0" y="-0.9" dx="1" dy="0.35" layer="1" rot="R90"/>
<smd name="3" x="0.65" y="-0.9" dx="1" dy="0.35" layer="1" rot="R90"/>
<smd name="4" x="1.2" y="0" dx="1" dy="0.35" layer="1"/>
<smd name="5" x="0.65" y="0.9" dx="1" dy="0.35" layer="1" rot="R90"/>
<smd name="6" x="0" y="0.9" dx="1" dy="0.35" layer="1" rot="R90"/>
<smd name="7" x="-0.65" y="0.9" dx="1" dy="0.35" layer="1" rot="R90"/>
<smd name="8" x="-1.2" y="0" dx="1" dy="0.35" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1" y1="-0.625" x2="1" y2="-0.625" width="0.2" layer="51"/>
<wire x1="1" y1="-0.625" x2="1" y2="0.625" width="0.2" layer="51"/>
<wire x1="1" y1="0.625" x2="-1" y2="0.625" width="0.2" layer="51"/>
<wire x1="-1" y1="0.625" x2="-1" y2="-0.625" width="0.2" layer="51"/>
<wire x1="-2.2" y1="-1.9" x2="2.2" y2="-1.9" width="0.1" layer="51"/>
<wire x1="2.2" y1="-1.9" x2="2.2" y2="1.9" width="0.1" layer="51"/>
<wire x1="2.2" y1="1.9" x2="-2.2" y2="1.9" width="0.1" layer="51"/>
<wire x1="-2.2" y1="1.9" x2="-2.2" y2="-1.9" width="0.1" layer="51"/>
<wire x1="-1.3" y1="-1.3" x2="-1.3" y2="-1.3" width="0.2" layer="21"/>
<wire x1="-1.3" y1="-1.3" x2="-1.3" y2="-1.1" width="0.2" layer="21" curve="180"/>
<wire x1="-1.3" y1="-1.1" x2="-1.3" y2="-1.1" width="0.2" layer="21"/>
<wire x1="-1.3" y1="-1.1" x2="-1.3" y2="-1.3" width="0.2" layer="21" curve="180"/>
</package>
<package name="ERA3SM">
<description>&lt;b&gt;ERA-3SM+-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="0" y="-2.07" dx="1.83" dy="1.02" layer="1" rot="R90"/>
<smd name="2" x="2.07" y="0" dx="1.83" dy="1.02" layer="1"/>
<smd name="3" x="0" y="2.07" dx="1.83" dy="1.02" layer="1" rot="R90"/>
<smd name="4" x="-2.07" y="0" dx="1.83" dy="1.02" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.985" y1="3.985" x2="3.985" y2="3.985" width="0.1" layer="51"/>
<wire x1="3.985" y1="3.985" x2="3.985" y2="-3.985" width="0.1" layer="51"/>
<wire x1="3.985" y1="-3.985" x2="-3.985" y2="-3.985" width="0.1" layer="51"/>
<wire x1="-3.985" y1="-3.985" x2="-3.985" y2="3.985" width="0.1" layer="51"/>
<wire x1="-1.08" y1="0" x2="-1.08" y2="0" width="0.2" layer="51"/>
<wire x1="-1.08" y1="0" x2="1.08" y2="0" width="0.2" layer="51" curve="180"/>
<wire x1="1.08" y1="0" x2="1.08" y2="0" width="0.2" layer="51"/>
<wire x1="1.08" y1="0" x2="-1.08" y2="0" width="0.2" layer="51" curve="180"/>
<wire x1="-0.1" y1="-3.4" x2="-0.1" y2="-3.4" width="0.2" layer="21"/>
<wire x1="-0.1" y1="-3.4" x2="0.1" y2="-3.4" width="0.2" layer="21" curve="180"/>
<wire x1="0.1" y1="-3.4" x2="0.1" y2="-3.4" width="0.2" layer="21"/>
<wire x1="0.1" y1="-3.4" x2="-0.1" y2="-3.4" width="0.2" layer="21" curve="180"/>
</package>
<package name="TCCH80">
<description>&lt;b&gt;TCCH-80+-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.27" y="1.395" dx="1.27" dy="0.76" layer="1" rot="R90"/>
<smd name="2" x="1.27" y="1.395" dx="1.27" dy="0.76" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="-1.395" dx="1.27" dy="0.76" layer="1" rot="R90"/>
<smd name="4" x="-1.27" y="-1.395" dx="1.27" dy="0.76" layer="1" rot="R90"/>
<text x="-0.273" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.273" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.905" y1="1.905" x2="1.905" y2="1.905" width="0.2" layer="51"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="-1.905" width="0.2" layer="51"/>
<wire x1="1.905" y1="-1.905" x2="-1.905" y2="-1.905" width="0.2" layer="51"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="1.905" width="0.2" layer="51"/>
<wire x1="-3.45" y1="3.03" x2="2.905" y2="3.03" width="0.1" layer="51"/>
<wire x1="2.905" y1="3.03" x2="2.905" y2="-3.03" width="0.1" layer="51"/>
<wire x1="2.905" y1="-3.03" x2="-3.45" y2="-3.03" width="0.1" layer="51"/>
<wire x1="-3.45" y1="-3.03" x2="-3.45" y2="3.03" width="0.1" layer="51"/>
<wire x1="-0.8" y1="1.905" x2="0.8" y2="1.905" width="0.1" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="-1.905" width="0.1" layer="21"/>
<wire x1="-0.6" y1="-1.905" x2="0.8" y2="-1.905" width="0.1" layer="21"/>
<wire x1="1.905" y1="1.8" x2="1.905" y2="-1.8" width="0.1" layer="21"/>
<wire x1="-2.4" y1="1.3" x2="-2.4" y2="1.3" width="0.3" layer="21"/>
<wire x1="-2.4" y1="1.3" x2="-2.4" y2="1.4" width="0.3" layer="21" curve="180"/>
<wire x1="-2.4" y1="1.4" x2="-2.4" y2="1.4" width="0.3" layer="21"/>
<wire x1="-2.4" y1="1.4" x2="-2.4" y2="1.3" width="0.3" layer="21" curve="180"/>
</package>
<package name="CAPC1005X60N">
<description>&lt;b&gt;0402/1005&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.46" y="0" dx="0.64" dy="0.62" layer="1" rot="R90"/>
<smd name="2" x="0.46" y="0" dx="0.64" dy="0.62" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.92" y1="0.47" x2="0.92" y2="0.47" width="0.05" layer="51"/>
<wire x1="0.92" y1="0.47" x2="0.92" y2="-0.47" width="0.05" layer="51"/>
<wire x1="0.92" y1="-0.47" x2="-0.92" y2="-0.47" width="0.05" layer="51"/>
<wire x1="-0.92" y1="-0.47" x2="-0.92" y2="0.47" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
<package name="QFN65P400X400X100-17N">
<description>&lt;b&gt;16 qfen+&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.95" y="0.975" dx="0.9" dy="0.4" layer="1"/>
<smd name="2" x="-1.95" y="0.325" dx="0.9" dy="0.4" layer="1"/>
<smd name="3" x="-1.95" y="-0.325" dx="0.9" dy="0.4" layer="1"/>
<smd name="4" x="-1.95" y="-0.975" dx="0.9" dy="0.4" layer="1"/>
<smd name="5" x="-0.975" y="-1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="6" x="-0.325" y="-1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="7" x="0.325" y="-1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="8" x="0.975" y="-1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="9" x="1.95" y="-0.975" dx="0.9" dy="0.4" layer="1"/>
<smd name="10" x="1.95" y="-0.325" dx="0.9" dy="0.4" layer="1"/>
<smd name="11" x="1.95" y="0.325" dx="0.9" dy="0.4" layer="1"/>
<smd name="12" x="1.95" y="0.975" dx="0.9" dy="0.4" layer="1"/>
<smd name="13" x="0.975" y="1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="14" x="0.325" y="1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="15" x="-0.325" y="1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="16" x="-0.975" y="1.95" dx="0.9" dy="0.4" layer="1" rot="R90"/>
<smd name="17" x="0" y="0" dx="2.55" dy="2.55" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.625" y1="2.625" x2="2.625" y2="2.625" width="0.05" layer="51"/>
<wire x1="2.625" y1="2.625" x2="2.625" y2="-2.625" width="0.05" layer="51"/>
<wire x1="2.625" y1="-2.625" x2="-2.625" y2="-2.625" width="0.05" layer="51"/>
<wire x1="-2.625" y1="-2.625" x2="-2.625" y2="2.625" width="0.05" layer="51"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.1" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.1" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.1" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.1" layer="51"/>
<wire x1="-2" y1="1.35" x2="-1.35" y2="2" width="0.1" layer="51"/>
<circle x="-2.4005" y="1.95" radius="0.1625" width="0.325" layer="25"/>
</package>
<package name="731000114">
<description>&lt;b&gt;73100-0114-3&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.59" diameter="2.385"/>
<pad name="2" x="-2.54" y="-2.54" drill="1.59" diameter="2.385"/>
<pad name="3" x="-2.54" y="2.54" drill="1.59" diameter="2.385"/>
<pad name="4" x="2.54" y="2.54" drill="1.59" diameter="2.385"/>
<pad name="5" x="2.54" y="-2.54" drill="1.59" diameter="2.385"/>
<text x="-3.946" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-3.946" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.175" y1="3.175" x2="3.175" y2="3.175" width="0.2" layer="51"/>
<wire x1="3.175" y1="3.175" x2="3.175" y2="-3.175" width="0.2" layer="51"/>
<wire x1="3.175" y1="-3.175" x2="-3.175" y2="-3.175" width="0.2" layer="51"/>
<wire x1="-3.175" y1="-3.175" x2="-3.175" y2="3.175" width="0.2" layer="51"/>
<wire x1="-12.625" y1="4.732" x2="4.732" y2="4.732" width="0.1" layer="51"/>
<wire x1="4.732" y1="4.732" x2="4.732" y2="-4.732" width="0.1" layer="51"/>
<wire x1="4.732" y1="-4.732" x2="-12.625" y2="-4.732" width="0.1" layer="51"/>
<wire x1="-12.625" y1="-4.732" x2="-12.625" y2="4.732" width="0.1" layer="51"/>
<wire x1="-1" y1="3.175" x2="1" y2="3.175" width="0.1" layer="21"/>
<wire x1="-3.175" y1="-3.175" x2="-11.625" y2="-3.175" width="0.2" layer="51"/>
<wire x1="-11.625" y1="-3.175" x2="-11.625" y2="3.175" width="0.2" layer="51"/>
<wire x1="-11.625" y1="3.175" x2="-3.175" y2="3.175" width="0.2" layer="51"/>
<wire x1="-11.625" y1="3.2" x2="-11.625" y2="-3" width="0.1" layer="21"/>
<wire x1="-3.175" y1="-1" x2="-3.175" y2="0.8" width="0.1" layer="21"/>
<wire x1="-1" y1="-3.175" x2="1" y2="-3.175" width="0.1" layer="21"/>
<wire x1="3.175" y1="-1.2" x2="3.175" y2="0.6" width="0.1" layer="21"/>
<wire x1="-4" y1="3.175" x2="-11.6" y2="3.175" width="0.1" layer="21"/>
<wire x1="-11.625" y1="-3" x2="-11.625" y2="-3.175" width="0.1" layer="21"/>
<wire x1="-11.625" y1="-3.175" x2="-4" y2="-3.175" width="0.1" layer="21"/>
</package>
<package name="SMS409F">
<description>&lt;b&gt;SMS-409F-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-14.58" y="7.07" dx="5.14" dy="0.99" layer="1" rot="R90"/>
<smd name="2" x="-14.58" y="0" dx="3" dy="0.99" layer="1" rot="R90"/>
<smd name="3" x="-14.58" y="-7.07" dx="5.14" dy="0.99" layer="1" rot="R90"/>
<smd name="4" x="-12.29" y="-9.145" dx="3.59" dy="0.99" layer="1"/>
<smd name="5" x="-5.995" y="-9.145" dx="3" dy="0.99" layer="1"/>
<smd name="6" x="0" y="-9.145" dx="2.99" dy="0.99" layer="1"/>
<smd name="7" x="5.995" y="-9.145" dx="3" dy="0.99" layer="1"/>
<smd name="8" x="12.29" y="-9.145" dx="3.59" dy="0.99" layer="1"/>
<smd name="9" x="14.58" y="-7.07" dx="5.14" dy="0.99" layer="1" rot="R90"/>
<smd name="10" x="14.58" y="0" dx="3" dy="0.99" layer="1" rot="R90"/>
<smd name="11" x="14.58" y="7.07" dx="5.14" dy="0.99" layer="1" rot="R90"/>
<smd name="12" x="12.29" y="9.145" dx="3.59" dy="0.99" layer="1"/>
<smd name="13" x="5.995" y="9.145" dx="3" dy="0.99" layer="1"/>
<smd name="14" x="0" y="9.145" dx="2.99" dy="0.99" layer="1"/>
<smd name="15" x="-5.995" y="9.145" dx="3" dy="0.99" layer="1"/>
<smd name="16" x="-12.29" y="9.145" dx="3.59" dy="0.99" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-14.96" y1="9.525" x2="14.96" y2="9.525" width="0.1" layer="51"/>
<wire x1="14.96" y1="9.525" x2="14.96" y2="-9.525" width="0.1" layer="51"/>
<wire x1="14.96" y1="-9.525" x2="-14.96" y2="-9.525" width="0.1" layer="51"/>
<wire x1="-14.96" y1="-9.525" x2="-14.96" y2="9.525" width="0.1" layer="51"/>
<wire x1="-16.075" y1="10.64" x2="16.075" y2="10.64" width="0.1" layer="51"/>
<wire x1="16.075" y1="10.64" x2="16.075" y2="-10.64" width="0.1" layer="51"/>
<wire x1="16.075" y1="-10.64" x2="-16.075" y2="-10.64" width="0.1" layer="51"/>
<wire x1="-16.075" y1="-10.64" x2="-16.075" y2="10.64" width="0.1" layer="51"/>
<wire x1="-15.6" y1="7.2" x2="-15.6" y2="7.2" width="0.1" layer="21"/>
<wire x1="-15.6" y1="7.2" x2="-15.6" y2="7.1" width="0.1" layer="21" curve="180"/>
<wire x1="-15.6" y1="7.1" x2="-15.6" y2="7.1" width="0.1" layer="21"/>
<wire x1="-15.6" y1="7.1" x2="-15.6" y2="7.2" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="ERJ2RKF17R4X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="ERJ2RKF5900X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="TMK105BJ104KV-F">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="TCM2-33X+">
<wire x1="5.08" y1="2.54" x2="43.18" y2="2.54" width="0.254" layer="94"/>
<wire x1="43.18" y1="-7.62" x2="43.18" y2="2.54" width="0.254" layer="94"/>
<wire x1="43.18" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="44.45" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="44.45" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="NOT_USED" x="48.26" y="0" length="middle" rot="R180"/>
<pin name="PRIMARY/GND" x="48.26" y="-2.54" length="middle" rot="R180"/>
<pin name="SECONDARY" x="48.26" y="-5.08" length="middle" rot="R180"/>
<pin name="SECONDARY_DOT" x="0" y="-5.08" length="middle"/>
<pin name="GND" x="0" y="-2.54" length="middle"/>
<pin name="PRIMARY_DOT" x="0" y="0" length="middle"/>
</symbol>
<symbol name="LFCG-1000+">
<wire x1="5.08" y1="12.7" x2="30.48" y2="12.7" width="0.254" layer="94"/>
<wire x1="30.48" y1="-12.7" x2="30.48" y2="12.7" width="0.254" layer="94"/>
<wire x1="30.48" y1="-12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<text x="31.75" y="17.78" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="31.75" y="15.24" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="GND_1" x="15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="GND_2" x="17.78" y="-17.78" length="middle" rot="R90"/>
<pin name="GND_3" x="20.32" y="-17.78" length="middle" rot="R90"/>
<pin name="OUTPUT" x="35.56" y="0" length="middle" rot="R180"/>
<pin name="GND_4" x="20.32" y="17.78" length="middle" rot="R270"/>
<pin name="GND_5" x="17.78" y="17.78" length="middle" rot="R270"/>
<pin name="GND_6" x="15.24" y="17.78" length="middle" rot="R270"/>
<pin name="INPUT" x="0" y="0" length="middle"/>
</symbol>
<symbol name="ERA-3SM+">
<wire x1="5.08" y1="25.4" x2="25.4" y2="25.4" width="0.254" layer="94"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="25.4" width="0.254" layer="94"/>
<wire x1="25.4" y1="-12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="25.4" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<text x="26.67" y="30.48" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="26.67" y="27.94" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="RF_IN" x="15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="GND_1" x="30.48" y="0" length="middle" rot="R180"/>
<pin name="RF-OUT_AND_DC-IN" x="15.24" y="30.48" length="middle" rot="R270"/>
<pin name="GND_2" x="0" y="0" length="middle"/>
</symbol>
<symbol name="TCCH-80+">
<wire x1="5.08" y1="2.54" x2="38.1" y2="2.54" width="0.254" layer="94"/>
<wire x1="38.1" y1="-5.08" x2="38.1" y2="2.54" width="0.254" layer="94"/>
<wire x1="38.1" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="39.37" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="39.37" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="RF-IN_&amp;_DC" x="0" y="0" length="middle"/>
<pin name="NOT_USED_1" x="43.18" y="0" length="middle" rot="R180"/>
<pin name="DC" x="43.18" y="-2.54" length="middle" rot="R180"/>
<pin name="NOT_USED_2" x="0" y="-2.54" length="middle"/>
</symbol>
<symbol name="ERJ2RKF1070X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="TMK105AC6105KV-F">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="HMC349ALP4CETR">
<wire x1="5.08" y1="12.7" x2="25.4" y2="12.7" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="25.4" y2="12.7" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<text x="26.67" y="17.78" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="26.67" y="15.24" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="VDD" x="0" y="0" length="middle"/>
<pin name="VCTL" x="0" y="-2.54" length="middle"/>
<pin name="RFC" x="0" y="-5.08" length="middle"/>
<pin name="N/C_1" x="0" y="-7.62" length="middle"/>
<pin name="EN" x="10.16" y="-25.4" length="middle" rot="R90"/>
<pin name="N/C_2" x="12.7" y="-25.4" length="middle" rot="R90"/>
<pin name="N/C_3" x="15.24" y="-25.4" length="middle" rot="R90"/>
<pin name="N/C_4" x="17.78" y="-25.4" length="middle" rot="R90"/>
<pin name="RF2" x="30.48" y="0" length="middle" rot="R180"/>
<pin name="GND_2" x="30.48" y="-2.54" length="middle" rot="R180"/>
<pin name="GND_1" x="30.48" y="-5.08" length="middle" rot="R180"/>
<pin name="RF1" x="30.48" y="-7.62" length="middle" rot="R180"/>
<pin name="EP" x="10.16" y="17.78" length="middle" rot="R270"/>
<pin name="N/C_8" x="12.7" y="17.78" length="middle" rot="R270"/>
<pin name="N/C_7" x="15.24" y="17.78" length="middle" rot="R270"/>
<pin name="N/C_6" x="17.78" y="17.78" length="middle" rot="R270"/>
<pin name="N/C_5" x="20.32" y="17.78" length="middle" rot="R270"/>
</symbol>
<symbol name="ERJ-2RKF1001X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="ERJ-2RKF1000X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="73100-0114">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="0" y="-5.08" length="middle"/>
<pin name="4" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="5" x="20.32" y="-2.54" length="middle" rot="R180"/>
</symbol>
<symbol name="SMS-409F">
<wire x1="5.08" y1="7.62" x2="20.32" y2="7.62" width="0.254" layer="94"/>
<wire x1="20.32" y1="-12.7" x2="20.32" y2="7.62" width="0.254" layer="94"/>
<wire x1="20.32" y1="-12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<text x="21.59" y="12.7" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="10.16" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="0" y="-5.08" length="middle"/>
<pin name="4" x="7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="5" x="10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="6" x="12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="7" x="15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="8" x="17.78" y="-17.78" length="middle" rot="R90"/>
<pin name="9" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="10" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="11" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="12" x="17.78" y="12.7" length="middle" rot="R270"/>
<pin name="13" x="15.24" y="12.7" length="middle" rot="R270"/>
<pin name="14" x="12.7" y="12.7" length="middle" rot="R270"/>
<pin name="15" x="10.16" y="12.7" length="middle" rot="R270"/>
<pin name="16" x="7.62" y="12.7" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ERJ2RKF17R4X" prefix="R">
<description>&lt;b&gt;PANASONIC - ERJ2RKF17R4X - SMD Chip Resistor, 0402 [1005 Metric], 17.4 ohm, ERJ2R Series, 50 V, Thick Film, 100 mW&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://docs-europe.electrocomponents.com/webdocs/13ba/0900766b813ba21b.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ2RKF17R4X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJ2RKD1004X">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="PANASONIC - ERJ2RKF17R4X - SMD Chip Resistor, 0402 [1005 Metric], 17.4 ohm, ERJ2R Series, 50 V, Thick Film, 100 mW" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ2RKF17R4X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ERJ2RKF5900X" prefix="R">
<description>&lt;b&gt;Panasonic ERJ2RK Series Precision Thick Film Surface Mount Resistor 0402 Case 590 +/-1% 0.1W +/-100ppm/C&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://docs-europe.electrocomponents.com/webdocs/13ba/0900766b813ba21b.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ2RKF5900X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJ2RKD1004X">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Panasonic ERJ2RK Series Precision Thick Film Surface Mount Resistor 0402 Case 590 +/-1% 0.1W +/-100ppm/C" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ2RKF5900X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TMK105BJ104KV-F" prefix="C">
<description>&lt;b&gt;Taiyo Yuden 0402 (1005M) 100nF Multilayer Ceramic Capacitor MLCC 25V dc +/-10% SMD TMK105BJ104KV-F&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://ds.yuden.co.jp/TYCOMPAS/ut/download?pn=LMK063BBJ474MPLF&amp;fileType=CA"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TMK105BJ104KV-F" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1005X55N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Taiyo Yuden 0402 (1005M) 100nF Multilayer Ceramic Capacitor MLCC 25V dc +/-10% SMD TMK105BJ104KV-F" constant="no"/>
<attribute name="HEIGHT" value="0.55mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TAIYO YUDEN" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TMK105BJ104KV-F" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="963-TMK105BJ104KV-F" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TAIYO-YUDEN/TMK105BJ104KV-F?qs=PzICbMaShUcuRhf9Ji%2F5mA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TCM2-33X+" prefix="T">
<description>&lt;b&gt;Audio Transformers / Signal Transformers TC XFMR / SURF MT / HAT RoHS&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.minicircuits.com/pdfs/TCM2-33X .pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TCM2-33X+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TCM233X">
<connects>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="NOT_USED" pad="1"/>
<connect gate="G$1" pin="PRIMARY/GND" pad="2"/>
<connect gate="G$1" pin="PRIMARY_DOT" pad="6"/>
<connect gate="G$1" pin="SECONDARY" pad="3"/>
<connect gate="G$1" pin="SECONDARY_DOT" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Audio Transformers / Signal Transformers TC XFMR / SURF MT / HAT RoHS" constant="no"/>
<attribute name="HEIGHT" value="4.06mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Mini-Circuits" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TCM2-33X+" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="139-TCM2-33X" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Mini-Circuits/TCM2-33X%2b?qs=xZ%2FP%252Ba9zWqaG1YGshnyhGQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LFCG-1000+" prefix="FL">
<description>&lt;b&gt;LTCC Low Pass Filter, DC - 1000 MHz, 50&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="dlshin@tescomwireless.com"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LFCG-1000+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LFCG1000">
<connects>
<connect gate="G$1" pin="GND_1" pad="1"/>
<connect gate="G$1" pin="GND_2" pad="2"/>
<connect gate="G$1" pin="GND_3" pad="3"/>
<connect gate="G$1" pin="GND_4" pad="5"/>
<connect gate="G$1" pin="GND_5" pad="6"/>
<connect gate="G$1" pin="GND_6" pad="7"/>
<connect gate="G$1" pin="INPUT" pad="8"/>
<connect gate="G$1" pin="OUTPUT" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="LTCC Low Pass Filter, DC - 1000 MHz, 50" constant="no"/>
<attribute name="HEIGHT" value="0.95mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Mini-Circuits" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LFCG-1000+" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="139-LFCG-1000" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Mini-Circuits/LFCG-1000%2b?qs=xZ%2FP%252Ba9zWqa9%2FBD5JEjVhQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ERA-3SM+" prefix="IC">
<description>&lt;b&gt;Low Current MMIC Amplifier, DC to 3 GHz&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.minicircuits.com/WebStore/dashboard.html?model=ERA-3SM+"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERA-3SM+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERA3SM">
<connects>
<connect gate="G$1" pin="GND_1" pad="2"/>
<connect gate="G$1" pin="GND_2" pad="4"/>
<connect gate="G$1" pin="RF-OUT_AND_DC-IN" pad="3"/>
<connect gate="G$1" pin="RF_IN" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Low Current MMIC Amplifier, DC to 3 GHz" constant="no"/>
<attribute name="HEIGHT" value="1.52mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Mini-Circuits" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERA-3SM+" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="139-ERA-3SM" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Mini-Circuits/ERA-3SM%2b?qs=xZ%2FP%252Ba9zWqY4QiJxdjLZgw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TCCH-80+" prefix="U">
<description>&lt;b&gt;RF Choke&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.minicircuits.com/pdfs/TCCH-80 .pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TCCH-80+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TCCH80">
<connects>
<connect gate="G$1" pin="DC" pad="3"/>
<connect gate="G$1" pin="NOT_USED_1" pad="2"/>
<connect gate="G$1" pin="NOT_USED_2" pad="4"/>
<connect gate="G$1" pin="RF-IN_&amp;_DC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="RF Choke" constant="no"/>
<attribute name="HEIGHT" value="3.81mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Mini-Circuits" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TCCH-80+" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="139-TCCH-80" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Mini-Circuits/TCCH-80%2b?qs=xZ%2FP%252Ba9zWqbIZgt27nGgHg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ERJ2RKF1070X" prefix="R">
<description>&lt;b&gt;Panasonic ERJ2RK Series Precision Thick Film Surface Mount Resistor 0402 Case 107 +/-1% 0.1W +/-100ppm/C&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://docs-europe.electrocomponents.com/webdocs/13ba/0900766b813ba21b.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ2RKF1070X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJ2RKD1004X">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Panasonic ERJ2RK Series Precision Thick Film Surface Mount Resistor 0402 Case 107 +/-1% 0.1W +/-100ppm/C" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ2RKF1070X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TMK105AC6105KV-F" prefix="C">
<description>&lt;b&gt;0402 (1005M) 1uF MLCC 25V dc +/-10% SMD TMK105AC6105KV-F&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/2/TMK105AC6105KV-F.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TMK105AC6105KV-F" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="0402 (1005M) 1uF MLCC 25V dc +/-10% SMD TMK105AC6105KV-F" constant="no"/>
<attribute name="HEIGHT" value="0.6mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TAIYO YUDEN" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TMK105AC6105KV-F" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="963-TMK105AC6105KV-F" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Taiyo-Yuden/TMK105AC6105KV-F?qs=VWNNG7jHlrK4QAsTUyZliw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HMC349ALP4CETR" prefix="IC">
<description>&lt;b&gt;RF Switch ICs DC-4 GHZ Hi Isolation Switch&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/HMC349ALP4CETR.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="HMC349ALP4CETR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN65P400X400X100-17N">
<connects>
<connect gate="G$1" pin="EN" pad="5"/>
<connect gate="G$1" pin="EP" pad="17"/>
<connect gate="G$1" pin="GND_1" pad="10"/>
<connect gate="G$1" pin="GND_2" pad="11"/>
<connect gate="G$1" pin="N/C_1" pad="4"/>
<connect gate="G$1" pin="N/C_2" pad="6"/>
<connect gate="G$1" pin="N/C_3" pad="7"/>
<connect gate="G$1" pin="N/C_4" pad="8"/>
<connect gate="G$1" pin="N/C_5" pad="13"/>
<connect gate="G$1" pin="N/C_6" pad="14"/>
<connect gate="G$1" pin="N/C_7" pad="15"/>
<connect gate="G$1" pin="N/C_8" pad="16"/>
<connect gate="G$1" pin="RF1" pad="9"/>
<connect gate="G$1" pin="RF2" pad="12"/>
<connect gate="G$1" pin="RFC" pad="3"/>
<connect gate="G$1" pin="VCTL" pad="2"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="HMC349ALP4CETR" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/hmc349alp4cetr/analog-devices?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="RF Switch ICs DC-4 GHZ Hi Isolation Switch" constant="no"/>
<attribute name="HEIGHT" value="1mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Analog Devices" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="HMC349ALP4CETR" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="584-HMC349ALP4CETR" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Analog-Devices/HMC349ALP4CETR?qs=pceeu5JH%2FH95%252B5rl%2FahpoQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ERJ-2RKF1001X" prefix="R">
<description>&lt;b&gt;Thick Film Resistors - SMD 0402 1Kohms 1% AEC-Q200&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C86.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ-2RKF1001X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJ2RKD1004X">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="ERJ-2RKF1001X" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/erj-2rkf1001x/panasonic?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 0402 1Kohms 1% AEC-Q200" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ-2RKF1001X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-ERJ-2RKF1001X" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Panasonic/ERJ-2RKF1001X?qs=H7k1u0Mp9JRRg22R5LYj9Q%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ERJ-2RKF1000X" prefix="R">
<description>&lt;b&gt;Precision Thick Film Chip Resistor, 0402, 0.063W&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C86.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ-2RKF1000X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJ2RKD1004X">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="ERJ-2RKF1000X" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/erj-2rkf1000x/panasonic?region=europe" constant="no"/>
<attribute name="DESCRIPTION" value="Precision Thick Film Chip Resistor, 0402, 0.063W" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ-2RKF1000X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-ERJ-2RKF1000X" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Panasonic/ERJ-2RKF1000X?qs=1iN9QGIZ5R%2Fx4uM9UolshQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="73100-0114" prefix="J">
<description>&lt;b&gt;RF Connectors / Coaxial Connectors RA JACK PCB&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.molex.com/pdm_docs/sd/731000114_sd.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="73100-0114" x="0" y="0"/>
</gates>
<devices>
<device name="" package="731000114">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="73100-0114" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/73100-0114/molex?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="RF Connectors / Coaxial Connectors RA JACK PCB" constant="no"/>
<attribute name="HEIGHT" value="9.57mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Molex" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="73100-0114" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="538-73100-0114" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Molex/73100-0114?qs=ohtcwxb5zIvxHEM9IPQ5cQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SMS-409F" prefix="H">
<description>&lt;b&gt;EMI Gaskets, Sheets, Absorbers &amp; Shielding .728 x 1.156 x .276 SHIELD FRAME&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://leadertechinc.com/wp-content/uploads/2016/04/SMS-409-REV-A.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="SMS-409F" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMS409F">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="EMI Gaskets, Sheets, Absorbers &amp; Shielding .728 x 1.156 x .276 SHIELD FRAME" constant="no"/>
<attribute name="HEIGHT" value="7.1374mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Leader Tech Inc." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="SMS-409F" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="861-SMS-409F" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/LeaderTech/SMS-409F?qs=Em4Ro3wiPJgc%2FfAAERmXkQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+07V" urn="urn:adsk.eagle:symbol:27025/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+7V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+05V" urn="urn:adsk.eagle:symbol:26987/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+7V" urn="urn:adsk.eagle:component:27072/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+07V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:27032/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="NC_MARKER">
<packages>
</packages>
<symbols>
<symbol name="NO_CONNECT_MARKER">
<pin name="P$1" x="5.08" y="0" visible="off" length="middle" rot="R180"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NC_MARKER">
<gates>
<gate name="G$1" symbol="NO_CONNECT_MARKER" x="-5.08" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<modules>
<module name="DAC_CH" prefix="" dx="30.48" dy="20.32">
<ports>
<port name="DAC_N" side="left" coord="0" direction="io"/>
<port name="DAC_P" side="left" coord="5.08" direction="io"/>
<port name="SWITCH" side="left" coord="-5.08" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
<part name="R1" library="SamacSys_Parts" deviceset="ERJ2RKF17R4X" device="" value="17R4"/>
<part name="R2" library="SamacSys_Parts" deviceset="ERJ2RKF17R4X" device="" value="17R4"/>
<part name="R3" library="SamacSys_Parts" deviceset="ERJ2RKF5900X" device="" value="590R"/>
<part name="R4" library="SamacSys_Parts" deviceset="ERJ2RKF5900X" device="" value="590R"/>
<part name="C1" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="C2" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="T1" library="SamacSys_Parts" deviceset="TCM2-33X+" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U$1" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="FL1" library="SamacSys_Parts" deviceset="LFCG-1000+" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="C3" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="IC1" library="SamacSys_Parts" deviceset="ERA-3SM+" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U1" library="SamacSys_Parts" deviceset="TCCH-80+" device=""/>
<part name="U$2" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="U$3" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="R5" library="SamacSys_Parts" deviceset="ERJ2RKF1070X" device="" value="107R"/>
<part name="C4" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="C5" library="SamacSys_Parts" deviceset="TMK105AC6105KV-F" device="" value="1uF"/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_B_L" device=""/>
<part name="SUPPLY9" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+7V" device=""/>
<part name="C6" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="IC2" library="SamacSys_Parts" deviceset="HMC349ALP4CETR" device=""/>
<part name="SUPPLY10" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U$4" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="U$5" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="U$6" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="R6" library="SamacSys_Parts" deviceset="ERJ-2RKF1001X" device="" value="1kR"/>
<part name="SUPPLY11" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="C7" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="C8" library="SamacSys_Parts" deviceset="TMK105AC6105KV-F" device="" value="1uF"/>
<part name="SUPPLY12" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY14" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+5V_ANALOG"/>
<part name="U$7" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="U$8" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="U$9" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="U$10" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="SUPPLY15" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U$11" library="NC_MARKER" deviceset="NC_MARKER" device=""/>
<part name="C9" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="C10" library="SamacSys_Parts" deviceset="TMK105BJ104KV-F" device="" value="100nF"/>
<part name="R7" library="SamacSys_Parts" deviceset="ERJ-2RKF1000X" device="" value="100R"/>
<part name="R8" library="SamacSys_Parts" deviceset="ERJ-2RKF1000X" device="" value="100R"/>
<part name="SUPPLY16" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY17" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="J1" library="SamacSys_Parts" deviceset="73100-0114" device=""/>
<part name="SUPPLY18" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="H1" library="SamacSys_Parts" deviceset="SMS-409F" device=""/>
<part name="SUPPLY19" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="H2" library="SamacSys_Parts" deviceset="SMS-409F" device=""/>
<part name="SUPPLY20" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="R1" gate="G$1" x="53.34" y="182.88" smashed="yes">
<attribute name="NAME" x="67.31" y="189.23" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="67.31" y="186.69" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R2" gate="G$1" x="53.34" y="160.02" smashed="yes">
<attribute name="NAME" x="67.31" y="166.37" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="67.31" y="163.83" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R3" gate="G$1" x="76.2" y="162.56" smashed="yes" rot="R90">
<attribute name="NAME" x="69.85" y="176.53" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="72.39" y="176.53" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="R4" gate="G$1" x="48.26" y="162.56" smashed="yes" rot="R90">
<attribute name="NAME" x="41.91" y="176.53" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="44.45" y="176.53" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="C1" gate="G$1" x="81.28" y="182.88" smashed="yes">
<attribute name="NAME" x="90.17" y="189.23" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="90.17" y="186.69" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C2" gate="G$1" x="81.28" y="160.02" smashed="yes">
<attribute name="NAME" x="90.17" y="166.37" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="90.17" y="163.83" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="T1" gate="G$1" x="124.46" y="195.58" smashed="yes" rot="R270">
<attribute name="NAME" x="132.08" y="151.13" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="129.54" y="151.13" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="132.08" y="203.2" smashed="yes">
<attribute name="VALUE" x="130.175" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="G$1" x="124.46" y="142.24" smashed="yes" rot="R90"/>
<instance part="SUPPLY2" gate="GND" x="121.92" y="132.08" smashed="yes">
<attribute name="VALUE" x="120.015" y="128.905" size="1.778" layer="96"/>
</instance>
<instance part="FL1" gate="G$1" x="144.78" y="172.72" smashed="yes">
<attribute name="NAME" x="176.53" y="190.5" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="176.53" y="187.96" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="160.02" y="132.08" smashed="yes">
<attribute name="VALUE" x="158.115" y="128.905" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="154.94" y="203.2" smashed="yes">
<attribute name="VALUE" x="153.035" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="185.42" y="172.72" smashed="yes">
<attribute name="NAME" x="194.31" y="179.07" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="194.31" y="176.53" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC1" gate="G$1" x="223.52" y="187.96" smashed="yes" rot="R270">
<attribute name="NAME" x="254" y="161.29" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="251.46" y="161.29" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="SUPPLY5" gate="GND" x="215.9" y="203.2" smashed="yes">
<attribute name="VALUE" x="213.995" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY6" gate="GND" x="223.52" y="132.08" smashed="yes">
<attribute name="VALUE" x="221.615" y="128.905" size="1.778" layer="96"/>
</instance>
<instance part="U1" gate="G$1" x="254" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="246.38" y="224.79" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="248.92" y="224.79" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="U$2" gate="G$1" x="256.54" y="180.34" smashed="yes" rot="R90"/>
<instance part="U$3" gate="G$1" x="254" y="233.68" smashed="yes" rot="R270"/>
<instance part="R5" gate="G$1" x="231.14" y="248.92" smashed="yes">
<attribute name="NAME" x="245.11" y="255.27" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="245.11" y="252.73" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C4" gate="G$1" x="228.6" y="233.68" smashed="yes" rot="R90">
<attribute name="NAME" x="222.25" y="242.57" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="224.79" y="242.57" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="C5" gate="G$1" x="220.98" y="233.68" smashed="yes" rot="R90">
<attribute name="NAME" x="214.63" y="242.57" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="217.17" y="242.57" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="SUPPLY7" gate="GND" x="228.6" y="228.6" smashed="yes">
<attribute name="VALUE" x="226.695" y="225.425" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY8" gate="GND" x="220.98" y="228.6" smashed="yes">
<attribute name="VALUE" x="219.075" y="225.425" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="325.12" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="337.82" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="411.48" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="342.9" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="SUPPLY9" gate="G$1" x="220.98" y="251.46" smashed="yes">
<attribute name="VALUE" x="219.075" y="254.635" size="1.778" layer="96"/>
</instance>
<instance part="C6" gate="G$1" x="259.08" y="172.72" smashed="yes">
<attribute name="NAME" x="267.97" y="179.07" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="267.97" y="176.53" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC2" gate="G$1" x="276.86" y="177.8" smashed="yes">
<attribute name="NAME" x="303.53" y="195.58" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="303.53" y="193.04" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY10" gate="GND" x="312.42" y="132.08" smashed="yes">
<attribute name="VALUE" x="310.515" y="128.905" size="1.778" layer="96"/>
</instance>
<instance part="U$4" gate="G$1" x="289.56" y="147.32" smashed="yes" rot="R90"/>
<instance part="U$5" gate="G$1" x="292.1" y="147.32" smashed="yes" rot="R90"/>
<instance part="U$6" gate="G$1" x="294.64" y="147.32" smashed="yes" rot="R90"/>
<instance part="R6" gate="G$1" x="287.02" y="134.62" smashed="yes" rot="R90">
<attribute name="NAME" x="280.67" y="148.59" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="283.21" y="148.59" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="SUPPLY11" gate="GND" x="287.02" y="132.08" smashed="yes">
<attribute name="VALUE" x="285.115" y="128.905" size="1.778" layer="96"/>
</instance>
<instance part="C7" gate="G$1" x="294.64" y="233.68" smashed="yes" rot="R90">
<attribute name="NAME" x="288.29" y="242.57" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="290.83" y="242.57" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="C8" gate="G$1" x="287.02" y="233.68" smashed="yes" rot="R90">
<attribute name="NAME" x="280.67" y="242.57" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="283.21" y="242.57" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="SUPPLY12" gate="GND" x="294.64" y="228.6" smashed="yes">
<attribute name="VALUE" x="292.735" y="225.425" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY13" gate="GND" x="287.02" y="228.6" smashed="yes">
<attribute name="VALUE" x="285.115" y="225.425" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY14" gate="+5V" x="274.32" y="261.62" smashed="yes">
<attribute name="VALUE" x="272.415" y="264.795" size="1.778" layer="96"/>
</instance>
<instance part="U$7" gate="G$1" x="289.56" y="200.66" smashed="yes" rot="R270"/>
<instance part="U$8" gate="G$1" x="292.1" y="200.66" smashed="yes" rot="R270"/>
<instance part="U$9" gate="G$1" x="294.64" y="200.66" smashed="yes" rot="R270"/>
<instance part="U$10" gate="G$1" x="297.18" y="200.66" smashed="yes" rot="R270"/>
<instance part="SUPPLY15" gate="GND" x="276.86" y="208.28" smashed="yes">
<attribute name="VALUE" x="274.955" y="205.105" size="1.778" layer="96"/>
</instance>
<instance part="U$11" gate="G$1" x="271.78" y="170.18" smashed="yes"/>
<instance part="C9" gate="G$1" x="325.12" y="208.28" smashed="yes">
<attribute name="NAME" x="334.01" y="214.63" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="334.01" y="212.09" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C10" gate="G$1" x="325.12" y="139.7" smashed="yes">
<attribute name="NAME" x="334.01" y="146.05" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="334.01" y="143.51" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R7" gate="G$1" x="347.98" y="190.5" smashed="yes" rot="R90">
<attribute name="NAME" x="341.63" y="204.47" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="344.17" y="204.47" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="R8" gate="G$1" x="358.14" y="190.5" smashed="yes" rot="R90">
<attribute name="NAME" x="351.79" y="204.47" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="354.33" y="204.47" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="SUPPLY16" gate="GND" x="347.98" y="187.96" smashed="yes">
<attribute name="VALUE" x="346.075" y="184.785" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY17" gate="GND" x="358.14" y="187.96" smashed="yes">
<attribute name="VALUE" x="356.235" y="184.785" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="342.9" y="139.7" smashed="yes">
<attribute name="NAME" x="359.41" y="147.32" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="359.41" y="144.78" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY18" gate="GND" x="342.9" y="127" smashed="yes">
<attribute name="VALUE" x="340.995" y="123.825" size="1.778" layer="96"/>
</instance>
<instance part="H1" gate="G$1" x="40.64" y="254" smashed="yes">
<attribute name="NAME" x="62.23" y="266.7" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="62.23" y="264.16" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY19" gate="GND" x="48.26" y="228.6" smashed="yes">
<attribute name="VALUE" x="46.355" y="225.425" size="1.778" layer="96"/>
</instance>
<instance part="H2" gate="G$1" x="78.74" y="254" smashed="yes">
<attribute name="NAME" x="100.33" y="266.7" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="100.33" y="264.16" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY20" gate="GND" x="86.36" y="228.6" smashed="yes">
<attribute name="VALUE" x="84.455" y="225.425" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="DAC_N" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="53.34" y1="160.02" x2="48.26" y2="160.02" width="0.1524" layer="91"/>
<wire x1="48.26" y1="160.02" x2="48.26" y2="162.56" width="0.1524" layer="91"/>
<wire x1="48.26" y1="160.02" x2="33.02" y2="160.02" width="0.1524" layer="91"/>
<junction x="48.26" y="160.02"/>
<label x="33.02" y="160.02" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="71.12" y1="160.02" x2="76.2" y2="160.02" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="76.2" y1="160.02" x2="76.2" y2="162.56" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="81.28" y1="160.02" x2="76.2" y2="160.02" width="0.1524" layer="91"/>
<junction x="76.2" y="160.02"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="76.2" y1="180.34" x2="76.2" y2="182.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="182.88" x2="71.12" y2="182.88" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="81.28" y1="182.88" x2="76.2" y2="182.88" width="0.1524" layer="91"/>
<junction x="76.2" y="182.88"/>
</segment>
</net>
<net name="DAC_P" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="48.26" y1="180.34" x2="48.26" y2="182.88" width="0.1524" layer="91"/>
<wire x1="48.26" y1="182.88" x2="53.34" y2="182.88" width="0.1524" layer="91"/>
<wire x1="48.26" y1="182.88" x2="33.02" y2="182.88" width="0.1524" layer="91"/>
<junction x="48.26" y="182.88"/>
<label x="33.02" y="182.88" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="GND"/>
<wire x1="121.92" y1="195.58" x2="121.92" y2="208.28" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="121.92" y1="208.28" x2="132.08" y2="208.28" width="0.1524" layer="91"/>
<wire x1="132.08" y1="208.28" x2="132.08" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<pinref part="T1" gate="G$1" pin="PRIMARY/GND"/>
<wire x1="121.92" y1="134.62" x2="121.92" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<pinref part="FL1" gate="G$1" pin="GND_1"/>
<wire x1="160.02" y1="134.62" x2="160.02" y2="154.94" width="0.1524" layer="91"/>
<pinref part="FL1" gate="G$1" pin="GND_2"/>
<pinref part="FL1" gate="G$1" pin="GND_3"/>
<wire x1="162.56" y1="154.94" x2="165.1" y2="154.94" width="0.1524" layer="91"/>
<wire x1="162.56" y1="154.94" x2="160.02" y2="154.94" width="0.1524" layer="91"/>
<junction x="162.56" y="154.94"/>
<junction x="160.02" y="154.94"/>
</segment>
<segment>
<pinref part="FL1" gate="G$1" pin="GND_4"/>
<pinref part="FL1" gate="G$1" pin="GND_5"/>
<wire x1="165.1" y1="190.5" x2="162.56" y2="190.5" width="0.1524" layer="91"/>
<pinref part="FL1" gate="G$1" pin="GND_6"/>
<wire x1="162.56" y1="190.5" x2="160.02" y2="190.5" width="0.1524" layer="91"/>
<junction x="162.56" y="190.5"/>
<wire x1="160.02" y1="190.5" x2="160.02" y2="208.28" width="0.1524" layer="91"/>
<wire x1="160.02" y1="208.28" x2="154.94" y2="208.28" width="0.1524" layer="91"/>
<junction x="160.02" y="190.5"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="154.94" y1="208.28" x2="154.94" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_2"/>
<wire x1="223.52" y1="187.96" x2="223.52" y2="208.28" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="223.52" y1="208.28" x2="215.9" y2="208.28" width="0.1524" layer="91"/>
<wire x1="215.9" y1="208.28" x2="215.9" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<pinref part="IC1" gate="G$1" pin="GND_1"/>
<wire x1="223.52" y1="134.62" x2="223.52" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="228.6" y1="231.14" x2="228.6" y2="233.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="220.98" y1="231.14" x2="220.98" y2="233.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND_2"/>
<pinref part="IC2" gate="G$1" pin="GND_1"/>
<wire x1="307.34" y1="175.26" x2="307.34" y2="172.72" width="0.1524" layer="91"/>
<junction x="307.34" y="172.72"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="307.34" y1="172.72" x2="312.42" y2="172.72" width="0.1524" layer="91"/>
<wire x1="312.42" y1="172.72" x2="312.42" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="294.64" y1="231.14" x2="294.64" y2="233.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="287.02" y1="231.14" x2="287.02" y2="233.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="EP"/>
<wire x1="287.02" y1="195.58" x2="287.02" y2="215.9" width="0.1524" layer="91"/>
<pinref part="SUPPLY15" gate="GND" pin="GND"/>
<wire x1="287.02" y1="215.9" x2="276.86" y2="215.9" width="0.1524" layer="91"/>
<wire x1="276.86" y1="215.9" x2="276.86" y2="210.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY16" gate="GND" pin="GND"/>
<pinref part="R7" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY17" gate="GND" pin="GND"/>
<pinref part="R8" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="342.9" y1="137.16" x2="342.9" y2="134.62" width="0.1524" layer="91"/>
<wire x1="342.9" y1="134.62" x2="342.9" y2="129.54" width="0.1524" layer="91"/>
<junction x="342.9" y="134.62"/>
<pinref part="J1" gate="G$1" pin="4"/>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="363.22" y1="139.7" x2="363.22" y2="137.16" width="0.1524" layer="91"/>
<wire x1="342.9" y1="129.54" x2="363.22" y2="129.54" width="0.1524" layer="91"/>
<wire x1="363.22" y1="129.54" x2="363.22" y2="137.16" width="0.1524" layer="91"/>
<junction x="363.22" y="137.16"/>
<pinref part="SUPPLY18" gate="GND" pin="GND"/>
<junction x="342.9" y="129.54"/>
</segment>
<segment>
<pinref part="SUPPLY19" gate="GND" pin="GND"/>
<pinref part="H1" gate="G$1" pin="4"/>
<wire x1="48.26" y1="231.14" x2="48.26" y2="236.22" width="0.1524" layer="91"/>
<pinref part="H1" gate="G$1" pin="8"/>
<wire x1="58.42" y1="236.22" x2="55.88" y2="236.22" width="0.1524" layer="91"/>
<junction x="48.26" y="236.22"/>
<pinref part="H1" gate="G$1" pin="5"/>
<wire x1="55.88" y1="236.22" x2="53.34" y2="236.22" width="0.1524" layer="91"/>
<wire x1="53.34" y1="236.22" x2="50.8" y2="236.22" width="0.1524" layer="91"/>
<wire x1="50.8" y1="236.22" x2="48.26" y2="236.22" width="0.1524" layer="91"/>
<junction x="50.8" y="236.22"/>
<pinref part="H1" gate="G$1" pin="6"/>
<junction x="53.34" y="236.22"/>
<pinref part="H1" gate="G$1" pin="7"/>
<junction x="55.88" y="236.22"/>
<pinref part="H1" gate="G$1" pin="1"/>
<pinref part="H1" gate="G$1" pin="3"/>
<wire x1="40.64" y1="254" x2="40.64" y2="251.46" width="0.1524" layer="91"/>
<pinref part="H1" gate="G$1" pin="2"/>
<wire x1="40.64" y1="251.46" x2="40.64" y2="248.92" width="0.1524" layer="91"/>
<junction x="40.64" y="251.46"/>
<wire x1="40.64" y1="248.92" x2="40.64" y2="236.22" width="0.1524" layer="91"/>
<wire x1="40.64" y1="236.22" x2="48.26" y2="236.22" width="0.1524" layer="91"/>
<junction x="40.64" y="248.92"/>
<pinref part="H1" gate="G$1" pin="16"/>
<pinref part="H1" gate="G$1" pin="12"/>
<wire x1="48.26" y1="266.7" x2="50.8" y2="266.7" width="0.1524" layer="91"/>
<pinref part="H1" gate="G$1" pin="13"/>
<wire x1="50.8" y1="266.7" x2="53.34" y2="266.7" width="0.1524" layer="91"/>
<wire x1="53.34" y1="266.7" x2="55.88" y2="266.7" width="0.1524" layer="91"/>
<wire x1="55.88" y1="266.7" x2="58.42" y2="266.7" width="0.1524" layer="91"/>
<junction x="55.88" y="266.7"/>
<pinref part="H1" gate="G$1" pin="14"/>
<junction x="53.34" y="266.7"/>
<pinref part="H1" gate="G$1" pin="15"/>
<junction x="50.8" y="266.7"/>
<wire x1="50.8" y1="266.7" x2="40.64" y2="266.7" width="0.1524" layer="91"/>
<wire x1="40.64" y1="266.7" x2="40.64" y2="254" width="0.1524" layer="91"/>
<junction x="40.64" y="254"/>
<pinref part="H1" gate="G$1" pin="11"/>
<pinref part="H1" gate="G$1" pin="9"/>
<wire x1="66.04" y1="254" x2="66.04" y2="251.46" width="0.1524" layer="91"/>
<pinref part="H1" gate="G$1" pin="10"/>
<wire x1="66.04" y1="251.46" x2="66.04" y2="248.92" width="0.1524" layer="91"/>
<junction x="66.04" y="251.46"/>
<wire x1="66.04" y1="248.92" x2="66.04" y2="236.22" width="0.1524" layer="91"/>
<wire x1="66.04" y1="236.22" x2="58.42" y2="236.22" width="0.1524" layer="91"/>
<junction x="66.04" y="248.92"/>
<junction x="58.42" y="236.22"/>
</segment>
<segment>
<pinref part="SUPPLY20" gate="GND" pin="GND"/>
<pinref part="H2" gate="G$1" pin="4"/>
<wire x1="86.36" y1="231.14" x2="86.36" y2="236.22" width="0.1524" layer="91"/>
<pinref part="H2" gate="G$1" pin="8"/>
<wire x1="96.52" y1="236.22" x2="93.98" y2="236.22" width="0.1524" layer="91"/>
<junction x="86.36" y="236.22"/>
<pinref part="H2" gate="G$1" pin="5"/>
<wire x1="93.98" y1="236.22" x2="91.44" y2="236.22" width="0.1524" layer="91"/>
<wire x1="91.44" y1="236.22" x2="88.9" y2="236.22" width="0.1524" layer="91"/>
<wire x1="88.9" y1="236.22" x2="86.36" y2="236.22" width="0.1524" layer="91"/>
<junction x="88.9" y="236.22"/>
<pinref part="H2" gate="G$1" pin="6"/>
<junction x="91.44" y="236.22"/>
<pinref part="H2" gate="G$1" pin="7"/>
<junction x="93.98" y="236.22"/>
<pinref part="H2" gate="G$1" pin="1"/>
<pinref part="H2" gate="G$1" pin="3"/>
<wire x1="78.74" y1="254" x2="78.74" y2="251.46" width="0.1524" layer="91"/>
<pinref part="H2" gate="G$1" pin="2"/>
<wire x1="78.74" y1="251.46" x2="78.74" y2="248.92" width="0.1524" layer="91"/>
<junction x="78.74" y="251.46"/>
<wire x1="78.74" y1="248.92" x2="78.74" y2="236.22" width="0.1524" layer="91"/>
<wire x1="78.74" y1="236.22" x2="86.36" y2="236.22" width="0.1524" layer="91"/>
<junction x="78.74" y="248.92"/>
<pinref part="H2" gate="G$1" pin="16"/>
<pinref part="H2" gate="G$1" pin="12"/>
<wire x1="86.36" y1="266.7" x2="88.9" y2="266.7" width="0.1524" layer="91"/>
<pinref part="H2" gate="G$1" pin="13"/>
<wire x1="88.9" y1="266.7" x2="91.44" y2="266.7" width="0.1524" layer="91"/>
<wire x1="91.44" y1="266.7" x2="93.98" y2="266.7" width="0.1524" layer="91"/>
<wire x1="93.98" y1="266.7" x2="96.52" y2="266.7" width="0.1524" layer="91"/>
<junction x="93.98" y="266.7"/>
<pinref part="H2" gate="G$1" pin="14"/>
<junction x="91.44" y="266.7"/>
<pinref part="H2" gate="G$1" pin="15"/>
<junction x="88.9" y="266.7"/>
<wire x1="88.9" y1="266.7" x2="78.74" y2="266.7" width="0.1524" layer="91"/>
<wire x1="78.74" y1="266.7" x2="78.74" y2="254" width="0.1524" layer="91"/>
<junction x="78.74" y="254"/>
<pinref part="H2" gate="G$1" pin="11"/>
<pinref part="H2" gate="G$1" pin="9"/>
<wire x1="104.14" y1="254" x2="104.14" y2="251.46" width="0.1524" layer="91"/>
<pinref part="H2" gate="G$1" pin="10"/>
<wire x1="104.14" y1="251.46" x2="104.14" y2="248.92" width="0.1524" layer="91"/>
<junction x="104.14" y="251.46"/>
<wire x1="104.14" y1="248.92" x2="104.14" y2="236.22" width="0.1524" layer="91"/>
<wire x1="104.14" y1="236.22" x2="96.52" y2="236.22" width="0.1524" layer="91"/>
<junction x="104.14" y="248.92"/>
<junction x="96.52" y="236.22"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$1"/>
<pinref part="T1" gate="G$1" pin="NOT_USED"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="93.98" y1="182.88" x2="101.6" y2="182.88" width="0.1524" layer="91"/>
<wire x1="101.6" y1="182.88" x2="101.6" y2="195.58" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="SECONDARY_DOT"/>
<wire x1="101.6" y1="195.58" x2="119.38" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="93.98" y1="160.02" x2="101.6" y2="160.02" width="0.1524" layer="91"/>
<wire x1="101.6" y1="160.02" x2="101.6" y2="147.32" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="SECONDARY"/>
<wire x1="101.6" y1="147.32" x2="119.38" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="PRIMARY_DOT"/>
<wire x1="124.46" y1="195.58" x2="134.62" y2="195.58" width="0.1524" layer="91"/>
<wire x1="134.62" y1="195.58" x2="134.62" y2="172.72" width="0.1524" layer="91"/>
<pinref part="FL1" gate="G$1" pin="INPUT"/>
<wire x1="134.62" y1="172.72" x2="144.78" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="FL1" gate="G$1" pin="OUTPUT"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="180.34" y1="172.72" x2="185.42" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G$1" pin="RF_IN"/>
<wire x1="198.12" y1="172.72" x2="205.74" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF-OUT_AND_DC-IN"/>
<pinref part="U1" gate="G$1" pin="RF-IN_&amp;_DC"/>
<wire x1="254" y1="172.72" x2="254" y2="185.42" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="254" y1="172.72" x2="259.08" y2="172.72" width="0.1524" layer="91"/>
<junction x="254" y="172.72"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NOT_USED_2"/>
<pinref part="U$2" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NOT_USED_1"/>
<pinref part="U$3" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DC"/>
<wire x1="256.54" y1="228.6" x2="256.54" y2="248.92" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="256.54" y1="248.92" x2="248.92" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+7V" class="0">
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="228.6" y1="246.38" x2="228.6" y2="248.92" width="0.1524" layer="91"/>
<wire x1="228.6" y1="248.92" x2="231.14" y2="248.92" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="220.98" y1="246.38" x2="220.98" y2="248.92" width="0.1524" layer="91"/>
<wire x1="220.98" y1="248.92" x2="228.6" y2="248.92" width="0.1524" layer="91"/>
<junction x="228.6" y="248.92"/>
<pinref part="SUPPLY9" gate="G$1" pin="+7V"/>
<junction x="220.98" y="248.92"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="IC2" gate="G$1" pin="RFC"/>
<wire x1="271.78" y1="172.72" x2="276.86" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_3"/>
<pinref part="U$5" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_4"/>
<pinref part="U$6" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_2"/>
<pinref part="U$4" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="EN"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="SWITCH" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="VCTL"/>
<wire x1="276.86" y1="175.26" x2="271.78" y2="175.26" width="0.1524" layer="91"/>
<wire x1="271.78" y1="175.26" x2="271.78" y2="259.08" width="0.1524" layer="91"/>
<wire x1="271.78" y1="259.08" x2="205.74" y2="259.08" width="0.1524" layer="91"/>
<label x="205.74" y="259.08" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="VDD"/>
<wire x1="276.86" y1="177.8" x2="274.32" y2="177.8" width="0.1524" layer="91"/>
<wire x1="274.32" y1="177.8" x2="274.32" y2="259.08" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="274.32" y1="259.08" x2="287.02" y2="259.08" width="0.1524" layer="91"/>
<wire x1="287.02" y1="259.08" x2="294.64" y2="259.08" width="0.1524" layer="91"/>
<wire x1="294.64" y1="259.08" x2="294.64" y2="246.38" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="287.02" y1="246.38" x2="287.02" y2="259.08" width="0.1524" layer="91"/>
<junction x="287.02" y="259.08"/>
<pinref part="SUPPLY14" gate="+5V" pin="+5V"/>
<junction x="274.32" y="259.08"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_8"/>
<pinref part="U$7" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_7"/>
<pinref part="U$8" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_6"/>
<pinref part="U$9" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_5"/>
<pinref part="U$10" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="N/C_1"/>
<pinref part="U$11" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="RF1"/>
<wire x1="307.34" y1="170.18" x2="320.04" y2="170.18" width="0.1524" layer="91"/>
<wire x1="320.04" y1="170.18" x2="320.04" y2="139.7" width="0.1524" layer="91"/>
<wire x1="320.04" y1="139.7" x2="325.12" y2="139.7" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="RF2"/>
<wire x1="307.34" y1="177.8" x2="320.04" y2="177.8" width="0.1524" layer="91"/>
<wire x1="320.04" y1="177.8" x2="320.04" y2="208.28" width="0.1524" layer="91"/>
<wire x1="320.04" y1="208.28" x2="325.12" y2="208.28" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="337.82" y1="208.28" x2="347.98" y2="208.28" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="347.98" y1="208.28" x2="358.14" y2="208.28" width="0.1524" layer="91"/>
<junction x="347.98" y="208.28"/>
<pinref part="R8" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="C10" gate="G$1" pin="2"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="337.82" y1="139.7" x2="342.9" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</module>
</modules>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_B_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<moduleinsts>
<moduleinst name="DAC_CH0" module="DAC_CH" x="66.04" y="259.08">
<attribute name="NAME" value="DAC_CH0" x="66.04" y="259.08" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH1" module="DAC_CH" x="66.04" y="236.22">
<attribute name="NAME" value="DAC_CH1" x="66.04" y="236.22" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH2" module="DAC_CH" x="66.04" y="213.36">
<attribute name="NAME" value="DAC_CH2" x="66.04" y="213.36" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH3" module="DAC_CH" x="66.04" y="190.5">
<attribute name="NAME" value="DAC_CH3" x="66.04" y="190.5" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH4" module="DAC_CH" x="66.04" y="167.64">
<attribute name="NAME" value="DAC_CH4" x="66.04" y="167.64" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH5" module="DAC_CH" x="66.04" y="144.78">
<attribute name="NAME" value="DAC_CH5" x="66.04" y="144.78" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH6" module="DAC_CH" x="66.04" y="121.92">
<attribute name="NAME" value="DAC_CH6" x="66.04" y="121.92" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="DAC_CH7" module="DAC_CH" x="66.04" y="99.06">
<attribute name="NAME" value="DAC_CH7" x="66.04" y="99.06" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
</moduleinsts>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="325.12" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="337.82" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="411.48" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="342.9" y="19.05" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="DAC_00_P" class="0">
<segment>
<portref moduleinst="DAC_CH0" port="DAC_P"/>
<wire x1="45.72" y1="264.16" x2="30.48" y2="264.16" width="0.1524" layer="91"/>
<label x="30.48" y="264.16" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_00_N" class="0">
<segment>
<portref moduleinst="DAC_CH0" port="DAC_N"/>
<wire x1="45.72" y1="259.08" x2="30.48" y2="259.08" width="0.1524" layer="91"/>
<label x="30.48" y="259.08" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_00" class="0">
<segment>
<portref moduleinst="DAC_CH0" port="SWITCH"/>
<wire x1="45.72" y1="254" x2="30.48" y2="254" width="0.1524" layer="91"/>
<label x="30.48" y="254" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_01_P" class="0">
<segment>
<portref moduleinst="DAC_CH1" port="DAC_P"/>
<wire x1="45.72" y1="241.3" x2="30.48" y2="241.3" width="0.1524" layer="91"/>
<label x="30.48" y="241.3" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_01_N" class="0">
<segment>
<portref moduleinst="DAC_CH1" port="DAC_N"/>
<wire x1="45.72" y1="236.22" x2="30.48" y2="236.22" width="0.1524" layer="91"/>
<label x="30.48" y="236.22" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_01" class="0">
<segment>
<portref moduleinst="DAC_CH1" port="SWITCH"/>
<wire x1="45.72" y1="231.14" x2="30.48" y2="231.14" width="0.1524" layer="91"/>
<label x="30.48" y="231.14" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_02_P" class="0">
<segment>
<portref moduleinst="DAC_CH2" port="DAC_P"/>
<wire x1="45.72" y1="218.44" x2="30.48" y2="218.44" width="0.1524" layer="91"/>
<label x="30.48" y="218.44" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_02_N" class="0">
<segment>
<portref moduleinst="DAC_CH2" port="DAC_N"/>
<wire x1="45.72" y1="213.36" x2="30.48" y2="213.36" width="0.1524" layer="91"/>
<label x="30.48" y="213.36" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_02" class="0">
<segment>
<portref moduleinst="DAC_CH2" port="SWITCH"/>
<wire x1="45.72" y1="208.28" x2="30.48" y2="208.28" width="0.1524" layer="91"/>
<label x="30.48" y="208.28" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_03_P" class="0">
<segment>
<portref moduleinst="DAC_CH3" port="DAC_P"/>
<wire x1="45.72" y1="195.58" x2="30.48" y2="195.58" width="0.1524" layer="91"/>
<label x="30.48" y="195.58" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_03_N" class="0">
<segment>
<portref moduleinst="DAC_CH3" port="DAC_N"/>
<wire x1="45.72" y1="190.5" x2="30.48" y2="190.5" width="0.1524" layer="91"/>
<label x="30.48" y="190.5" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_03" class="0">
<segment>
<portref moduleinst="DAC_CH3" port="SWITCH"/>
<wire x1="45.72" y1="185.42" x2="30.48" y2="185.42" width="0.1524" layer="91"/>
<label x="30.48" y="185.42" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_04_P" class="0">
<segment>
<portref moduleinst="DAC_CH4" port="DAC_P"/>
<wire x1="45.72" y1="172.72" x2="30.48" y2="172.72" width="0.1524" layer="91"/>
<label x="30.48" y="172.72" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_04_N" class="0">
<segment>
<portref moduleinst="DAC_CH4" port="DAC_N"/>
<wire x1="45.72" y1="167.64" x2="30.48" y2="167.64" width="0.1524" layer="91"/>
<label x="30.48" y="167.64" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_04" class="0">
<segment>
<portref moduleinst="DAC_CH4" port="SWITCH"/>
<wire x1="45.72" y1="162.56" x2="30.48" y2="162.56" width="0.1524" layer="91"/>
<label x="30.48" y="162.56" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_05_P" class="0">
<segment>
<portref moduleinst="DAC_CH5" port="DAC_P"/>
<wire x1="45.72" y1="149.86" x2="30.48" y2="149.86" width="0.1524" layer="91"/>
<label x="30.48" y="149.86" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_05_N" class="0">
<segment>
<portref moduleinst="DAC_CH5" port="DAC_N"/>
<wire x1="45.72" y1="144.78" x2="30.48" y2="144.78" width="0.1524" layer="91"/>
<label x="30.48" y="144.78" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_05" class="0">
<segment>
<portref moduleinst="DAC_CH5" port="SWITCH"/>
<wire x1="45.72" y1="139.7" x2="30.48" y2="139.7" width="0.1524" layer="91"/>
<label x="30.48" y="139.7" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_06_P" class="0">
<segment>
<portref moduleinst="DAC_CH6" port="DAC_P"/>
<wire x1="45.72" y1="127" x2="30.48" y2="127" width="0.1524" layer="91"/>
<label x="30.48" y="127" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_06_N" class="0">
<segment>
<portref moduleinst="DAC_CH6" port="DAC_N"/>
<wire x1="45.72" y1="121.92" x2="30.48" y2="121.92" width="0.1524" layer="91"/>
<label x="30.48" y="121.92" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_06" class="0">
<segment>
<portref moduleinst="DAC_CH6" port="SWITCH"/>
<wire x1="45.72" y1="116.84" x2="30.48" y2="116.84" width="0.1524" layer="91"/>
<label x="30.48" y="116.84" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_07_P" class="0">
<segment>
<portref moduleinst="DAC_CH7" port="DAC_P"/>
<wire x1="45.72" y1="104.14" x2="30.48" y2="104.14" width="0.1524" layer="91"/>
<label x="30.48" y="104.14" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="DAC_07_N" class="0">
<segment>
<portref moduleinst="DAC_CH7" port="DAC_N"/>
<wire x1="45.72" y1="99.06" x2="30.48" y2="99.06" width="0.1524" layer="91"/>
<label x="30.48" y="99.06" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWITCH_07" class="0">
<segment>
<portref moduleinst="DAC_CH7" port="SWITCH"/>
<wire x1="45.72" y1="93.98" x2="30.48" y2="93.98" width="0.1524" layer="91"/>
<label x="30.48" y="93.98" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
