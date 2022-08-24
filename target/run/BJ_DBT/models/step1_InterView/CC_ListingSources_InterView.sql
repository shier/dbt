create view "stg"."CC_ListingSources_InterView__dbt_tmp" as
    
Select
	[ListingSourcePK] [ListingSourcePK],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[CC_ListingSources_Raw]
