CREATE OR REPLACE VIEW "input_sensor_input_data_full" AS 
SELECT
  replace(col0, '"', '') WindowStart
, replace(col1, '"', '') WindowEnd
, col2 FacilityId
, replace(col3, '"', '') FacilityName
, col4 SubFacilityId
, replace(col5, '"', '') SubFacilityName
, col6 CountOfMessages
, col7 MinOutdoorTemp
, col8 MaxOutdoorTemp
, col9 AvgOutdoorTemp
, col10 MinSubFacilityTemp
, col11 MaxSubFacilityTemp
, col12 AvgSubFacilityTemp
, col13 MinSubFacilityDesiredTemp
, col14 MaxSubFacilityDesiredTemp
, col15 AvgSubFacilityDesiredTemp
, col16 MinIsHeatingOn
, col17 MaxIsHeatingOn
, col18 AvgIsHeatingOn
, col19 MinIsCoolingOn
, col20 MaxIsCoolingOn
, col21 AvgIsCoolingOn
, col22 MinIsAnyDoorOpen
, col23 MaxIsAnyDoorOpen
, col24 AvgIsAnyDoorOpen
, col25 MinIsAnyWindowOpen
, col26 MaxIsAnyWindowOpen
, col27 AvgIsAnyWindowOpen
, partition_0 YearNbr
, partition_1 MonthNbr
, partition_2 DateNbr
, partition_3 HourNbr
FROM
  "default"."input_sensor_input_data"
