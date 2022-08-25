{{ config(materialized='table',schema='dbo')}}

SELECT
   HASHBYTES('SHA2_256', 
        COALESCE(CAST([BIDDERID] AS VARCHAR(20)), '')
    ) AS [Bidder_Skey],
	*
FROM stg.[Auct_Bidder_FinalView]