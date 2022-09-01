
  
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
	cast([ModelID] as int) [ModelID],
	cast([DropDownText] as nvarchar(4000)) [DropDownText],
	cast([DisplayText] as nvarchar(4000)) [DisplayText],
	cast([MakeID] as int) [MakeID],
	cast([Active] as nvarchar(4000)) [Active] 
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


