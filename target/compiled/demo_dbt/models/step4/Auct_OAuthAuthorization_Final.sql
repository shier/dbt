
Select
	[OAuthAuthorizationID],[ProvIDErName],[ApiURL],[ApiVersionSuffixURL],[ClientID],[ClientSecret],[RedirectURI],[OAuthaccessToken],[OAuthRefreshToken],[TokenType],[OAuthTokenExpirationMinutes] 
From stg.[Auct_OAuthAuthorization_Incr] 
Where [dbt_valid_to] is null