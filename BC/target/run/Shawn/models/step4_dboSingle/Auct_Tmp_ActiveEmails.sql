
  
  if object_id ('"dbo"."Auct_Tmp_ActiveEmails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tmp_ActiveEmails__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Tmp_ActiveEmails__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Tmp_ActiveEmails__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Tmp_ActiveEmails__dbt_tmp_temp_view as
    
Select
	cast([Email] as nvarchar(4000)) [email],
	cast([First_Name] as nvarchar(4000)) [first_name],
	cast([Last_Name] as nvarchar(4000)) [last_name],
	cast([Ongage_Status] as nvarchar(4000)) [ongage_status] 
From stg.[Auct_Tmp_ActiveEmails_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Tmp_ActiveEmails__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Tmp_ActiveEmails__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Tmp_ActiveEmails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tmp_ActiveEmails__dbt_tmp_temp_view"
    end


