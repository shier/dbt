
Select
	cast([Host] as nvarchar(4000)) [HOST],
	cast([Domain] as nvarchar(4000)) [DOMAIN],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([Password] as nvarchar(4000)) [PASSWORD] 
From stg.[Auct_EmailConfiguration_FinalView]