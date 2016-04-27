<patch-1.0 appVersion="1.0.9">
   <comment type="patch/comment" x="574" y="14" text="-------- Ping/pong/stereo/mod delay --------"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_l" x="98" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="filter_mix_l" x="210" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp_l" x="294" y="56">
      <params>
         <frac32.u.map name="freq" value="30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp_l" x="378" y="56">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="hp select l" x="462" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_fb_l" x="574" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="vca_l" x="658" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="del_mix_l" x="728" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_l" x="812" y="56">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="delay l" x="952" y="56">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_l"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_l" x="1134" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="1232" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="f48c5f63c31c60c077648e2a0886e592e4fa9434" name="pre select l" x="182" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="826" y="126">
      <params>
         <frac32.u.map name="amp" value="62.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="diff_inv" x="1120" y="182">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="826" y="210" text="Limit to avoid delay time wrap around"/>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="time_l" x="854" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="pre_filter" x="182" y="252">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="lp" x="294" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="hp" x="378" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="hp_enable" x="462" y="252">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="ping" x="574" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="feedback" x="658" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="time" x="770" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="time_diff" x="924" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="diff_limiter" x="1008" y="252">
      <params>
         <frac32.u.map name="amp" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="const:_1" x="1120" y="252">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry wet" x="1232" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="time_r" x="854" y="308">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="182" y="350" text="Pre delay filter"/>
   <comment type="patch/comment" x="294" y="350" text="Feedback LP and HP filters"/>
   <comment type="patch/comment" x="462" y="350" text="Enable hi pass"/>
   <comment type="patch/comment" x="574" y="350" text="Stereo/Ping"/>
   <comment type="patch/comment" x="658" y="350" text="Feedback gain"/>
   <comment type="patch/comment" x="770" y="350" text="Delay time"/>
   <comment type="patch/comment" x="924" y="350" text="L/R time diff"/>
   <comment type="patch/comment" x="1008" y="350" text="Time diff limiter"/>
   <comment type="patch/comment" x="1120" y="350" text="Const 1.0"/>
   <comment type="patch/comment" x="1232" y="350" text="Dry/wet mix"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_r" x="98" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="filter_mix_r" x="210" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp_r" x="294" y="434">
      <params>
         <frac32.u.map name="freq" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp_r" x="378" y="434">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="hp select r" x="462" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_fb_r" x="574" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="vca_r" x="658" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="del_mix_r" x="728" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_r" x="812" y="434">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="delay r" x="952" y="434">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_r"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_r" x="1134" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="1232" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="f48c5f63c31c60c077648e2a0886e592e4fa9434" name="pre select r" x="182" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="826" y="504">
      <params>
         <frac32.u.map name="amp" value="62.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="lp" outlet="out"/>
         <dest obj="lp_r" inlet="freq"/>
         <dest obj="lp_l" inlet="freq"/>
      </net>
      <net>
         <source obj="hp" outlet="out"/>
         <dest obj="hp_r" inlet="freq"/>
         <dest obj="hp_l" inlet="freq"/>
      </net>
      <net>
         <source obj="in_r" outlet="inlet"/>
         <dest obj="xfade_r" inlet="i1"/>
         <dest obj="pre select r" inlet="i"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="vca_l" inlet="b"/>
         <dest obj="vca_r" inlet="b"/>
      </net>
      <net>
         <source obj="dry wet" outlet="out"/>
         <dest obj="xfade_l" inlet="c"/>
         <dest obj="xfade_r" inlet="c"/>
      </net>
      <net>
         <source obj="ping" outlet="out"/>
         <dest obj="xfade_fb_r" inlet="c"/>
         <dest obj="xfade_fb_l" inlet="c"/>
      </net>
      <net>
         <source obj="delay l" outlet="out"/>
         <dest obj="xfade_l" inlet="i2"/>
         <dest obj="filter_mix_l" inlet="in1"/>
      </net>
      <net>
         <source obj="xfade_l" outlet="o"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="delay r" outlet="out"/>
         <dest obj="xfade_r" inlet="i2"/>
         <dest obj="filter_mix_r" inlet="in1"/>
      </net>
      <net>
         <source obj="xfade_r" outlet="o"/>
         <dest obj="out_r" inlet="outlet"/>
      </net>
      <net>
         <source obj="time" outlet="out"/>
         <dest obj="time_l" inlet="a"/>
         <dest obj="time_r" inlet="a"/>
      </net>
      <net>
         <source obj="xfade_fb_r" outlet="o"/>
         <dest obj="vca_r" inlet="a"/>
      </net>
      <net>
         <source obj="xfade_fb_l" outlet="o"/>
         <dest obj="vca_l" inlet="a"/>
      </net>
      <net>
         <source obj="vca_r" outlet="result"/>
         <dest obj="del_mix_r" inlet="in1"/>
      </net>
      <net>
         <source obj="del_mix_r" outlet="out"/>
         <dest obj="write_r" inlet="in"/>
      </net>
      <net>
         <source obj="del_mix_l" outlet="out"/>
         <dest obj="write_l" inlet="in"/>
      </net>
      <net>
         <source obj="vca_l" outlet="result"/>
         <dest obj="del_mix_l" inlet="in1"/>
      </net>
      <net>
         <source obj="lp_r" outlet="out"/>
         <dest obj="hp_r" inlet="in"/>
         <dest obj="hp select r" inlet="i1"/>
      </net>
      <net>
         <source obj="lp_l" outlet="out"/>
         <dest obj="hp_l" inlet="in"/>
         <dest obj="hp select l" inlet="i1"/>
      </net>
      <net>
         <source obj="hp select r" outlet="o"/>
         <dest obj="xfade_fb_r" inlet="i1"/>
         <dest obj="xfade_fb_l" inlet="i2"/>
      </net>
      <net>
         <source obj="hp_enable" outlet="o"/>
         <dest obj="hp select r" inlet="s"/>
         <dest obj="hp select l" inlet="s"/>
      </net>
      <net>
         <source obj="diff_inv" outlet="out"/>
         <dest obj="time_l" inlet="b"/>
      </net>
      <net>
         <source obj="hp_l" outlet="out"/>
         <dest obj="hp select l" inlet="i2"/>
      </net>
      <net>
         <source obj="hp_r" outlet="out"/>
         <dest obj="hp select r" inlet="i2"/>
      </net>
      <net>
         <source obj="in_l" outlet="inlet"/>
         <dest obj="xfade_l" inlet="i1"/>
         <dest obj="pre select l" inlet="i"/>
      </net>
      <net>
         <source obj="filter_mix_l" outlet="out"/>
         <dest obj="lp_l" inlet="in"/>
      </net>
      <net>
         <source obj="pre select l" outlet="o0"/>
         <dest obj="del_mix_l" inlet="in2"/>
      </net>
      <net>
         <source obj="pre select l" outlet="o1"/>
         <dest obj="filter_mix_l" inlet="in2"/>
      </net>
      <net>
         <source obj="pre_filter" outlet="o"/>
         <dest obj="pre select l" inlet="s"/>
         <dest obj="pre select r" inlet="s"/>
      </net>
      <net>
         <source obj="pre select r" outlet="o1"/>
         <dest obj="filter_mix_r" inlet="in2"/>
      </net>
      <net>
         <source obj="pre select r" outlet="o0"/>
         <dest obj="del_mix_r" inlet="in2"/>
      </net>
      <net>
         <source obj="filter_mix_r" outlet="out"/>
         <dest obj="lp_r" inlet="in"/>
      </net>
      <net>
         <source obj="hp select l" outlet="o"/>
         <dest obj="xfade_fb_l" inlet="i1"/>
         <dest obj="xfade_fb_r" inlet="i2"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="delay l" inlet="time"/>
      </net>
      <net>
         <source obj="time_l" outlet="result"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="delay r" inlet="time"/>
      </net>
      <net>
         <source obj="time_r" outlet="result"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="const:_1" outlet="out"/>
         <dest obj="diff_inv" inlet="in1"/>
      </net>
      <net>
         <source obj="time_diff" outlet="out"/>
         <dest obj="diff_limiter" inlet="in"/>
      </net>
      <net>
         <source obj="diff_limiter" outlet="out"/>
         <dest obj="diff_inv" inlet="in2"/>
         <dest obj="time_r" inlet="b"/>
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
      <x>440</x>
      <y>89</y>
      <width>1422</width>
      <height>764</height>
   </windowPos>
</patch-1.0>