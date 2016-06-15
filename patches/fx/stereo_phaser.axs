<patch-1.0 appVersion="1.0.10">
   <comment type="patch/comment" x="168" y="28" text="---------- Sterao phaser --------"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_l" x="616" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/phaser_32" uuid="14e14b82ec5d8040ae5f7aa33ed5925a7d1eb902" name="phaser_multi2_l" x="714" y="42">
      <params/>
      <attribs>
         <combo attributeName="mode" selection="32 bit"/>
         <spinner attributeName="maxdelay" value="16"/>
         <spinner attributeName="maxstages" value="16"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="924" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_l" x="616" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="mod gain l" x="252" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="time mix l" x="336" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/lfo/sin_ph_b" uuid="75f7330c26a11233215dcdd3ba3b9008545c1daa9" name="sin_ph_b_1" x="588" y="154">
      <params>
         <frac32.s.map name="pitch" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="252" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="manual" x="56" y="224">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="lr_diff" x="154" y="224">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mod amt" x="336" y="224">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="mod freq" x="420" y="224">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="mod phase" x="504" y="224">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="feedback" x="714" y="224">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix" x="798" y="224">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="delay" x="882" y="224">
      <params>
         <int32 name="value" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="stages" x="952" y="224">
      <params>
         <int32 name="value" onParent="true" value="6"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="252" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/lfo/sin_ph_b" uuid="75f7330c26a11233215dcdd3ba3b9008545c1daa9" name="sin_ph_b_2" x="588" y="280">
      <params>
         <frac32.s.map name="pitch" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="56" y="322" text="Manual"/>
   <comment type="patch/comment" x="154" y="322" text="L/R diff"/>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_2" x="518" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="mod gain r" x="252" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="time mix r" x="336" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_3" x="56" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_4" x="154" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/phaser_32" uuid="14e14b82ec5d8040ae5f7aa33ed5925a7d1eb902" name="phaser_multi2_r" x="714" y="392">
      <params/>
      <attribs>
         <combo attributeName="mode" selection="32 bit"/>
         <spinner attributeName="maxdelay" value="16"/>
         <spinner attributeName="maxstages" value="16"/>
      </attribs>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_r" x="616" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_r" x="616" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="924" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="inlet_1" x="602" y="532">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="mod phase" outlet="out"/>
         <dest obj="sin_ph_b_1" inlet="phase"/>
         <dest obj="inv_2" inlet="in"/>
      </net>
      <net>
         <source obj="inv_2" outlet="out"/>
         <dest obj="sin_ph_b_2" inlet="phase"/>
      </net>
      <net>
         <source obj="sin_ph_b_1" outlet="sine"/>
         <dest obj="mod gain l" inlet="a"/>
      </net>
      <net>
         <source obj="sin_ph_b_2" outlet="sine"/>
         <dest obj="mod gain r" inlet="a"/>
      </net>
      <net>
         <source obj="mod gain l" outlet="result"/>
         <dest obj="time mix l" inlet="in2"/>
      </net>
      <net>
         <source obj="mod gain r" outlet="result"/>
         <dest obj="time mix r" inlet="in2"/>
      </net>
      <net>
         <source obj="mod freq" outlet="out"/>
         <dest obj="sin_ph_b_1" inlet="pitch"/>
         <dest obj="sin_ph_b_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="mod amt" outlet="out"/>
         <dest obj="mod gain l" inlet="b"/>
         <dest obj="mod gain r" inlet="b"/>
      </net>
      <net>
         <source obj="time mix l" outlet="out"/>
         <dest obj="interp_l" inlet="i"/>
      </net>
      <net>
         <source obj="time mix r" outlet="out"/>
         <dest obj="interp_r" inlet="i"/>
      </net>
      <net>
         <source obj="interp_r" outlet="o"/>
         <dest obj="phaser_multi2_r" inlet="mod"/>
      </net>
      <net>
         <source obj="interp_l" outlet="o"/>
         <dest obj="phaser_multi2_l" inlet="mod"/>
      </net>
      <net>
         <source obj="in_r" outlet="inlet"/>
         <dest obj="phaser_multi2_r" inlet="in"/>
      </net>
      <net>
         <source obj="in_l" outlet="inlet"/>
         <dest obj="phaser_multi2_l" inlet="in"/>
      </net>
      <net>
         <source obj="phaser_multi2_l" outlet="out"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="phaser_multi2_r" outlet="out"/>
         <dest obj="out_r" inlet="outlet"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="feedback"/>
         <dest obj="phaser_multi2_r" inlet="feedback"/>
      </net>
      <net>
         <source obj="mix" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="mix"/>
         <dest obj="phaser_multi2_r" inlet="mix"/>
      </net>
      <net>
         <source obj="delay" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="delay"/>
         <dest obj="phaser_multi2_r" inlet="delay"/>
      </net>
      <net>
         <source obj="stages" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="stages"/>
         <dest obj="phaser_multi2_r" inlet="stages"/>
      </net>
      <net>
         <source obj="inv_3" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="lr_diff" outlet="out"/>
         <dest obj="inv_4" inlet="in"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="time mix l" inlet="in1"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="time mix r" inlet="in1"/>
      </net>
      <net>
         <source obj="inv_4" outlet="out"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="manual" outlet="out"/>
         <dest obj="inv_3" inlet="in"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="phaser_multi2_l" inlet="saturate"/>
         <dest obj="phaser_multi2_r" inlet="saturate"/>
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
      <x>825</x>
      <y>110</y>
      <width>1088</width>
      <height>799</height>
   </windowPos>
</patch-1.0>