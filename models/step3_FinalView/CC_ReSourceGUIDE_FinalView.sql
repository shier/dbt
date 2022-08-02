{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ReSourceIDPath],[Slug],[Title],[Pagecontent],[MetaDescription],[FontawesomeIcon],[Teaser],[IsActive],[ParentreSourceGUIDEID],[Depth],[CreateDate],[ModifyDate] 
From stg.[CC_ReSourceGUIDE_Incr] 
Where [dbt_valid_to] is null