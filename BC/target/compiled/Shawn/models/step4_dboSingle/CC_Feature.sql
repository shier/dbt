
Select
	cast([Enabled] as bit) [Enabled],
	cast([FeatureName] as nvarchar(4000)) [FeatureName] 
From stg.[CC_Feature_FinalView]