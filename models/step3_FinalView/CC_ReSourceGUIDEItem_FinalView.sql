{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[ModifyDate],[StartDate],[EndDate],[ReSourceGUIDEID],[SequenceGroup],[IsActive],[LogoURL],[Title],[Pagecontent],[LinkText],[LinkURL],[CalltoActionText],[CalltoActionURL] 
From stg.[CC_ReSourceGUIDEItem_Incr] 
Where [dbt_valid_to] is null