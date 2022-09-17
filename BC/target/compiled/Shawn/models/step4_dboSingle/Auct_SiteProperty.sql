
Select
	cast([SiteID] as int) [SITEID],
	cast([DynamicPropertyID] as int) [DYNAMICPROPERTYID],
	cast([Value] as nvarchar(4000)) [VALUE] 
From stg.[Auct_SiteProperty_FinalView]