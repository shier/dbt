
  
  if object_id ('"dbo"."Auct_Tmp_BadEmails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tmp_BadEmails__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Tmp_BadEmails__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Tmp_BadEmails__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Tmp_BadEmails__dbt_tmp_temp_view as
    
Select
	cast([Email] as nvarchar(4000)) [Email],
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([Ongage_Status] as nvarchar(4000)) [Ongage_Status] 
From stg.[Auct_Tmp_BadEmails_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Tmp_BadEmails__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Tmp_BadEmails__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Tmp_BadEmails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tmp_BadEmails__dbt_tmp_temp_view"
    end


