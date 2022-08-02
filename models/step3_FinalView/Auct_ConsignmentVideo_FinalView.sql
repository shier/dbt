{{ config(materialized='view',schema='stg')}}
Select
	[VideoID],[ConsignmentID],[URI],[DateCreated],[Name],[DisplayOrder],[EmbedURI],[Code],[Description],[Active] 
From stg.[Auct_ConsignmentVideo_Incr] 
Where [dbt_valid_to] is null