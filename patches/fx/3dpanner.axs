<patch-1.0 appVersion="1.0.10">
   <comment type="patch/comment" x="112" y="14" text="Dircetion"/>
   <comment type="patch/comment" x="462" y="14" text="Back/front volume"/>
   <comment type="patch/comment" x="714" y="14" text="Left/right panner"/>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="direction" x="112" y="42">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="direction x" x="252" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="width" x="336" y="42">
      <params>
         <frac32.u.map name="amp" onParent="true" value="39.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/math/offset_scale_1" uuid="8943f98651aed59bf140da20c3f97585a2dffa8d" name="vol scaler" x="462" y="42">
      <params>
         <frac32.s.map name="offset" value="48.0"/>
         <frac32.s.map name="scale" value="-16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="616" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="spat/pan m" uuid="f6c6c0d7224841d9d76962e64d7f779d8194b7f9" name="pan_1" x="714" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="854" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="854" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="28" y="140">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="462" y="182" text="Back  lpf"/>
   <comment type="patch/comment" x="630" y="182" text="Front hpf"/>
   <obj type="disp/chart b" uuid="d2bdf496f96ee521628490a038411210fbe29b15" name="left/right" x="798" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/chart b" uuid="d2bdf496f96ee521628490a038411210fbe29b15" name="back/fore" x="882" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="direction y" x="252" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="depth" x="336" y="210">
      <params>
         <frac32.u.map name="amp" onParent="true" value="41.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/math/offset_scale_1" uuid="8943f98651aed59bf140da20c3f97585a2dffa8d" name="lpf scaler" x="462" y="210">
      <params>
         <frac32.s.map name="offset" value="0.0"/>
         <frac32.s.map name="scale" value="-12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/math/offset_scale_1" uuid="8943f98651aed59bf140da20c3f97585a2dffa8d" name="hpf scaler" x="630" y="210">
      <params>
         <frac32.s.map name="offset" value="0.0"/>
         <frac32.s.map name="scale" value="-8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in_x" x="28" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_x" x="112" y="238">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="252" y="308" text="Panner LFO"/>
   <obj type="disp/chart b" uuid="d2bdf496f96ee521628490a038411210fbe29b15" name="lpf" x="882" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in_y" x="28" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_y" x="112" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/lfo/sin_2_b" uuid="75f7330c26a18733215dccc3ba3b9008545c1daa9" name="rate" x="252" y="336">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-48.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_1" x="462" y="336">
      <params>
         <frac32.u.map name="freq" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="d218e96cdc9cbc7e375dc9192adb48f705ef701a" name="lpf xfade" x="546" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp1_1" x="630" y="336">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="d218e96cdc9cbc7e375dc9192adb48f705ef701a" name="hpf xfade" x="714" y="336">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="112" y="406" text="External x/y pan"/>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="ext xy" x="112" y="434">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/chart b" uuid="d2bdf496f96ee521628490a038411210fbe29b15" name="hpf" x="882" y="434">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="rate" outlet="0"/>
         <dest obj="mux_x" inlet="i1"/>
      </net>
      <net>
         <source obj="rate" outlet="90"/>
         <dest obj="mux_y" inlet="i1"/>
      </net>
      <net>
         <source obj="lp1_1" outlet="out"/>
         <dest obj="lpf xfade" inlet="i2"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="pan_1" inlet="i1"/>
      </net>
      <net>
         <source obj="lpf scaler" outlet="out"/>
         <dest obj="lp1_1" inlet="freq"/>
         <dest obj="lpf" inlet="in"/>
      </net>
      <net>
         <source obj="direction y" outlet="o"/>
         <dest obj="depth" inlet="in"/>
      </net>
      <net>
         <source obj="direction x" outlet="o"/>
         <dest obj="width" inlet="in"/>
      </net>
      <net>
         <source obj="direction" outlet="o"/>
         <dest obj="direction y" inlet="s"/>
         <dest obj="direction x" inlet="s"/>
      </net>
      <net>
         <source obj="vol scaler" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="back/fore" inlet="in"/>
      </net>
      <net>
         <source obj="width" outlet="out"/>
         <dest obj="pan_1" inlet="c"/>
         <dest obj="left/right" inlet="in"/>
      </net>
      <net>
         <source obj="depth" outlet="out"/>
         <dest obj="vol scaler" inlet="in"/>
         <dest obj="lpf scaler" inlet="in"/>
         <dest obj="hpf scaler" inlet="in"/>
         <dest obj="lpf xfade" inlet="c"/>
         <dest obj="hpf xfade" inlet="c"/>
      </net>
      <net>
         <source obj="hpf scaler" outlet="out"/>
         <dest obj="hp1_1" inlet="freq"/>
         <dest obj="hpf" inlet="in"/>
      </net>
      <net>
         <source obj="lpf xfade" outlet="o"/>
         <dest obj="hp1_1" inlet="in"/>
         <dest obj="hpf xfade" inlet="i2"/>
      </net>
      <net>
         <source obj="hp1_1" outlet="out"/>
         <dest obj="hpf xfade" inlet="i1"/>
      </net>
      <net>
         <source obj="hpf xfade" outlet="o"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="in_y" outlet="inlet"/>
         <dest obj="mux_y" inlet="i2"/>
      </net>
      <net>
         <source obj="in_x" outlet="inlet"/>
         <dest obj="mux_x" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_x" outlet="o"/>
         <dest obj="direction x" inlet="i1"/>
         <dest obj="direction y" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_y" outlet="o"/>
         <dest obj="direction x" inlet="i2"/>
         <dest obj="direction y" inlet="i1"/>
      </net>
      <net>
         <source obj="ext xy" outlet="o"/>
         <dest obj="mux_x" inlet="s"/>
         <dest obj="mux_y" inlet="s"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="lp1_1" inlet="in"/>
         <dest obj="lpf xfade" inlet="i1"/>
      </net>
      <net>
         <source obj="pan_1" outlet="left"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="pan_1" outlet="right"/>
         <dest obj="out_r" inlet="outlet"/>
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
      <License>Secret</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>620</x>
      <y>148</y>
      <width>1194</width>
      <height>738</height>
   </windowPos>
</patch-1.0>