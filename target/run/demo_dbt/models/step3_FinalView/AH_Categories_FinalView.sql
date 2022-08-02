create view "stg"."AH_Categories_FinalView__dbt_tmp" as
    
Select
	[ID],[ParentCategoryID],[DisplayOrder],[Lft],[Rgt],[CreatedOn],[UpdatedOn],[DeletedOn],[RolesAllowed],[EnabledCustomProperty],[MetaKeyWords],[MetaDescription],[PageTitle],[Pagecontent],[Name],[LastUpdatedUser],[Type],[MvcAction] 
From stg.[AH_Categories_Incr] 
Where [dbt_valid_to] is null
