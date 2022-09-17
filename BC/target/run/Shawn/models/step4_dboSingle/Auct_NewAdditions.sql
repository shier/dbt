
  
  if object_id ('"dbo"."Auct_NewAdditions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NewAdditions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NewAdditions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NewAdditions__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NewAdditions__dbt_tmp_temp_view as
    
Select
	cast([DateCreated] as datetime) [DATECREATED],
	cast([FirstName] as nvarchar(4000)) [FIRSTNAME],
	cast([MiddleInitial] as nvarchar(4000)) [MIDDLEINITIAL],
	cast([LastName] as nvarchar(4000)) [LASTNAME],
	cast([ContactID] as int) [CONTACTID],
	cast([NewAdditionsID] as int) [NEWADDITIONSID] 
From stg.[Auct_NewAdditions_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NewAdditions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NewAdditions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NewAdditions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NewAdditions__dbt_tmp_temp_view"
    end


