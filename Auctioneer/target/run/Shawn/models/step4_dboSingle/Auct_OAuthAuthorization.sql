
  
  if object_id ('"dbo"."Auct_OAuthAuthorization__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OAuthAuthorization__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_OAuthAuthorization__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_OAuthAuthorization__dbt_tmp"
    end


   EXEC('create view dbo.Auct_OAuthAuthorization__dbt_tmp_temp_view as
    
Select
	cast([OAuthAuthorizationID] as int) [OAuthAuthorizationID],
	cast([ProvIDErName] as nvarchar(4000)) [ProviderName],
	cast([ApiURL] as nvarchar(4000)) [ApiURL],
	cast([ApiVersionSuffixURL] as nvarchar(4000)) [ApiVersionSuffixURL],
	cast([ClientID] as nvarchar(4000)) [ClientID],
	cast([ClientSecret] as nvarchar(4000)) [ClientSecret],
	cast([RedirectURI] as nvarchar(4000)) [RedirectURI],
	cast([OAuthaccessToken] as nvarchar(4000)) [OAuthAccessToken],
	cast([OAuthRefreshToken] as nvarchar(4000)) [OAuthRefreshToken],
	cast([OAuthTokenExpirationMinutes] as int) [OAuthTokenExpirationMinutes],
	cast([TokenType] as nvarchar(4000)) [TokenType] 
From stg.[Auct_OAuthAuthorization_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_OAuthAuthorization__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_OAuthAuthorization__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_OAuthAuthorization__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OAuthAuthorization__dbt_tmp_temp_view"
    end


