<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>running_cond_update</name>
		<module_structure>Pipeline</module_structure>
		<ret_bitwidth>1</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>instruction</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>instruction</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1852142702</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_2">
				<Value>
					<Obj>
						<type>0</type>
						<id>2</id>
						<name>instruction_read</name>
						<fileName>fetching_decoding_ip/src/running_cond_update.cpp</fileName>
						<fileDirectory>C:\Users\monde\Documents\GitHub\nasa-CPU\HLS</fileDirectory>
						<lineNumber>5</lineNumber>
						<contextFuncName>running_cond_update</contextFuncName>
						<contextNormFuncName>running_cond_update</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>C:\Users\monde\Documents\GitHub\nasa-CPU\HLS</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>fetching_decoding_ip/src/running_cond_update.cpp</first>
											<second>running_cond_update</second>
										</first>
										<second>5</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>997420912</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>7</item>
					<item>8</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>3</id>
						<name>icmp_ln9</name>
						<fileName>fetching_decoding_ip/src/running_cond_update.cpp</fileName>
						<fileDirectory>C:\Users\monde\Documents\GitHub\nasa-CPU\HLS</fileDirectory>
						<lineNumber>9</lineNumber>
						<contextFuncName>running_cond_update</contextFuncName>
						<contextNormFuncName>running_cond_update</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\monde\Documents\GitHub\nasa-CPU\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fetching_decoding_ip/src/running_cond_update.cpp</first>
											<second>running_cond_update</second>
										</first>
										<second>9</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>is_running</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1852400751</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>9</item>
					<item>11</item>
				</oprand_edges>
				<opcode>icmp</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.55</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>_ln11</name>
						<fileName>fetching_decoding_ip/src/running_cond_update.cpp</fileName>
						<fileDirectory>C:\Users\monde\Documents\GitHub\nasa-CPU\HLS</fileDirectory>
						<lineNumber>11</lineNumber>
						<contextFuncName>running_cond_update</contextFuncName>
						<contextNormFuncName>running_cond_update</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\monde\Documents\GitHub\nasa-CPU\HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fetching_decoding_ip/src/running_cond_update.cpp</first>
											<second>running_cond_update</second>
										</first>
										<second>11</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>778396783</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>12</item>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>2</type>
						<id>10</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1226980729</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>32871</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_6">
				<Obj>
					<type>3</type>
					<id>5</id>
					<name>running_cond_update</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<isStorage>0</isStorage>
					<storageDepth>0</storageDepth>
					<coreId>1668304700</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>3</count>
					<item_version>0</item_version>
					<item>2</item>
					<item>3</item>
					<item>4</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_7">
				<id>8</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>2</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_8">
				<id>9</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>3</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_9">
				<id>11</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>3</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_10">
				<id>12</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_11">
			<mId>1</mId>
			<mTag>running_cond_update</mTag>
			<mNormTag>running_cond_update</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>0</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>2</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>3</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>4</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>5</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="33" tracking_level="1" version="0" object_id="_12">
			<region_name>running_cond_update</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>1</pipe_depth>
			<mDBIIViolationVec class_id="34" tracking_level="0" version="0">
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
	</regions>
	<dp_fu_nodes class_id="35" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="36" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="37" tracking_level="0" version="0">
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
	<dp_port_io_nodes class_id="38" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

