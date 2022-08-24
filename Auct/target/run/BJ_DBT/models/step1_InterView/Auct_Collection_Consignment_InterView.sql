create view "dbo_stg"."Auct_Collection_Consignment_InterView__dbt_tmp" as
    
Select
	[COLLECTIONID] [CollectionID],
	[CONSIGNMENTID] [ConsignmentID],
	[ACTIVE] [Active]
From stg.[Auct_Collection_Consignment_Raw]
