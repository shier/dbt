create view "stg"."Auct_Charity_Consignment_InterView__dbt_tmp" as
    
Select
	[CONSIGNMENTID] [ConsignmentID],
	[CHARITYID] [CharityID],
	[ACTIVE] [Active]
From stg.[Auct_Charity_Consignment_Raw]
