{{ config(materialized='table',schema='dbo')}}
SELECT
	Id,
	Name,
	ParentCategoryId,
	DisplayOrder,
	LastUpdatedUser,
	Type,
	MVCAction,
	RolesAllowed,
	EnabledCustomProperty,
	lft,
	rgt,
	CreatedOn,
	UpdatedOn,
	DeletedOn
FROM stg.AH_Categories_FinalView;