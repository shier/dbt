
  
  if object_id ('"stg"."Auct_MediaCredential_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaCredential_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaCredential_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MediaCredential_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MediaCredential_Inter__dbt_tmp_temp_view as
    
Select
	[MEDIACREDENTIALID] [MediaCredentialID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	cast([CREDENTIALNUMBER] as nvarchar(4000)) [CredentialNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaCredential_Raw]
    ');

  CREATE TABLE "stg"."Auct_MediaCredential_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaCredential_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaCredential_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaCredential_Inter__dbt_tmp_temp_view"
    end


