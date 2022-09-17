
  
  if object_id ('"dbo"."Auct_ConsignmentPropertyNote__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentPropertyNote__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentPropertyNote__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentPropertyNote__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentPropertyNote__dbt_tmp_temp_view as
    
Select
	cast([NoteID] as int) [NOTEID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([Note] as nvarchar(4000)) [NOTE] 
From stg.[Auct_ConsignmentPropertyNote_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentPropertyNote__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentPropertyNote__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentPropertyNote__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentPropertyNote__dbt_tmp_temp_view"
    end


