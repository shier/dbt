
  
  if object_id ('"dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentCompleteStatus__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentCompleteStatusID] as int) [ConsignmentCompleteStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as numeric(18,0)) [DisplayOrder],
	cast([Active] as bit) [Active] 
From stg.[Auct_ConsignmentCompleteStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentCompleteStatus__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentCompleteStatus__dbt_tmp_temp_view"
    end


