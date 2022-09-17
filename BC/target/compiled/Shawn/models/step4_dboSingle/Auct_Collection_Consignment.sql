
Select
	cast([CollectionID] as int) [COLLECTIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Collection_Consignment_FinalView]