{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [PrimaryCategoryID],
	cast([ParentCategoryID] as int) [ParentCategoryID],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([Lft] as int) [lft],
	cast([Rgt] as int) [rgt],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([RolesAllowed] as nvarchar(100)) [RolesAllowed],
	cast([EnabledCustomProperty] as nvarchar(100)) [EnabledCustomProperty],
	cast([Name] as nvarchar(500)) [Name],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Type] as nvarchar(50)) [Type],
	cast([MvcAction] as nvarchar(100)) [MVCAction] 
From stg.[AH_Categories_FinalView]