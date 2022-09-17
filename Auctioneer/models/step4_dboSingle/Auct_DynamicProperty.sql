{{ config(materialized='table',schema='dbo')}}
Select
	cast([DynamicPropertyID] as int) [DYNAMICPROPERTYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayName] as nvarchar(4000)) [DISPLAYNAME],
	cast([DataClass] as nvarchar(4000)) [DATACLASS] 
From stg.[Auct_DynamicProperty_FinalView]