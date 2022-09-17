
Select
	cast([Active] as bit) [ACTIVE],
	cast([DriverID] as int) [DRIVERID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_Driver_FinalView]