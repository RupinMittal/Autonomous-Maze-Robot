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
<library name="AZ1117IH-3.3TRG1">
<packages>
<package name="SOT230P700X170-4N">
<description>&lt;b&gt;SOT223/ H Package&lt;/b&gt;&lt;br&gt;
</description>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.275" y1="3.6" x2="4.275" y2="3.6" width="0.05" layer="51"/>
<wire x1="4.275" y1="3.6" x2="4.275" y2="-3.6" width="0.05" layer="51"/>
<wire x1="4.275" y1="-3.6" x2="-4.275" y2="-3.6" width="0.05" layer="51"/>
<wire x1="-4.275" y1="-3.6" x2="-4.275" y2="3.6" width="0.05" layer="51"/>
<wire x1="-1.75" y1="3.25" x2="1.75" y2="3.25" width="0.1" layer="51"/>
<wire x1="1.75" y1="3.25" x2="1.75" y2="-3.25" width="0.1" layer="51"/>
<wire x1="1.75" y1="-3.25" x2="-1.75" y2="-3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="-3.25" x2="-1.75" y2="3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="0.95" x2="0.55" y2="3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="3.25" x2="1.75" y2="3.25" width="0.2" layer="21"/>
<wire x1="1.75" y1="3.25" x2="1.75" y2="-3.25" width="0.2" layer="21"/>
<wire x1="1.75" y1="-3.25" x2="-1.75" y2="-3.25" width="0.2" layer="21"/>
<wire x1="-1.75" y1="-3.25" x2="-1.75" y2="3.25" width="0.2" layer="21"/>
<wire x1="-4.025" y1="3.1" x2="-2.175" y2="3.1" width="0.2" layer="21"/>
<smd name="1" x="-3.1" y="2.3" dx="1.85" dy="0.9" layer="1"/>
<smd name="2" x="-3.1" y="0" dx="1.85" dy="0.9" layer="1"/>
<smd name="3" x="-3.1" y="-2.3" dx="1.85" dy="0.9" layer="1"/>
<smd name="4" x="3.1" y="0" dx="3.2" dy="1.85" layer="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="AZ1117IH-3.3TRG1">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-7.62" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="ADJ/GND" x="0" y="0" length="middle"/>
<pin name="OUTPUT" x="0" y="-2.54" length="middle"/>
<pin name="INPUT" x="0" y="-5.08" length="middle"/>
<pin name="VOUT" x="33.02" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AZ1117IH-3.3TRG1" prefix="IC">
<description>&lt;b&gt;LDO Voltage Regulators LDO BJT HiCurr 1.35A 10Hz to 10KHz&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;  &lt;a href="https://pricing.snapeda.com/parts/AZ1117IH-3.3TRG1/Diodes%20Inc./view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="AZ1117IH-3.3TRG1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT230P700X170-4N">
<connects>
<connect gate="G$1" pin="ADJ/GND" pad="1"/>
<connect gate="G$1" pin="INPUT" pad="3"/>
<connect gate="G$1" pin="OUTPUT" pad="2"/>
<connect gate="G$1" pin="VOUT" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" Linear Voltage Regulator IC 1 Output 1A SOT-223 "/>
<attribute name="MF" value="Diodes Inc."/>
<attribute name="MP" value="AZ1117IH-3.3TRG1"/>
<attribute name="PACKAGE" value="SOT-223 Diodes Inc."/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/AZ1117IH-3.3TRG1/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="GRM21BR71A106KA73L">
<packages>
<package name="CAPC2012X140N">
<text x="-1.69" y="-1.05" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.69" y="1.05" size="0.5" layer="25">&gt;NAME</text>
<wire x1="1.07" y1="-0.7" x2="-1.07" y2="-0.7" width="0.127" layer="51"/>
<wire x1="1.07" y1="0.7" x2="-1.07" y2="0.7" width="0.127" layer="51"/>
<wire x1="1.07" y1="-0.7" x2="1.07" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.07" y1="-0.7" x2="-1.07" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.685" y1="-0.96" x2="1.685" y2="-0.96" width="0.05" layer="39"/>
<wire x1="-1.685" y1="0.96" x2="1.685" y2="0.96" width="0.05" layer="39"/>
<wire x1="-1.685" y1="-0.96" x2="-1.685" y2="0.96" width="0.05" layer="39"/>
<wire x1="1.685" y1="-0.96" x2="1.685" y2="0.96" width="0.05" layer="39"/>
<smd name="1" x="-0.895" y="0" dx="1.08" dy="1.42" layer="1"/>
<smd name="2" x="0.895" y="0" dx="1.08" dy="1.42" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="GRM21BR71A106KA73L">
<text x="0" y="3.81093125" size="1.77843125" layer="95">&gt;NAME</text>
<text x="0" y="-5.08848125" size="1.78096875" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.906859375" x2="0.635" y2="1.905" layer="94"/>
<rectangle x1="1.90685" y1="-1.90685" x2="2.54" y2="1.905" layer="94"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GRM21BR71A106KA73L" prefix="C">
<description>SMD Capacitor X7R(EIA) with Capacitance: 10uF Tol. 10%. Rated Voltage: 10Vdc </description>
<gates>
<gate name="G$1" symbol="GRM21BR71A106KA73L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X140N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" SMD capacitor X7R(EIA) with capacitance 10uF Tol.10%. Rated voltage 10Vdc 125C "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="490-10516-1-ND"/>
<attribute name="MF" value="Murata Electronics"/>
<attribute name="MP" value="GRM21BR71A106KA73L"/>
<attribute name="PACKAGE" value="2012 Murata"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/GRM21BR71A106KA73L/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2 Pin JST Connector">
<packages>
<package name="CONN_B2B-PH-K-S(LF)(SN)_JST">
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.3208"/>
<pad name="2" x="-2.0066" y="0" drill="0.8128" diameter="1.3208"/>
<wire x1="-4.064" y1="-1.8288" x2="2.0828" y2="-1.8288" width="0.1524" layer="21"/>
<wire x1="2.0828" y1="-1.8288" x2="2.0828" y2="2.921" width="0.1524" layer="21"/>
<wire x1="2.0828" y1="2.921" x2="-4.064" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="2.921" x2="-4.064" y2="-1.8288" width="0.1524" layer="21"/>
<wire x1="3.0988" y1="0" x2="2.3368" y2="0" width="0.508" layer="21" curve="-180"/>
<wire x1="2.3368" y1="0" x2="3.0988" y2="0" width="0.508" layer="21" curve="-180"/>
<text x="-2.7178" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Value</text>
<wire x1="-3.937" y1="-1.7018" x2="1.9558" y2="-1.7018" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="-1.7018" x2="1.9558" y2="2.794" width="0.1524" layer="51"/>
<wire x1="1.9558" y1="2.794" x2="-3.937" y2="2.794" width="0.1524" layer="51"/>
<wire x1="-3.937" y1="2.794" x2="-3.937" y2="-1.7018" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-1.905" x2="-0.381" y2="-1.905" width="0.508" layer="51" curve="-180"/>
<wire x1="-0.381" y1="-1.905" x2="0.381" y2="-1.905" width="0.508" layer="51" curve="-180"/>
<wire x1="3.0988" y1="0" x2="2.3368" y2="0" width="0.508" layer="22" curve="-180"/>
<wire x1="2.3368" y1="0" x2="3.0988" y2="0" width="0.508" layer="22" curve="-180"/>
<text x="-4.2672" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="CONN_002P_000C_1">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="12.7" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="5.3086" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="B2B-PH-K-S(LF)(SN)" prefix="J">
<gates>
<gate name="A" symbol="CONN_002P_000C_1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN_B2B-PH-K-S(LF)(SN)_JST">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="BUILT_BY" value="EMA_Cory" constant="no"/>
<attribute name="COPYRIGHT" value="Copyright (C) 2018 Accelerated Designs. All rights reserved" constant="no"/>
<attribute name="DATASHEET" value="http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="B2B-PH-K-S(LF)(SN)" constant="no"/>
<attribute name="SOURCELIBRARY" value="JST_2020-03-20" constant="no"/>
<attribute name="VENDOR" value="JST" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
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
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="GRM21BR61A226ME51L">
<packages>
<package name="CAPC2012X140N">
<text x="-1.69" y="-1.05" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.69" y="1.05" size="0.5" layer="25">&gt;NAME</text>
<wire x1="1.07" y1="-0.7" x2="-1.07" y2="-0.7" width="0.127" layer="51"/>
<wire x1="1.07" y1="0.7" x2="-1.07" y2="0.7" width="0.127" layer="51"/>
<wire x1="1.07" y1="-0.7" x2="1.07" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.07" y1="-0.7" x2="-1.07" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.685" y1="-0.96" x2="1.685" y2="-0.96" width="0.05" layer="39"/>
<wire x1="-1.685" y1="0.96" x2="1.685" y2="0.96" width="0.05" layer="39"/>
<wire x1="-1.685" y1="-0.96" x2="-1.685" y2="0.96" width="0.05" layer="39"/>
<wire x1="1.685" y1="-0.96" x2="1.685" y2="0.96" width="0.05" layer="39"/>
<smd name="1" x="-0.895" y="0" dx="1.08" dy="1.42" layer="1"/>
<smd name="2" x="0.895" y="0" dx="1.08" dy="1.42" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="GRM21BR61A226ME51L">
<text x="0" y="3.81093125" size="1.77843125" layer="95">&gt;NAME</text>
<text x="0" y="-5.08848125" size="1.78096875" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.906859375" x2="0.635" y2="1.905" layer="94"/>
<rectangle x1="1.90685" y1="-1.90685" x2="2.54" y2="1.905" layer="94"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GRM21BR61A226ME51L" prefix="C">
<description>SMD Capacitor X5R(EIA) with Capacitance: 22uF Tol. 20%. Rated Voltage: 10Vdc </description>
<gates>
<gate name="G$1" symbol="GRM21BR61A226ME51L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X140N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" SMD capacitor X5R(EIA) with capacitance 22uF Tol.20%. Rated voltage 10Vdc 85C "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="490-10511-1-ND"/>
<attribute name="MF" value="Murata"/>
<attribute name="MP" value="GRM21BR61A226ME51L"/>
<attribute name="PACKAGE" value="2012 Murata"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/GRM21BR61A226ME51L/?ref=eda"/>
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
<parts>
<part name="IC1" library="AZ1117IH-3.3TRG1" deviceset="AZ1117IH-3.3TRG1" device=""/>
<part name="C2" library="GRM21BR71A106KA73L" deviceset="GRM21BR71A106KA73L" device="" value="10 μF"/>
<part name="J1" library="2 Pin JST Connector" deviceset="B2B-PH-K-S(LF)(SN)" device=""/>
<part name="J2" library="2 Pin JST Connector" deviceset="B2B-PH-K-S(LF)(SN)" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C1" library="GRM21BR61A226ME51L" deviceset="GRM21BR61A226ME51L" device="" value="22 μF"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="63.5" y="66.04" smashed="yes" rot="MR180">
<attribute name="NAME" x="67.31" y="58.42" size="1.778" layer="95" rot="MR180" align="center-left"/>
<attribute name="VALUE" x="67.31" y="60.96" size="1.778" layer="96" rot="MR180" align="center-left"/>
</instance>
<instance part="C2" gate="G$1" x="106.68" y="60.96" smashed="yes" rot="R90">
<attribute name="NAME" x="102.86906875" y="60.96" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="111.76848125" y="60.96" size="1.78096875" layer="96" rot="R90"/>
</instance>
<instance part="J1" gate="A" x="33.02" y="71.12" smashed="yes" rot="MR0">
<attribute name="NAME" x="28.8544" y="76.4286" size="2.0828" layer="95" ratio="6" rot="SMR0"/>
</instance>
<instance part="J2" gate="A" x="33.02" y="50.8" smashed="yes" rot="MR0">
<attribute name="NAME" x="28.8544" y="56.1086" size="2.0828" layer="95" ratio="6" rot="SMR0"/>
</instance>
<instance part="P+1" gate="VCC" x="116.84" y="81.28" smashed="yes">
<attribute name="VALUE" x="114.3" y="78.74" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="48.26" y="55.88" smashed="yes">
<attribute name="VALUE" x="45.72" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="33.02" y="35.56" smashed="yes">
<attribute name="VALUE" x="30.48" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="106.68" y="50.8" smashed="yes">
<attribute name="VALUE" x="104.14" y="48.26" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="48.26" y="66.04" smashed="yes" rot="R90">
<attribute name="NAME" x="44.44906875" y="66.04" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="53.34848125" y="66.04" size="1.78096875" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="J2" gate="A" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="33.02" y1="48.26" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="48.26" y1="63.5" x2="63.5" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="ADJ/GND"/>
<wire x1="63.5" y1="63.5" x2="63.5" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="48.26" y1="63.5" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<junction x="48.26" y="63.5"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="106.68" y1="58.42" x2="106.68" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J2" gate="A" pin="1"/>
<pinref part="J1" gate="A" pin="2"/>
<wire x1="33.02" y1="50.8" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J1" gate="A" pin="1"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="33.02" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="INPUT"/>
<wire x1="63.5" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<junction x="48.26" y="71.12"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OUTPUT"/>
<wire x1="63.5" y1="68.58" x2="60.96" y2="68.58" width="0.1524" layer="91"/>
<wire x1="60.96" y1="68.58" x2="60.96" y2="78.74" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="60.96" y1="78.74" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VOUT"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="96.52" y1="66.04" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
<wire x1="106.68" y1="66.04" x2="116.84" y2="66.04" width="0.1524" layer="91"/>
<junction x="106.68" y="66.04"/>
<wire x1="116.84" y1="66.04" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<junction x="116.84" y="78.74"/>
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
