<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>oled_process</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>6</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>3</id>
              <name>clk</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>oled_process.clk.m_if.Val</originalName>
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
              <id>4</id>
              <name>reset</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>oled_process.reset.m_if.Val</originalName>
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
              <id>5</id>
              <name>en</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>oled_process.en.m_if.Val</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>0</if_type>
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
              <id>6</id>
              <name>s</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>oled_process.s.m_if.Val.V</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>6</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_5">
          <Value>
            <Obj>
              <type>1</type>
              <id>7</id>
              <name>e</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>oled_process.e.m_if.Val</originalName>
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
        <item class_id_reference="3" object_id="_6">
          <Value>
            <Obj>
              <type>1</type>
              <id>8</id>
              <name>s_f</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>oled_process.s_f.m_if.Val</originalName>
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
        <item class_id="9" tracking_level="1" version="0" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>23</id>
              <name>oled_process_ssdm</name>
              <fileName>src/modules/oled_process.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>22</lineNumber>
              <contextFuncName>oled_process</contextFuncName>
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
                        <first>src/modules/oled_process.h</first>
                        <second>oled_process</second>
                      </first>
                      <second>22</second>
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
            <item>42</item>
          </oprand_edges>
          <opcode>load</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>24</id>
              <name/>
              <fileName>src/modules/oled_process.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>22</lineNumber>
              <contextFuncName>oled_process</contextFuncName>
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
                        <first>src/modules/oled_process.h</first>
                        <second>oled_process</second>
                      </first>
                      <second>22</second>
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
            <item>43</item>
            <item>44</item>
            <item>45</item>
          </oprand_edges>
          <opcode>br</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>37</id>
              <name/>
              <fileName>src/modules/oled_process.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>22</lineNumber>
              <contextFuncName>oled_process</contextFuncName>
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
                        <first>src/modules/oled_process.h</first>
                        <second>oled_process</second>
                      </first>
                      <second>22</second>
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
        <item class_id_reference="9" object_id="_10">
          <Value>
            <Obj>
              <type>0</type>
              <id>39</id>
              <name/>
              <fileName>src/modules/oled_process.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>22</lineNumber>
              <contextFuncName>oled_process</contextFuncName>
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
                        <first>src/modules/oled_process.h</first>
                        <second>oled_process</second>
                      </first>
                      <second>22</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_oled_process_do_oled_process_fu_70</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>9</count>
            <item_version>0</item_version>
            <item>47</item>
            <item>48</item>
            <item>49</item>
            <item>50</item>
            <item>51</item>
            <item>52</item>
            <item>53</item>
            <item>54</item>
            <item>55</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_11">
          <Value>
            <Obj>
              <type>0</type>
              <id>40</id>
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
        <item class_id="16" tracking_level="1" version="0" object_id="_12">
          <Value>
            <Obj>
              <type>2</type>
              <id>46</id>
              <name>oled_process_do_oled_process</name>
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
          <content>&lt;constant:oled_process::do_oled_process&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_13">
          <Obj>
            <type>3</type>
            <id>25</id>
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
            <item>23</item>
            <item>24</item>
          </node_objs>
        </item>
        <item class_id_reference="18" object_id="_14">
          <Obj>
            <type>3</type>
            <id>38</id>
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
            <item>37</item>
          </node_objs>
        </item>
        <item class_id_reference="18" object_id="_15">
          <Obj>
            <type>3</type>
            <id>41</id>
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
            <item>39</item>
            <item>40</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>15</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_16">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>23</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>43</id>
          <edge_type>1</edge_type>
          <source_obj>23</source_obj>
          <sink_obj>24</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>44</id>
          <edge_type>2</edge_type>
          <source_obj>38</source_obj>
          <sink_obj>24</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>45</id>
          <edge_type>2</edge_type>
          <source_obj>41</source_obj>
          <sink_obj>24</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>47</id>
          <edge_type>1</edge_type>
          <source_obj>46</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>48</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>49</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>50</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>51</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>52</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>53</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>54</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>55</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>39</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>246</id>
          <edge_type>2</edge_type>
          <source_obj>25</source_obj>
          <sink_obj>41</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>247</id>
          <edge_type>2</edge_type>
          <source_obj>25</source_obj>
          <sink_obj>38</sink_obj>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_31">
        <mId>1</mId>
        <mTag>oled_process::oled_process.1</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>3</count>
          <item_version>0</item_version>
          <item>25</item>
          <item>38</item>
          <item>41</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>772</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="24" tracking_level="1" version="0" object_id="_32">
      <states class_id="25" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="26" tracking_level="1" version="0" object_id="_33">
          <id>1</id>
          <operations class_id="27" tracking_level="0" version="0">
            <count>28</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_34">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_35">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_36">
              <id>12</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_37">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_38">
              <id>14</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_39">
              <id>15</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_40">
              <id>16</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_41">
              <id>17</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_42">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_43">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_44">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_45">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_46">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_47">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_48">
              <id>24</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_49">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_50">
              <id>27</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_51">
              <id>28</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_52">
              <id>29</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_53">
              <id>30</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_54">
              <id>31</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_55">
              <id>32</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_56">
              <id>33</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_57">
              <id>34</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_58">
              <id>35</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_59">
              <id>36</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_60">
              <id>37</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_61">
              <id>39</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="26" object_id="_62">
          <id>2</id>
          <operations>
            <count>2</count>
            <item_version>0</item_version>
            <item class_id_reference="28" object_id="_63">
              <id>39</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_64">
              <id>40</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="29" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="30" tracking_level="1" version="0" object_id="_65">
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
                    <first>23</first>
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
    <res class_id="36" tracking_level="1" version="0" object_id="_66">
      <dp_component_resource class_id="37" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="38" tracking_level="0" version="0">
          <first>grp_oled_process_do_oled_process_fu_70 (oled_process_do_oled_process)</first>
          <second class_id="39" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="40" tracking_level="0" version="0">
              <first>DSP48E</first>
              <second>2</second>
            </item>
            <item>
              <first>FF</first>
              <second>359</second>
            </item>
            <item>
              <first>LUT</first>
              <second>471</second>
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
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>en</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>s</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>6</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>6</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>grp_oled_process_do_oled_process_fu_70</first>
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
          <first>grp_oled_process_do_oled_process_fu_70 (oled_process_do_oled_process)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>39</item>
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
        <first>23</first>
        <second class_id="45" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>24</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>37</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>39</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>40</first>
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
        <first>25</first>
        <second class_id="48" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>38</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>41</first>
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
        <first>70</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>39</item>
          <item>39</item>
        </second>
      </item>
      <item>
        <first>90</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>23</item>
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
        <first>grp_oled_process_do_oled_process_fu_70</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>39</item>
          <item>39</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>oled_process_ssdm_load_fu_90</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>23</item>
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
      <count>6</count>
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
              <item>39</item>
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
              <item>39</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>en</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>39</item>
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
              <item>39</item>
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
              <item>39</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>s_f</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>39</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="58" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="59" tracking_level="0" version="0">
        <first>7</first>
        <second>FIFO_SRL</second>
      </item>
      <item>
        <first>8</first>
        <second>FIFO_SRL</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>
