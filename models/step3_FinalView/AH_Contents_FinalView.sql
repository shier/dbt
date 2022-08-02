{{ config(materialized='view',schema='stg')}}
Select
	[ID],[DisplayOrder],[Usehtmleditor],[Userdefined],[CreatedOn],[UpdatedOn],[DeletedOn],[Text],[Name],[Culture],[PageTitle] 
From stg.[AH_Contents_Incr] 
Where [dbt_valid_to] is null