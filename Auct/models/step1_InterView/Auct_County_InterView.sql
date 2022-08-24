{{ config(materialized='view',schema='stg')}}
Select
	cast([STATEABBREVIATION] as nvarchar(4000)) [StateAbbreviation],
	cast([COUNTY] as nvarchar(4000)) [County]
From stg.[Auct_County_Raw]
