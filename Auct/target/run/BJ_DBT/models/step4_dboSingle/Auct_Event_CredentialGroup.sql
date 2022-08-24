
  
  if object_id ('"dbo"."Auct_Event_CredentialGroup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Event_CredentialGroup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Event_CredentialGroup__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Event_CredentialGroup__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Event_CredentialGroup__dbt_tmp_temp_view as
    
Select
	cast([CredentialGroupID] as int) [CredentialGroupID],
	cast([Active] as bit) [Active],
	cast([IsDefault] as bit) [IsDefault],
	cast([ExternalEventID] as int) [ExternalEventID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_Event_CredentialGroup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Event_CredentialGroup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Event_CredentialGroup__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Event_CredentialGroup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Event_CredentialGroup__dbt_tmp_temp_view"
    end


