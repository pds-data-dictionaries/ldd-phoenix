PDS4 Mars Phoenix Mission Data Dictionary User's Guide  
[Last edited](#edit-history): 2026-06-11  
  
# Introduction  
1. Purpose of this User's Guide  
    - This User's Guide provides an overview of the Mars Phoenix Mission Data Dictionary. The guide details how to include the dictionary in a PDS4 label, describes the organization of the dictionary's classes and attributes, provides definitions for these classes and attributes, and lists example excerpts from labels that use them.  
2. Audience  
    - This User's Guide should be useful to data providers intending to archive Mars Phoenix data with PDS as well as PDS Nodes who are working with these data providers.  
  
# Overview of the Mars Phoenix Mission Data Dictionary  
The Mars Phoenix Mission Data Dictionary contains classes and attributes specific to the Mars Phoenix mission and its instruments.  
Steward: Jennifer Ward, PDS Geosciences Node, jgward@wustl.edu  
  
# Document Outline  
1. [How to Include the Mars Phoenix Mission Data Dictionary in a PDS4 Label](#how-to-include-the-Mars Phoenix-Mission-data-dictionary-in-a-pds4-label)  
2. [Organization of Classes and Attributes](#organization-of-classes-and-attributes)  
    1. [Class Organization](#class-organization)  
    2. [Attributes by Class](#attributes-by-class)  
3. [Definitions](#definitions)  
    1. [Classes (in alphabetical order)](#classes-in-alphabetical-order)  
    2. [Attributes (in alphabetical order)](#attributes-in-alphabetical-order)  
4. [Examples](#examples)  
5. [Edit History](#edit-history)  
  
# How to Include the Mars Phoenix Mission Data Dictionary in a PDS4 Label  
The dictionary consists of a set of files with names in the form PDS4_PHOENIX_xxxx_yyyy.ext, where  
- xxxx = the PDS4 Information Model version, e.g. 1Q00  
- yyyy = the Mars Phoenix Mission Data Dictionary version, e.g. 1000  
  
and the file extensions are  
  
- .csv = A comma-separated value table of dictionary attributes  
- .JSON = The dictionary contents in JSON format  
- .sch = The dictionary "rules" as an XML Schematron file  
- .txt = The report generated when the dictionary was built  
- .xml = The PDS4 label that describes this set of files  
- .xsd = The dictionary contents as an XML schema file  
  
Only the schema and Schematron files are needed for validating a PDS4 label.  
  
The latest version of this dictionary may be found on the PDS web site at https://pds.nasa.gov/datastandards/dictionaries/index-missions.shtml#phoenix.  
  
The following is an example showing the use of this dictionary in a PDS4 label.  
  
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1Q00.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<?xml-model href="https://pds.nasa.gov/pds4/mission/phoenix/v1/PDS4_PHOENIX_1Q00_1000.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<Product_Observational xmlns="http://pds.nasa.gov/pds4/pds/v1"
    xmlns:phoenix="http://pds.nasa.gov/pds4/mission/phoenix/v1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1Q00.xsd
                        https://pds.nasa.gov/pds4/mission/phoenix/v1/PDS4_PHOENIX_1Q00_1000.xsd">
```  
  
The following is a schematic example showing the location of every Mars Phoenix Mission Data Dictionary class and attribute in a PDS4 label. Note that not all classes and attributes may be mutually compatible, and the example does not include any recursion, even if recursion is allowed.  
```
<Observation_Area>
  ...
  <Mission_Area>
    <phoenix:Phoenix_Parameters>
      <phoenix:Observation_Information>
        <phoenix:mission_phase_name/>
        <phoenix:product_type/>
        <phoenix:product_version_id/>
        <phoenix:spacecraft_clock_start/>
        <phoenix:spacecraft_clock_stop/>
        <phoenix:local_true_solar_time/>
        <phoenix:sol_number/>
        <phoenix:ops_token/>
        <phoenix:ops_token_activity/>
        <phoenix:ops_token_payload/>
        <phoenix:ops_token_command/>
        <phoenix:instument_mode_id/>
      </phoenix:Observation_Information>
    </phoenix:Phoenix_Parameters>
  </Mission_Area>
  ...
</Observation_Area>
```  
  
The namespace for the Mars Phoenix Mission Data Dictionary is http://pds.nasa.gov/pds4/mission/phoenix/v1, abbreviated "phoenix:".  
  
# Organization of Classes and Attributes  
  
## Class Organization  
Below is a structured list showing the organization of classes, ordered by appearance in the PDS4 label. Each class name is linked to its complete definition in the [Definitions](#definitions) section.  
- [Phoenix_Parameters](#phoenix_parameters)  
  - [Observation_Information](#observation_information)  
  
## Attributes by Class  
The attributes immediately under each class (if any) are listed below. Both classes and attributes are ordered by appearance in the PDS4 label; however, each class is listed only once, even if that class can appear in more than one place in a PDS4 label. Each class and attribute name is linked to its complete definition in the [Definitions](#definitions) section.  
  
### [Phoenix_Parameters](#phoenix_parameters) (attribute list)  
  
### [Observation_Information](#observation_information) (attribute list)  
- [mission_phase_name](#mission_phase_name)  
- [product_type](#product_type)  
- [product_version_id](#product_version_id)  
- [spacecraft_clock_start](#spacecraft_clock_start)  
- [spacecraft_clock_stop](#spacecraft_clock_stop)  
- [local_true_solar_time](#local_true_solar_time)  
- [sol_number](#sol_number)  
- [ops_token](#ops_token)  
- [ops_token_activity](#ops_token_activity)  
- [ops_token_payload](#ops_token_payload)  
- [ops_token_command](#ops_token_command)  
- [instument_mode_id](#instument_mode_id)  
  
# Definitions  
  
## Classes (in alphabetical order)  
  
### Observation_Information  
The Observation_Information class provides information about a science observation.  
- [go to attribute list](#observation_information-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Phoenix_Parameters  
The Phoenix_Parameters class is a superclass containing all Phoenix mission classes.  
- [go to attribute list](#phoenix_parameters-attribute-list)  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
## Attributes (in alphabetical order)  
  
### *instument_mode_id*  
The instument_mode_id attribute identifies an instrument-dependent designation of operating mode.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - CME  
    - Description: Phoenix MECA Instrument Mode = CME, MECA Control and Measurement Electronics.  
  - COND  
    - Description: Phoenix MECA WCL Instrument Mode = COND, a time-series of electrical conductivity measurements.  
  - COUPONS_TABLE  
    - Description: Phoenix MECA Instrument Mode = COUPONS_TABLE, one of six onboard tables that modify the operation of the MECA flight software.  
  - CP  
    - Description: Phoenix MECA WCL Instrument Mode = CP, a time-series of electrode potential and current chronopotentiometry measurements.  
  - CV  
    - Description: Phoenix MECA WCL Instrument Mode = CV, a time-series of electrode potential and current cyclic voltammetry measurements.  
  - DOX  
    - Description: Phoenix MECA WCL Instrument Mode = DOX, a time-series of dissolved oxygen measurements acquired with an ion selective electrode with CV-style detection.  
  - FRQTEST  
    - Description: Phoenix MECA AFM Instrument Mode = FRQTEST, AFM frequency test.  
  - ISES  
    - Description: Phoenix MECA WCL Instrument Mode = ISES, a time-series of ion selective electrode data.  
  - N/A  
    - Description: Not applicable.  
  - PARAM_VALUE_TABLE  
    - Description: Phoenix MECA Instrument Mode = PARAM_VALUE_TABLE, one of six onboard tables that modify the operation of the MECA flight software.  
  - PT  
    - Description: Phoenix MECA WCL Instrument Mode = PT, a time-series of pressure and temperature measurements.  
  - PWR  
    - Description: Phoenix MECA Instrument Mode = PWR, a time series of voltage and current values provided by the primary MECA 5V (load and logic) and 15V (load and AFM) power supplies.  
  - SCAN  
    - Description: Phoenix MECA TECP or AFM Instrument Mode = SCAN, indicating scanning mode.  
  - STATE_TABLE  
    - Description: Phoenix MECA Instrument Mode = STATE_TABLE, one of six onboard tables that modify the operation of the MECA flight software.  
  - TIPS_TABLE  
    - Description: Phoenix MECA AFM Instrument Mode = TIPS_TABLE, data resulting from initialization and test of the Wheatstone Bridge used to monitor the deflection of the AFM cantilevers. Or, Phoenix MECA Instrument Mode = TIPS_TABLE, one of six onboard tables that modify the operation of the MECA flight software.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *local_true_solar_time*  
The local_true_solar_time attribute is the local true solar time, as defined in the main PDS4 data dictionary, at the beginning of an observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *mission_phase_name*  
The mission_phase_name identifies a time period within the mission.  
- PDS4 data type: ASCII_Short_String_Preserved  
- Valid values:  
  - EXTENDED MISSION  
    - Description: The Mars Phoenix Extended Mission Phase.  
  - PRIMARY MISSION  
    - Description: The Mars Phoenix Primary Mission Phase.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *ops_token*  
The ops_token is a code associated with a Phoenix data product that provides information about the command sequence that caused the product to be acquired. The value is a 32-bit unsigned hexadecimal integer expressed in a PDS label as 16#AAAAPCCC#, where: - AAAA is the campaign ID assigned by the sequence planning team, - P is a 4-bit payload ID reserved for use by each instrument team, as defined by the team, and - CCC is the command sequence number, which is set to zero for each new campaign and automatically incremented with each command. The combination of ops_token and sol number should uniquely identify a Phoenix data product.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *ops_token_activity*  
ops_token_activity is the 16-bit activity code (campaign id) from the ops_token, represented as a 4-digit Hex value.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *ops_token_command*  
ops_token_command is the 12-bit command sequence number of the ops token, represented as a 3-digit Hex value.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *ops_token_payload*  
ops_token_payload is the 4-bit payload id value of the ops token, represented as a single Hex digit.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *product_type*  
The product_type attribute identifies a group of data products within a collection that have some property in common.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - EGA_AVG_CALLS  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Average # of Calls to Task Queue.  
  - EGA_AVG_IDLE_CALLS  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Average # of Idle Calls to Task Queue.  
  - EGA_EMISSION_CUR  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Emission Current Monitor.  
  - EGA_FILAMENT_1  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Filament 1 in Use.  
  - EGA_FILAMENT_1_SEL  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Filament 1 in Use.  
  - EGA_FILAMENT_2  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Filament 2 in Use.  
  - EGA_FILAMENT_2_SEL  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Filament 2 in Use.  
  - EGA_FILAMENT_CUR_1  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Filament 1 Current Monitor.  
  - EGA_FILAMENT_CUR_2  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Filament 2 Current Monitor.  
  - EGA_GEC_CUR  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Gas Enrichment Cell Current Monitor.  
  - EGA_ION_PUMP_CUR  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Ion Pump Current Monitor.  
  - EGA_ION_PUMP_VOLT  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Ion Pump Voltage Monitor.  
  - EGA_MAGNET_TEMP_1  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Magnet 1 Temperature.  
  - EGA_MAGNET_TEMP_2  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Magnet 2 Temperature.  
  - EGA_MINUS_12_VOLT  
    - Description: TEGA Engineering data, Evolved Gas Analyzer -12 Monitor.  
  - EGA_MIN_CALLS  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Minimum # of Calls to Task Queue.  
  - EGA_MIN_IDLE_CALLS  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Minimum # of Idle Calls to Task Queue.  
  - EGA_MULTIPLIER_VOLT  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Multiplier Voltage Monitor.  
  - EGA_PLUS_12_VOLT  
    - Description: TEGA Engineering data, Evolved Gas Analyzer +12 Monitor.  
  - EGA_PLUS_5_VOLT  
    - Description: TEGA Engineering data, Evolved Gas Analyzer +5 Monitor.  
  - EGA_PROC_TEMP  
    - Description: TEGA Engineering data, Evolved Gas Analyzer CPU Temperature.  
  - EGA_STATUS_BITS  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Status Bits Value.  
  - EGA_SWEEP_VOLT  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Sweep Voltage Monitor.  
  - EGA_SWEEP_VOLTAGE  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Sweep Voltage Monitor.  
  - EGA_TRAP_CUR  
    - Description: TEGA Engineering data, Evolved Gas Analyzer Trap Current Monitor.  
  - MECA-EM0  
    - Description: MECA EDR data type 0. AFM: FRQTEST  
  - MECA-EM1  
    - Description: MECA EDR data type 1. AFM: RESPONSE  
  - MECA-EM10  
    - Description: MECA EDR data type 10. WCL: DOX  
  - MECA-EM11  
    - Description: MECA EDR data type 11. WCL: CV  
  - MECA-EM12  
    - Description: MECA EDR data type 12. WCL: CP  
  - MECA-EM13  
    - Description: MECA EDR data type 13. WCL: AS  
  - MECA-EM14  
    - Description: MECA EDR data type 14. WCL: (Reserved)  
  - MECA-EM15  
    - Description: MECA EDR data type 15. WCL: PT  
  - MECA-EM2  
    - Description: MECA EDR data type 2. AFM: SCAN  
  - MECA-EM3  
    - Description: MECA EDR data type 3. AFM: TIPS  
  - MECA-EM4  
    - Description: MECA EDR data type 4. CME_STATUS  
  - MECA-EM5  
    - Description: MECA EDR data type 5. POWER_DATA  
  - MECA-EM6  
    - Description: MECA EDR data type 6. TBL  
  - MECA-EM7  
    - Description: MECA EDR data type 7. TECP  
  - MECA-EM8  
    - Description: MECA EDR data type 8. WCL: ISES  
  - MECA-EM9  
    - Description: MECA EDR data type 9. WCL: COND  
  - MECA_AFM_REPORT  
    - Description: The MECA AFM Reports are text files that describes the measurement day's events.  
  - MECA_AFM_SDD  
    - Description: The MECA AFM Scan derivative records (SDD) are line-by-line first order spatial derivatives of the SDRs, processed using the Savitzky-Golay filter method.  
  - MECA_AFM_SDR  
    - Description: The MECA AFM Scan Data Records (SDR) are AFM scan data that has been converted from DN to physical units.  
  - MECA_TECP_EC  
    - Description: MECA TECP time-series electrical conductivity (EC) data.  
  - MECA_TECP_HUM  
    - Description: TECP time-series frost point data.  
  - MECA_TECP_PRM  
    - Description: MECA TECP time-series relative permittivity (dielectric constant) data.  
  - MECA_TECP_TC  
    - Description: MECA TECP time_series temperature data.  
  - MECA_WCL_COND  
    - Description: MECA WCL time-series of conductivity (COND) data.  
  - MECA_WCL_CP  
    - Description: MECA WCL time-series of electrode potential and current chronopotentiometry (CP) data.  
  - MECA_WCL_CV  
    - Description: MECA WCL time-series of electrode potential and current cyclic voltammetry (CV) data.  
  - MECA_WCL_ISE  
    - Description: MECA WCL time-series of ion selective electrode (ISE) data.  
  - MECA_WCL_PT  
    - Description: MECA WCL time-series of pressure and temperature (PT) data.  
  - MEM_OVEN_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Current.  
  - MEM_OVEN_ERR  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Error.  
  - MEM_OVEN_INT_HI  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Integrator Value High Bytes.  
  - MEM_OVEN_INT_LO  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Integrator Value Low Bytes.  
  - MEM_OVEN_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Voltage.  
  - MEM_OVEN_WIDTH  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Pulse Width.  
  - MEM_SHLD_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Current.  
  - MEM_SHLD_ERR  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Error.  
  - MEM_SHLD_INT_HI  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Integrator Value High Bytes.  
  - MEM_SHLD_INT_LO  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Integrator Value Low Bytes.  
  - MEM_SHLD_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Voltage.  
  - MEM_SHLD_WIDTH  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Pulse Width.  
  - MEM_T_WIDTH  
    - Description: TEGA Engineering data, Thermal Analyzer T Heater Pulse Width.  
  - TA_A2D_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Analog to Digital Converter Temperature.  
  - TA_AGD_0_3  
    - Description: TEGA Engineering data, Thermal Analyzer AGD_0_3 Ground.  
  - TA_AGD_3_1  
    - Description: TEGA Engineering data, Thermal Analyzer AGD_3_1 Ground.  
  - TA_ANLG_MINUS_12_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Analog -12 Current.  
  - TA_ANLG_MINUS_12_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Analog -12 Voltage.  
  - TA_ANLG_PLUS_12_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Analog +12 Current.  
  - TA_ANLG_PLUS_12_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Analog +12 Voltage.  
  - TA_BUS_A_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Bus A Current.  
  - TA_BUS_A_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Bus A Voltage.  
  - TA_BUS_B_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Bus B Current.  
  - TA_CAL_TANK_COLD_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Cal Tank Cold Temperature.  
  - TA_CAL_TANK_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Cal Tank Temperature.  
  - TA_COVER_1_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Cover 1 Temperature.  
  - TA_COVER_2_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Cover 2 Temperature.  
  - TA_CPU_PLUS_5_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer CPU +5 Current.  
  - TA_CPU_PLUS_5_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer CPU +5 Voltage.  
  - TA_CPU_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer CPU Temperature.  
  - TA_EGA_BAKEOUT_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Evolved Gas Analyzer Bakeout Temperature.  
  - TA_EGA_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Evolved Gas Analyzer Current.  
  - TA_EGA_ELECT_BOX_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Evolved Gas Analyzer Electronics Temperature.  
  - TA_EGA_GEC_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Evolved Gas Analyzer Gas Enrichment Cell Temperature.  
  - TA_EGA_MAN_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Evolved Gas Analyzer Manifold Temperature.  
  - TA_EGA_PLUMB_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Evolved Gas Analyzer Plumbing Temperature.  
  - TA_FULL_DETECT  
    - Description: TEGA Engineering data, Thermal Analyzer Full Detect Integrated Diode Sensor Reading.  
  - TA_FULL_DETECT_RAW  
    - Description: TEGA Engineering data, Thermal Analyzer Full Detect Raw Diode Sensor Reading.  
  - TA_INPUT_FUNNEL_1_LO_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Input Funnel 1 Low Temperature.  
  - TA_INPUT_FUNNEL_2_LO_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Input Funnel 2 Low Temperature.  
  - TA_MANIFOLD_PRES  
    - Description: TEGA Engineering data, Thermal Analyzer Manifold Pressure.  
  - TA_MANIFOLD_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Manifold Temperature.  
  - TA_OUTLET_PRES  
    - Description: TEGA Engineering data, Thermal Analyzer Outlet Pressure.  
  - TA_OVEN_ERR  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Error.  
  - TA_OVEN_PLUS_15_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Oven +15 Current.  
  - TA_OVEN_PLUS_15_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Oven +15 Voltage.  
  - TA_OVEN_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Oven Temperature.  
  - TA_PLUMBING_1_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Plumbing 1 Temperature.  
  - TA_PLUMBING_2_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Plumbing 2 Temperature.  
  - TA_PLUS_5_VREF  
    - Description: TEGA Engineering data, Thermal Analyzer Plus 5 Voltage Reference.  
  - TA_PRES_SENSE_FD_BK  
    - Description: TEGA Engineering data, Thermal Analyzer Pressure Sensor Exc. Feedback.  
  - TA_PWR_CNTL_1_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Power Control 1 Temperature.  
  - TA_PWR_CNTL_2_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Power Control 2 Temperature.  
  - TA_PWR_SPLY_1_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Power Supply 1 Temperature.  
  - TA_PWR_SPLY_2_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Power Supply 2 Temperature.  
  - TA_SHIELD_PLUS_30_CUR  
    - Description: TEGA Engineering data, Thermal Analyzer Shield +30 Current.  
  - TA_SHIELD_PLUS_30_VOLT  
    - Description: TEGA Engineering data, Thermal Analyzer Shield +30 Voltage.  
  - TA_SHLD_ERR  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Error.  
  - TA_SHLD_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Shield Temperature.  
  - TA_TRANS_TUBE_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer Transfer Tube Temperature.  
  - TA_T_HEATER_TEMP  
    - Description: TEGA Engineering data, Thermal Analyzer T Heater Temperature.  
  - TEGA_EGAEDR  
    - Description: TEGA EGA EDR (EGAEDR) data.  
  - TEGA_EGHEDR  
    - Description: TEGA EGA Mass Hopping Counts EDR (EGHEDR) data.  
  - TEGA_EGHRDR  
    - Description: TEGA EGA Mass Hopping Mode RDR (EGHRDR) data.  
  - TEGA_EGS  
    - Description: TEGA EGA Sweep Mode (EGS) RDR data.  
  - TEGA_E_KERNEL  
    - Description: TEGA E-Kernel Report data.  
  - TEGA_LEDEDR  
    - Description: TEGA LED Sensor (LEDEDR) Oven Fill data.  
  - TEGA_MSGEDR  
    - Description: TEGA Message Log EDR (MSGEDR) data.  
  - TEGA_SC  
    - Description: TEGA Scanning Calorimeter RDR (SCRDR) data.  
  - TEGA_SCEDR  
    - Description: TEGA Scanning Calorimeter Oven Heating EDR (SCEDR) data.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *product_version_id*  
The product_version_id attribute identifies the version of an individual data product.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *sol_number*  
The sol_number attibute is the number of the Mars day on which an observation was acquired. Landing day is Sol 0.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_start*  
The spacecraft_clock_start attribute provides the value of the spacecraft clock at the beginning of a time period of interest.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_stop*  
The spacecraft_clock_stop attribute provides the value of the spacecraft clock at the end of a time period of interest.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
# Examples  
  
Example PDS4 label snippet from urn:nasa:pds:phx_meca_raw:data_afm:fs004em2_00_1080011040000j1::1.0:  
```
<Mission_Area>
  <phoenix:Phoenix_Parameters>
    <phoenix:Observation_Information>
      <phoenix:mission_phase_name>PRIMARY MISSION</phoenix:mission_phase_name>
      <phoenix:product_type>MECA-EM2</phoenix:product_type>
      <phoenix:product_version_id>V1.0 D-22850</phoenix:product_version_id>
      <phoenix:spacecraft_clock_start>896567774.000</phoenix:spacecraft_clock_start>
      <phoenix:spacecraft_clock_stop>896567777.000</phoenix:spacecraft_clock_stop>
      <phoenix:local_true_solar_time>12:58:38</phoenix:local_true_solar_time>
      <phoenix:sol_number>4</phoenix:sol_number>
      <phoenix:ops_token>16#11040000#</phoenix:ops_token>
      <phoenix:ops_token_activity>16#00001104#</phoenix:ops_token_activity>
      <phoenix:ops_token_payload>16#00000000#</phoenix:ops_token_payload>
      <phoenix:ops_token_command>16#00000000#</phoenix:ops_token_command>
      <phoenix:instument_mode_id>SCAN</phoenix:instument_mode_id>
    </phoenix:Observation_Information>
  </phoenix:Phoenix_Parameters>
</Mission_Area>
```  
  
# Edit History  
*See also: [PHOENIX change log](https://github.com/pds-data-dictionaries/ldd-phoenix/blob/main/CHANGELOG.md).*  
2026-06-11  Jennifer Ward