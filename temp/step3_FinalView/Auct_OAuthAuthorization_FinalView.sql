{{ config(materialized='view',schema='stg')}}
Select
	[OAuthAuthorizationID],[ProvIDErName],[ApiURL],[ApiVersionSuffixURL],[ClientID],[ClientSecret],[RedirectURI],[OAuthaccessToken],[OAuthRefreshToken],[OAuthTokenExpirationMinutes],[TokenType] 
From stg.[Auct_OAuthAuthorization_Incr] 
Where [dbt_valid_to] is null