
Select
	cast([DistributionTypeID] as int) [DISTRIBUTIONTYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_MediaDistrubutionType_FinalView]