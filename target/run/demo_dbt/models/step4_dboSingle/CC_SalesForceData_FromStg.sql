
  
  if object_id ('"dbo"."CC_SalesForceData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SalesForceData_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SalesForceData_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SalesForceData_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SalesForceData_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Lookup] as nvarchar(4000)) [Lookup],
	cast([JsonData] as nvarchar(4000)) [JsonData],
	cast([IsActive] as bit) [IsActive],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_SalesForceData_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SalesForceData_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SalesForceData_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SalesForceData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SalesForceData_FromStg__dbt_tmp_temp_view"
    end


