create view "stg"."CC_ReSourceGUIDE_FinalView__dbt_tmp" as
    
Select
	[ID],[ReSourceIDPath],[Slug],[Title],[Pagecontent],[MetaDescription],[FontawesomeIcon],[Teaser],[IsActive],[ParentreSourceGUIDEID],[Depth],[CreateDate],[ModifyDate] 
From stg.[CC_ReSourceGUIDE_Incr] 
Where [dbt_valid_to] is null
