{{ config(materialized='view',schema='stg')}}
Select
	[ReportsID],[ReportsCategory],[ReportsTitle],[ReportsFileName],[Auctionind],[Accountind],[Auctiondayind],[Paymentind],[Value1ind],[Value2ind],[Value3ind],[DateFromind],[Datetoind],[Value1Title],[Value1Example],[Value2Title],[Value2Example],[Value3Title],[Value3Example],[DateFromTitle],[DateFromExample],[DatetoTitle],[DatetoExample],[Description],[IsexcelExport],[IsSorTable],[Value4ind],[Value4Title],[Value4Example] 
From stg.[Auct_Reports_Incr] 
Where [dbt_valid_to] is null