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
<library name="L293NE">
<packages>
<package name="DIP762W45P254L1980H508Q16">
<circle x="-5" y="8.89" radius="0.1" width="0.2" layer="21"/>
<circle x="-5" y="8.89" radius="0.1" width="0.2" layer="51"/>
<wire x1="-3.3" y1="9.9" x2="3.3" y2="9.9" width="0.127" layer="51"/>
<wire x1="-3.3" y1="-9.9" x2="3.3" y2="-9.9" width="0.127" layer="51"/>
<wire x1="-3.3" y1="9.9" x2="3.3" y2="9.9" width="0.127" layer="21"/>
<wire x1="-3.3" y1="-9.9" x2="3.3" y2="-9.9" width="0.127" layer="21"/>
<wire x1="-3.3" y1="9.9" x2="-3.3" y2="-9.9" width="0.127" layer="51"/>
<wire x1="3.3" y1="9.9" x2="3.3" y2="-9.9" width="0.127" layer="51"/>
<wire x1="4.685" y1="10.15" x2="-4.685" y2="10.15" width="0.05" layer="39"/>
<wire x1="4.685" y1="-10.15" x2="-4.685" y2="-10.15" width="0.05" layer="39"/>
<wire x1="4.685" y1="10.15" x2="4.685" y2="-10.15" width="0.05" layer="39"/>
<wire x1="-4.685" y1="10.15" x2="-4.685" y2="-10.15" width="0.05" layer="39"/>
<text x="-3.5" y="-10.5" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<text x="-3.5" y="10.5" size="1.27" layer="25">&gt;NAME</text>
<pad name="1" x="-3.81" y="8.89" drill="0.74" shape="square"/>
<pad name="2" x="-3.81" y="6.35" drill="0.74"/>
<pad name="3" x="-3.81" y="3.81" drill="0.74"/>
<pad name="4" x="-3.81" y="1.27" drill="0.74"/>
<pad name="5" x="-3.81" y="-1.27" drill="0.74"/>
<pad name="6" x="-3.81" y="-3.81" drill="0.74"/>
<pad name="7" x="-3.81" y="-6.35" drill="0.74"/>
<pad name="8" x="-3.81" y="-8.89" drill="0.74"/>
<pad name="9" x="3.81" y="-8.89" drill="0.74"/>
<pad name="10" x="3.81" y="-6.35" drill="0.74"/>
<pad name="11" x="3.81" y="-3.81" drill="0.74"/>
<pad name="12" x="3.81" y="-1.27" drill="0.74"/>
<pad name="13" x="3.81" y="1.27" drill="0.74"/>
<pad name="14" x="3.81" y="3.81" drill="0.74"/>
<pad name="15" x="3.81" y="6.35" drill="0.74"/>
<pad name="16" x="3.81" y="8.89" drill="0.74"/>
</package>
</packages>
<symbols>
<symbol name="L293NE">
<wire x1="-12.7" y1="17.78" x2="12.7" y2="17.78" width="0.41" layer="94"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="-17.78" width="0.41" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.41" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="17.78" width="0.41" layer="94"/>
<text x="-12.7" y="18.78" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-12.7" y="-21.78" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="1,2EN" x="-17.78" y="7.62" length="middle" direction="in"/>
<pin name="1A" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="2A" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="3,4EN" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="3A" x="-17.78" y="-2.54" length="middle" direction="in"/>
<pin name="4A" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="VCC1" x="17.78" y="15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="VCC2" x="17.78" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="1Y" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="2Y" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="3Y" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="4Y" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
<pin name="GND" x="17.78" y="-12.7" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L293NE" prefix="U">
<description> &lt;a href="https://pricing.snapeda.com/parts/L293NE/Texas%20Instruments/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="A" symbol="L293NE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP762W45P254L1980H508Q16">
<connects>
<connect gate="A" pin="1,2EN" pad="1"/>
<connect gate="A" pin="1A" pad="2"/>
<connect gate="A" pin="1Y" pad="3"/>
<connect gate="A" pin="2A" pad="7"/>
<connect gate="A" pin="2Y" pad="6"/>
<connect gate="A" pin="3,4EN" pad="9"/>
<connect gate="A" pin="3A" pad="10"/>
<connect gate="A" pin="3Y" pad="11"/>
<connect gate="A" pin="4A" pad="15"/>
<connect gate="A" pin="4Y" pad="14"/>
<connect gate="A" pin="GND" pad="4 5 12 13"/>
<connect gate="A" pin="VCC1" pad="16"/>
<connect gate="A" pin="VCC2" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" Quadruple Half-H Drivers 16-PDIP 0 to 70 "/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="L293NE"/>
<attribute name="PACKAGE" value="PDIP-16 Texas Instruments"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/L293NE/?ref=eda"/>
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
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26997/1" library_version="2">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:27060/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
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
<part name="U1" library="L293NE" deviceset="L293NE" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device="" value="3.3 V"/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device="" value="3.3 V"/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device="" value="BAT"/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device="" value="BAT"/>
<part name="C1" library="GRM21BR71A106KA73L" deviceset="GRM21BR71A106KA73L" device="" value="0.1 µF"/>
<part name="C2" library="GRM21BR71A106KA73L" deviceset="GRM21BR71A106KA73L" device="" value="4.7 µF"/>
<part name="C3" library="GRM21BR71A106KA73L" deviceset="GRM21BR71A106KA73L" device="" value="0.1 µF"/>
<part name="C4" library="GRM21BR71A106KA73L" deviceset="GRM21BR71A106KA73L" device="" value="4.7 µF"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="" value="MGND"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="PB7"/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="PB6"/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="PB8"/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="PB9"/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="M1L"/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="M1R"/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="M2L"/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device="" value="M2R"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="35.56" y="33.02" smashed="yes">
<attribute name="NAME" x="22.86" y="51.8" size="2.0828" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="22.86" y="11.24" size="2.0828" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="P+1" gate="VCC" x="-7.62" y="50.8" smashed="yes" rot="R90">
<attribute name="VALUE" x="-5.08" y="48.26" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+2" gate="VCC" x="-7.62" y="33.02" smashed="yes" rot="R90">
<attribute name="VALUE" x="-5.08" y="30.48" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+3" gate="VCC" x="86.36" y="48.26" smashed="yes" rot="R270">
<attribute name="VALUE" x="83.82" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="P+4" gate="VCC" x="129.54" y="45.72" smashed="yes" rot="R270">
<attribute name="VALUE" x="127" y="48.26" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="60.96" y="50.8" smashed="yes" rot="R90">
<attribute name="NAME" x="57.14906875" y="50.8" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="66.04848125" y="50.8" size="1.78096875" layer="96" rot="R90"/>
</instance>
<instance part="C2" gate="G$1" x="73.66" y="50.8" smashed="yes" rot="R90">
<attribute name="NAME" x="69.84906875" y="50.8" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="78.74848125" y="50.8" size="1.78096875" layer="96" rot="R90"/>
</instance>
<instance part="C3" gate="G$1" x="101.6" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="97.78906875" y="48.26" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="106.68848125" y="48.26" size="1.78096875" layer="96" rot="R90"/>
</instance>
<instance part="C4" gate="G$1" x="114.3" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="110.48906875" y="48.26" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="119.38848125" y="48.26" size="1.78096875" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="68.58" y="63.5" smashed="yes" rot="R180">
<attribute name="VALUE" x="71.12" y="66.04" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND2" gate="1" x="91.44" y="7.62" smashed="yes">
<attribute name="VALUE" x="88.9" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="2.54" y="45.72" smashed="yes" rot="R90">
<attribute name="VALUE" x="-0.635" y="43.815" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="2.54" y="38.1" smashed="yes" rot="R90">
<attribute name="VALUE" x="-0.635" y="36.195" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="2.54" y="20.32" smashed="yes" rot="R90">
<attribute name="VALUE" x="-0.635" y="18.415" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY4" gate="G$1" x="2.54" y="27.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="-0.635" y="26.035" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY5" gate="G$1" x="63.5" y="40.64" smashed="yes" rot="R270">
<attribute name="VALUE" x="66.675" y="42.545" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY6" gate="G$1" x="63.5" y="30.48" smashed="yes" rot="R270">
<attribute name="VALUE" x="66.675" y="32.385" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY7" gate="G$1" x="68.58" y="35.56" smashed="yes" rot="R270">
<attribute name="VALUE" x="71.755" y="37.465" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY8" gate="G$1" x="68.58" y="25.4" smashed="yes" rot="R270">
<attribute name="VALUE" x="71.755" y="27.305" size="1.778" layer="96" rot="R270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="U1" gate="A" pin="VCC1"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="53.34" y1="48.26" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="60.96" y1="48.26" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<junction x="60.96" y="48.26"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="73.66" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<junction x="73.66" y="48.26"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VCC2"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="53.34" y1="45.72" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="101.6" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<junction x="101.6" y="45.72"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="114.3" y1="45.72" x2="127" y2="45.72" width="0.1524" layer="91"/>
<junction x="114.3" y="45.72"/>
</segment>
<segment>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<pinref part="U1" gate="A" pin="3,4EN"/>
<wire x1="-5.08" y1="33.02" x2="17.78" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="1,2EN"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="17.78" y1="40.64" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<wire x1="17.78" y1="50.8" x2="-5.08" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="45.72" x2="15.24" y2="45.72" width="0.1524" layer="91"/>
<wire x1="15.24" y1="45.72" x2="15.24" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="1A"/>
<wire x1="15.24" y1="38.1" x2="17.78" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="38.1" x2="5.08" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="2A"/>
<wire x1="5.08" y1="35.56" x2="17.78" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="27.94" x2="5.08" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="3A"/>
<wire x1="5.08" y1="30.48" x2="17.78" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="20.32" x2="17.78" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="4A"/>
<wire x1="17.78" y1="20.32" x2="17.78" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="1Y"/>
<pinref part="SUPPLY5" gate="G$1" pin="VCC"/>
<wire x1="53.34" y1="40.64" x2="60.96" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="2Y"/>
<wire x1="53.34" y1="38.1" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
<pinref part="SUPPLY7" gate="G$1" pin="VCC"/>
<wire x1="66.04" y1="38.1" x2="66.04" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="3Y"/>
<wire x1="53.34" y1="35.56" x2="60.96" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SUPPLY6" gate="G$1" pin="VCC"/>
<wire x1="60.96" y1="35.56" x2="60.96" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="4Y"/>
<wire x1="53.34" y1="33.02" x2="53.34" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY8" gate="G$1" pin="VCC"/>
<wire x1="53.34" y1="25.4" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="60.96" y1="55.88" x2="68.58" y2="55.88" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="68.58" y1="55.88" x2="73.66" y2="55.88" width="0.1524" layer="91"/>
<wire x1="68.58" y1="60.96" x2="68.58" y2="55.88" width="0.1524" layer="91"/>
<junction x="68.58" y="55.88"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="101.6" y1="53.34" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
<wire x1="114.3" y1="53.34" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<junction x="114.3" y="53.34"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="137.16" y1="53.34" x2="137.16" y2="10.16" width="0.1524" layer="91"/>
<wire x1="137.16" y1="10.16" x2="91.44" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="GND"/>
<wire x1="91.44" y1="10.16" x2="91.44" y2="20.32" width="0.1524" layer="91"/>
<wire x1="91.44" y1="20.32" x2="53.34" y2="20.32" width="0.1524" layer="91"/>
<junction x="91.44" y="10.16"/>
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
