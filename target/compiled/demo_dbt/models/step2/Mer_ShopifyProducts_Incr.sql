
With hashData as (
		Select
			HASHBYTES('MD5', concat(Title, Bodyhtml, Options1Values, Options2Name, Options2Values, Options3Name, Options3Values, Vendor, ProductType, Handle, Tags, Publishedscope, Options1Name, Cast(PublishedDate as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProducts_Inter]
	)
Select * From hashData
