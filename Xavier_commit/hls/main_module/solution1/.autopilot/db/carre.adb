<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>carre</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>2</id>
              <name>clk</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>carre.clk.m_if.Val</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>reset</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>carre.reset.m_if.Val</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>e</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>carre.e.m_if.Val</originalName>
              <rtlName/>
              <coreName>FIFO_SRL</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>5</id>
              <name>s</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>carre.s.m_if.Val</originalName>
              <rtlName/>
              <coreName>FIFO_SRL</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>17</id>
              <name>carre_ssdm_thread</name>
              <fileName>src/modules/carre.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>20</lineNumber>
              <contextFuncName>carre</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>Y:\Documents\MesDocuments\Cours_nsave\Enseirb-E3_nsave\pr310\git\Xavier_commit\hls</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>src/modules/carre.h</first>
                        <second>carre</second>
                      </first>
                      <second>20</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>34</item>
          </oprand_edges>
          <opcode>load</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>18</id>
              <name/>
              <fileName>src/modules/carre.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>20</lineNumber>
              <contextFuncName>carre</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>Y:\Documents\MesDocuments\Cours_nsave\Enseirb-E3_nsave\pr310\git\Xavier_commit\hls</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>src/modules/carre.h</first>
                        <second>carre</second>
                      </first>
                      <second>20</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>3</count>
            <item_version>0</item_version>
            <item>35</item>
            <item>36</item>
            <item>37</item>
          </oprand_edges>
          <opcode>br</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>29</id>
              <name/>
              <fileName>src/modules/carre.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>21</lineNumber>
              <contextFuncName>carre</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>Y:\Documents\MesDocuments\Cours_nsave\Enseirb-E3_nsave\pr310\git\Xavier_commit\hls</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>src/modules/carre.h</first>
                        <second>carre</second>
                      </first>
                      <second>21</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>31</id>
              <name/>
              <fileName>src/modules/carre.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>20</lineNumber>
              <contextFuncName>carre</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>Y:\Documents\MesDocuments\Cours_nsave\Enseirb-E3_nsave\pr310\git\Xavier_commit\hls</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>src/modules/carre.h</first>
                        <second>carre</second>
                      </first>
                      <second>20</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_carre_do_carre_fu_58</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>39</item>
            <item>40</item>
            <item>41</item>
            <item>42</item>
            <item>43</item>
            <item>44</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>32</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>unreachable</opcode>
          <m_Display>0</m_Display>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>38</id>
              <name>carre_do_carre</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:carre::do_carre&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_11">
          <Obj>
            <type>3</type>
            <id>19</id>
            <name/>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>2</count>
            <item_version>0</item_version>
            <item>17</item>
            <item>18</item>
          </node_objs>
        </item>
        <item class_id_reference="18" object_id="_12">
          <Obj>
            <type>3</type>
            <id>30</id>
            <name/>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>1</count>
            <item_version>0</item_version>
            <item>29</item>
          </node_objs>
        </item>
        <item class_id_reference="18" object_id="_13">
          <Obj>
            <type>3</type>
            <id>33</id>
            <name/>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>2</count>
            <item_version>0</item_version>
            <item>31</item>
            <item>32</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>12</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_14">
          <id>34</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>17</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>35</id>
          <edge_type>1</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>36</id>
          <edge_type>2</edge_type>
          <source_obj>30</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>37</id>
          <edge_type>2</edge_type>
          <source_obj>33</source_obj>
          <sink_obj>18</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>39</id>
          <edge_type>1</edge_type>
          <source_obj>38</source_obj>
          <sink_obj>31</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>40</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>31</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>41</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>31</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>31</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>43</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>31</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>44</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>31</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>210</id>
          <edge_type>2</edge_type>
          <source_obj>19</source_obj>
          <sink_obj>33</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>211</id>
          <edge_type>2</edge_type>
          <source_obj>19</source_obj>
          <sink_obj>30</sink_obj>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_26">
        <mId>1</mId>
        <mTag>carre::carre.1</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>3</count>
          <item_version>0</item_version>
          <item>19</item>
          <item>30</item>
          <item>33</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>8</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="24" tracking_level="1" version="0" object_id="_27">
      <states class_id="25" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="26" tracking_level="1" version="0" object_id="_28">
          <id>1</id>
          <operations class_id="27" tracking_level="0" version="0">
            <count>23</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_29">
              <id>7</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_30">
              <id>8</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_31">
              <id>9</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_32">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_33">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_34">
              <id>12</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_35">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_36">
              <id>14</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_37">
              <id>15</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_38">
              <id>16</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_39">
              <id>17</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_40">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_41">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_42">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_43">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_44">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_45">
              <id>24</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_46">
              <id>25</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_47">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_48">
              <id>27</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_49">
              <id>28</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_50">
              <id>29</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_51">
              <id>31</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="26" object_id="_52">
          <id>2</id>
          <operations>
            <count>2</count>
            <item_version>0</item_version>
            <item class_id_reference="28" object_id="_53">
              <id>31</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_54">
              <id>32</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="29" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="30" tracking_level="1" version="0" object_id="_55">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="31" tracking_level="0" version="0">
            <id>6</id>
            <sop class_id="32" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="33" tracking_level="0" version="0">
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="34" tracking_level="0" version="0">
                  <first class_id="35" tracking_level="0" version="0">
                    <first>17</first>
                    <second>0</second>
                  </first>
                  <second>0</second>
                </item>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="36" tracking_level="1" version="0" object_id="_56">
      <dp_component_resource class_id="37" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="38" tracking_level="0" version="0">
          <first>grp_carre_do_carre_fu_58 (carre_do_carre)</first>
          <second class_id="39" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="40" tracking_level="0" version="0">
              <first>DSP48E</first>
              <second>3</second>
            </item>
            <item>
              <first>FF</first>
              <second>214</second>
            </item>
            <item>
              <first>LUT</first>
              <second>196</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>grp_carre_do_carre_fu_58</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="41" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="42" tracking_level="0" version="0">
          <first>grp_carre_do_carre_fu_58 (carre_do_carre)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>31</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="43" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="44" tracking_level="0" version="0">
        <first>17</first>
        <second class_id="45" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>18</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>29</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>31</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>32</first>
        <second>
          <first>1</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="46" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="47" tracking_level="0" version="0">
        <first>19</first>
        <second class_id="48" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>30</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>33</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="49" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </regions>
    <dp_fu_nodes class_id="50" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="51" tracking_level="0" version="0">
        <first>58</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>31</item>
          <item>31</item>
        </second>
      </item>
      <item>
        <first>72</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>17</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="53" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="54" tracking_level="0" version="0">
        <first>grp_carre_do_carre_fu_58</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>31</item>
          <item>31</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>carre_ssdm_thread_load_fu_72</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>17</item>
        </second>
      </item>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="55" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="56" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="57" tracking_level="0" version="0">
        <first>clk</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>31</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>e</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>31</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>reset</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>31</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>s</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>31</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="58" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="59" tracking_level="0" version="0">
        <first>4</first>
        <second>FIFO_SRL</second>
      </item>
      <item>
        <first>5</first>
        <second>FIFO_SRL</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>