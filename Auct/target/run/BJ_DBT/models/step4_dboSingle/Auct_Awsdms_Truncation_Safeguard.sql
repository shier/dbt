
  
  if object_id ('"dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Awsdms_Truncation_Safeguard__dbt_tmp_temp_view as
    
Select
	cast([LatchTaskName] as nvarchar(4000)) [LatchTaskName],
	cast([LatchMachineGUID] as nvarchar(4000)) [LatchMachineGUID],
	cast([LatchKey] as nvarchar(4000)) [LatchKey],
	cast([LatchLocker] as datetime) [LatchLocker] 
From stg.[Auct_Awsdms_Truncation_Safeguard_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Awsdms_Truncation_Safeguard__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Awsdms_Truncation_Safeguard__dbt_tmp_temp_view"
    end


