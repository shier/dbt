
  
  if object_id ('"dbo"."Auct_DocumentImageType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentImageType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DocumentImageType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DocumentImageType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DocumentImageType__dbt_tmp_temp_view as
    
Select
	cast([DocumentImageTypeID] as int) [DocumentImageTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_DocumentImageType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DocumentImageType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DocumentImageType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DocumentImageType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DocumentImageType__dbt_tmp_temp_view"
    end


