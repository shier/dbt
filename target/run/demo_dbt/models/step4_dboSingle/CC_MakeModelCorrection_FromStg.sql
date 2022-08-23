
  
  if object_id ('"dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModelCorrection_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([BadMake] as nvarchar(4000)) [BadMake],
	cast([BadModel] as nvarchar(4000)) [BadModel],
	cast([GoodMake] as nvarchar(4000)) [GoodMake],
	cast([GoodModel] as nvarchar(4000)) [GoodModel],
	cast([GoodTrim] as nvarchar(4000)) [GoodTrim],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_MakeModelCorrection_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModelCorrection_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelCorrection_FromStg__dbt_tmp_temp_view"
    end


