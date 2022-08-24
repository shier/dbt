
  
  if object_id ('"dbo"."Auct_TrackContactTagAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TrackContactTagAuction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TrackContactTagAuction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TrackContactTagAuction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TrackContactTagAuction__dbt_tmp_temp_view as
    
Select
	cast([TagID] as nvarchar(4000)) [TagID],
	cast([ContactID] as int) [ContactID],
	cast([PulseEventID] as int) [PulseEventID],
	cast([CredentialTypeID] as int) [CredentialTypeID] 
From stg.[Auct_TrackContactTagAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TrackContactTagAuction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TrackContactTagAuction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TrackContactTagAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TrackContactTagAuction__dbt_tmp_temp_view"
    end


