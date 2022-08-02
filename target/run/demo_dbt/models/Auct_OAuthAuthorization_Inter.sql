
  
  if object_id ('"stg"."Auct_OAuthAuthorization_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OAuthAuthorization_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OAuthAuthorization_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_OAuthAuthorization_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_OAuthAuthorization_Inter__dbt_tmp_temp_view as
    
Select
	cast(ProviderName as nvarchar(4000)) ProvIDErName,
	cast(ApiURL as nvarchar(4000)) ApiURL,
	cast(ApiVersionSuffixURL as nvarchar(4000)) ApiVersionSuffixURL,
	cast(ClientID as nvarchar(4000)) ClientID,
	cast(ClientSecret as nvarchar(4000)) ClientSecret,
	cast(RedirectURI as nvarchar(4000)) RedirectURI,
	cast(OAuthAccessToken as nvarchar(4000)) OAuthaccessToken,
	cast(OAuthRefreshToken as nvarchar(4000)) OAuthRefreshToken,
	cast(TokenType as nvarchar(4000)) TokenType,
	OAuthAuthorizationID OAuthAuthorizationID,
	OAuthTokenExpirationMinutes OAuthTokenExpirationMinutes
From Auct_OAuthAuthorization_Raw
    ');

  CREATE TABLE "stg"."Auct_OAuthAuthorization_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OAuthAuthorization_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_OAuthAuthorization_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OAuthAuthorization_Inter__dbt_tmp_temp_view"
    end


