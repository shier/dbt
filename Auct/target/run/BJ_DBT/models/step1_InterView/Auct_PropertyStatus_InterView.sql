create view "stg"."Auct_PropertyStatus_InterView__dbt_tmp" as
    
Select
	[PROPERTYSTATUSID] [PropertyStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_PropertyStatus_Raw]
