<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:phoenix  Version:1.0.0.0 - Thu Jun 11 14:11:09 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.26.0.0 - System Build 16.1	 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/phoenix/v1" prefix="phoenix"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="phoenix:Observation_Information/phoenix:instument_mode_id">
      <sch:assert test=". = ('CME', 'COND', 'COUPONS_TABLE', 'CP', 'CV', 'DOX', 'FRQTEST', 'ISES', 'N/A', 'PARAM_VALUE_TABLE', 'PT', 'PWR', 'SCAN', 'STATE_TABLE', 'TIPS_TABLE')">
        <title>phoenix:Observation_Information/phoenix:instument_mode_id/phoenix:instument_mode_id</title>
        The attribute phoenix:Observation_Information/phoenix:instument_mode_id must be equal to one of the following values 'CME', 'COND', 'COUPONS_TABLE', 'CP', 'CV', 'DOX', 'FRQTEST', 'ISES', 'N/A', 'PARAM_VALUE_TABLE', 'PT', 'PWR', 'SCAN', 'STATE_TABLE', 'TIPS_TABLE'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="phoenix:Observation_Information/phoenix:mission_phase_name">
      <sch:assert test=". = ('EXTENDED MISSION', 'PRIMARY MISSION')">
        <title>phoenix:Observation_Information/phoenix:mission_phase_name/phoenix:mission_phase_name</title>
        The attribute phoenix:Observation_Information/phoenix:mission_phase_name must be equal to one of the following values 'EXTENDED MISSION', 'PRIMARY MISSION'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="phoenix:Observation_Information/phoenix:product_type">
      <sch:assert test=". = ('EGA_AVG_CALLS', 'EGA_AVG_IDLE_CALLS', 'EGA_EMISSION_CUR', 'EGA_FILAMENT_1', 'EGA_FILAMENT_1_SEL', 'EGA_FILAMENT_2', 'EGA_FILAMENT_2_SEL', 'EGA_FILAMENT_CUR_1', 'EGA_FILAMENT_CUR_2', 'EGA_GEC_CUR', 'EGA_ION_PUMP_CUR', 'EGA_ION_PUMP_VOLT', 'EGA_MAGNET_TEMP_1', 'EGA_MAGNET_TEMP_2', 'EGA_MINUS_12_VOLT', 'EGA_MIN_CALLS', 'EGA_MIN_IDLE_CALLS', 'EGA_MULTIPLIER_VOLT', 'EGA_PLUS_12_VOLT', 'EGA_PLUS_5_VOLT', 'EGA_PROC_TEMP', 'EGA_STATUS_BITS', 'EGA_SWEEP_VOLT', 'EGA_SWEEP_VOLTAGE', 'EGA_TRAP_CUR', 'MECA-EM0', 'MECA-EM1', 'MECA-EM10', 'MECA-EM11', 'MECA-EM12', 'MECA-EM13', 'MECA-EM14', 'MECA-EM15', 'MECA-EM2', 'MECA-EM3', 'MECA-EM4', 'MECA-EM5', 'MECA-EM6', 'MECA-EM7', 'MECA-EM8', 'MECA-EM9', 'MECA_AFM_REPORT', 'MECA_AFM_SDD', 'MECA_AFM_SDR', 'MECA_TECP_EC', 'MECA_TECP_HUM', 'MECA_TECP_PRM', 'MECA_TECP_TC', 'MECA_WCL_COND', 'MECA_WCL_CP', 'MECA_WCL_CV', 'MECA_WCL_ISE', 'MECA_WCL_PT', 'MEM_OVEN_CUR', 'MEM_OVEN_ERR', 'MEM_OVEN_INT_HI', 'MEM_OVEN_INT_LO', 'MEM_OVEN_VOLT', 'MEM_OVEN_WIDTH', 'MEM_SHLD_CUR', 'MEM_SHLD_ERR', 'MEM_SHLD_INT_HI', 'MEM_SHLD_INT_LO', 'MEM_SHLD_VOLT', 'MEM_SHLD_WIDTH', 'MEM_T_WIDTH', 'TA_A2D_TEMP', 'TA_AGD_0_3', 'TA_AGD_3_1', 'TA_ANLG_MINUS_12_CUR', 'TA_ANLG_MINUS_12_VOLT', 'TA_ANLG_PLUS_12_CUR', 'TA_ANLG_PLUS_12_VOLT', 'TA_BUS_A_CUR', 'TA_BUS_A_VOLT', 'TA_BUS_B_CUR', 'TA_CAL_TANK_COLD_TEMP', 'TA_CAL_TANK_TEMP', 'TA_COVER_1_TEMP', 'TA_COVER_2_TEMP', 'TA_CPU_PLUS_5_CUR', 'TA_CPU_PLUS_5_VOLT', 'TA_CPU_TEMP', 'TA_EGA_BAKEOUT_TEMP', 'TA_EGA_CUR', 'TA_EGA_ELECT_BOX_TEMP', 'TA_EGA_GEC_TEMP', 'TA_EGA_MAN_TEMP', 'TA_EGA_PLUMB_TEMP', 'TA_FULL_DETECT', 'TA_FULL_DETECT_RAW', 'TA_INPUT_FUNNEL_1_LO_TEMP', 'TA_INPUT_FUNNEL_2_LO_TEMP', 'TA_MANIFOLD_PRES', 'TA_MANIFOLD_TEMP', 'TA_OUTLET_PRES', 'TA_OVEN_ERR', 'TA_OVEN_PLUS_15_CUR', 'TA_OVEN_PLUS_15_VOLT', 'TA_OVEN_TEMP', 'TA_PLUMBING_1_TEMP', 'TA_PLUMBING_2_TEMP', 'TA_PLUS_5_VREF', 'TA_PRES_SENSE_FD_BK', 'TA_PWR_CNTL_1_TEMP', 'TA_PWR_CNTL_2_TEMP', 'TA_PWR_SPLY_1_TEMP', 'TA_PWR_SPLY_2_TEMP', 'TA_SHIELD_PLUS_30_CUR', 'TA_SHIELD_PLUS_30_VOLT', 'TA_SHLD_ERR', 'TA_SHLD_TEMP', 'TA_TRANS_TUBE_TEMP', 'TA_T_HEATER_TEMP', 'TEGA_EGAEDR', 'TEGA_EGHEDR', 'TEGA_EGHRDR', 'TEGA_EGS', 'TEGA_E_KERNEL', 'TEGA_LEDEDR', 'TEGA_MSGEDR', 'TEGA_SC', 'TEGA_SCEDR')">
        <title>phoenix:Observation_Information/phoenix:product_type/phoenix:product_type</title>
        The attribute phoenix:Observation_Information/phoenix:product_type must be equal to one of the following values 'EGA_AVG_CALLS', 'EGA_AVG_IDLE_CALLS', 'EGA_EMISSION_CUR', 'EGA_FILAMENT_1', 'EGA_FILAMENT_1_SEL', 'EGA_FILAMENT_2', 'EGA_FILAMENT_2_SEL', 'EGA_FILAMENT_CUR_1', 'EGA_FILAMENT_CUR_2', 'EGA_GEC_CUR', 'EGA_ION_PUMP_CUR', 'EGA_ION_PUMP_VOLT', 'EGA_MAGNET_TEMP_1', 'EGA_MAGNET_TEMP_2', 'EGA_MINUS_12_VOLT', 'EGA_MIN_CALLS', 'EGA_MIN_IDLE_CALLS', 'EGA_MULTIPLIER_VOLT', 'EGA_PLUS_12_VOLT', 'EGA_PLUS_5_VOLT', 'EGA_PROC_TEMP', 'EGA_STATUS_BITS', 'EGA_SWEEP_VOLT', 'EGA_SWEEP_VOLTAGE', 'EGA_TRAP_CUR', 'MECA-EM0', 'MECA-EM1', 'MECA-EM10', 'MECA-EM11', 'MECA-EM12', 'MECA-EM13', 'MECA-EM14', 'MECA-EM15', 'MECA-EM2', 'MECA-EM3', 'MECA-EM4', 'MECA-EM5', 'MECA-EM6', 'MECA-EM7', 'MECA-EM8', 'MECA-EM9', 'MECA_AFM_REPORT', 'MECA_AFM_SDD', 'MECA_AFM_SDR', 'MECA_TECP_EC', 'MECA_TECP_HUM', 'MECA_TECP_PRM', 'MECA_TECP_TC', 'MECA_WCL_COND', 'MECA_WCL_CP', 'MECA_WCL_CV', 'MECA_WCL_ISE', 'MECA_WCL_PT', 'MEM_OVEN_CUR', 'MEM_OVEN_ERR', 'MEM_OVEN_INT_HI', 'MEM_OVEN_INT_LO', 'MEM_OVEN_VOLT', 'MEM_OVEN_WIDTH', 'MEM_SHLD_CUR', 'MEM_SHLD_ERR', 'MEM_SHLD_INT_HI', 'MEM_SHLD_INT_LO', 'MEM_SHLD_VOLT', 'MEM_SHLD_WIDTH', 'MEM_T_WIDTH', 'TA_A2D_TEMP', 'TA_AGD_0_3', 'TA_AGD_3_1', 'TA_ANLG_MINUS_12_CUR', 'TA_ANLG_MINUS_12_VOLT', 'TA_ANLG_PLUS_12_CUR', 'TA_ANLG_PLUS_12_VOLT', 'TA_BUS_A_CUR', 'TA_BUS_A_VOLT', 'TA_BUS_B_CUR', 'TA_CAL_TANK_COLD_TEMP', 'TA_CAL_TANK_TEMP', 'TA_COVER_1_TEMP', 'TA_COVER_2_TEMP', 'TA_CPU_PLUS_5_CUR', 'TA_CPU_PLUS_5_VOLT', 'TA_CPU_TEMP', 'TA_EGA_BAKEOUT_TEMP', 'TA_EGA_CUR', 'TA_EGA_ELECT_BOX_TEMP', 'TA_EGA_GEC_TEMP', 'TA_EGA_MAN_TEMP', 'TA_EGA_PLUMB_TEMP', 'TA_FULL_DETECT', 'TA_FULL_DETECT_RAW', 'TA_INPUT_FUNNEL_1_LO_TEMP', 'TA_INPUT_FUNNEL_2_LO_TEMP', 'TA_MANIFOLD_PRES', 'TA_MANIFOLD_TEMP', 'TA_OUTLET_PRES', 'TA_OVEN_ERR', 'TA_OVEN_PLUS_15_CUR', 'TA_OVEN_PLUS_15_VOLT', 'TA_OVEN_TEMP', 'TA_PLUMBING_1_TEMP', 'TA_PLUMBING_2_TEMP', 'TA_PLUS_5_VREF', 'TA_PRES_SENSE_FD_BK', 'TA_PWR_CNTL_1_TEMP', 'TA_PWR_CNTL_2_TEMP', 'TA_PWR_SPLY_1_TEMP', 'TA_PWR_SPLY_2_TEMP', 'TA_SHIELD_PLUS_30_CUR', 'TA_SHIELD_PLUS_30_VOLT', 'TA_SHLD_ERR', 'TA_SHLD_TEMP', 'TA_TRANS_TUBE_TEMP', 'TA_T_HEATER_TEMP', 'TEGA_EGAEDR', 'TEGA_EGHEDR', 'TEGA_EGHRDR', 'TEGA_EGS', 'TEGA_E_KERNEL', 'TEGA_LEDEDR', 'TEGA_MSGEDR', 'TEGA_SC', 'TEGA_SCEDR'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
