
  
  if object_id ('"dbo"."Auct_Model__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Model__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Model__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Model__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Model__dbt_tmp_temp_view as
    
Select
	cast([ModelID] as int) [MODELID],
	cast([DropDownText] as nvarchar(4000)) [DROPDOWNTEXT],
	cast([DisplayText] as nvarchar(4000)) [DISPLAYTEXT],
	cast([MakeID] as int) [MAKEID],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_Model_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Model__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Model__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Model__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Model__dbt_tmp_temp_view"
    end


