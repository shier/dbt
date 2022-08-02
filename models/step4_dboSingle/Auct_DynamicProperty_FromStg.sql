{{ config(materialized='table',schema='dbo')}}
Select
	cast([DynamicPropertyID] as int) [DynamicPropertyID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([DataClass] as nvarchar(4000)) [DataClass] 
From stg.[Auct_DynamicProperty_FinalView]