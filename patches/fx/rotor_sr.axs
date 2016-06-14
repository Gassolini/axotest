<patch-1.0 appVersion="1.0.10">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="14" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/osc/quad_sine" uuid="8545c1d75f7330c26a15673215dccc3ba3b900239" name="osc" x="112" y="42">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-39.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="ad1e413d83e5edce017e3e9a4f30d86035cf637" name="div_1" x="224" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="bias0" x="322" y="42">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="420" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_1" x="504" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="420" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="fm" x="14" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="ad1e413d83e5edce017e3e9a4f30d86035cf637" name="div_2" x="224" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="bias90" x="322" y="140">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_5" x="420" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_2" x="504" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="616" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="420" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="ad1e413d83e5edce017e3e9a4f30d86035cf637" name="div_3" x="224" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="bias180" x="322" y="238">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_6" x="420" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_3" x="504" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_3" x="616" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet0" x="14" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet90" x="14" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_3" x="420" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet180" x="14" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="ad1e413d83e5edce017e3e9a4f30d86035cf637" name="div_4" x="224" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="bias270" x="322" y="336">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_7" x="420" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_4" x="504" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_4" x="616" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="714" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet270" x="14" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_4" x="420" y="392">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="bias90" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="*_4" outlet="result"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="osc" outlet="0"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="bias0" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="interp_4" outlet="o"/>
         <dest obj="+_7" inlet="in2"/>
      </net>
      <net>
         <source obj="bias270" outlet="out"/>
         <dest obj="interp_4" inlet="i"/>
      </net>
      <net>
         <source obj="interp_3" outlet="o"/>
         <dest obj="+_6" inlet="in2"/>
      </net>
      <net>
         <source obj="bias180" outlet="out"/>
         <dest obj="interp_3" inlet="i"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="+_5" inlet="in2"/>
      </net>
      <net>
         <source obj="osc" outlet="90"/>
         <dest obj="div_2" inlet="in"/>
      </net>
      <net>
         <source obj="osc" outlet="180"/>
         <dest obj="div_3" inlet="in"/>
      </net>
      <net>
         <source obj="osc" outlet="270"/>
         <dest obj="div_4" inlet="in"/>
      </net>
      <net>
         <source obj="+_5" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="+_6" outlet="out"/>
         <dest obj="*_3" inlet="a"/>
      </net>
      <net>
         <source obj="+_7" outlet="out"/>
         <dest obj="*_4" inlet="a"/>
      </net>
      <net>
         <source obj="inlet270" outlet="inlet"/>
         <dest obj="*_4" inlet="b"/>
      </net>
      <net>
         <source obj="inlet180" outlet="inlet"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="inlet90" outlet="inlet"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="inlet0" outlet="inlet"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="div_2" outlet="out"/>
         <dest obj="+_5" inlet="in1"/>
      </net>
      <net>
         <source obj="div_3" outlet="out"/>
         <dest obj="+_6" inlet="in1"/>
      </net>
      <net>
         <source obj="div_4" outlet="out"/>
         <dest obj="+_7" inlet="in1"/>
      </net>
      <net>
         <source obj="fm" outlet="inlet"/>
         <dest obj="osc" inlet="fm"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="osc" inlet="pitch"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Are Leistad</Author>
      <License>BSD</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>846</x>
      <y>242</y>
      <width>867</width>
      <height>587</height>
   </windowPos>
</patch-1.0>