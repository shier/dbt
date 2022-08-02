{{ config(materialized='view',schema='stg')}}
Select
	[DYNAMICPROPERTYID] [DynamicPropertyID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DISPLAYNAME] as nvarchar(4000)) [DisplayName],
	cast([DATACLASS] as nvarchar(4000)) [DataClass]
From stg.[Auct_DynamicProperty_Raw]
