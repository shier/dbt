
  
  if object_id ('"dbo"."Auct_MediaCredential_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaCredential_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaCredential_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaCredential_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaCredential_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MediaCredentialID] as int) [MediaCredentialID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([CredentialNumber] as nvarchar(4000)) [CredentialNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaCredential_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaCredential_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaCredential_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaCredential_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaCredential_FromStg__dbt_tmp_temp_view"
    end


