

with updateData as (
    select 
		FTstg.[OrderID],
		FTstg.[IsActive],
		FTstg.[UserID],
		FTtmp.[Seller_Skey],
		FTtmp.[PaymentID],
		FTstg.[Created],
		FTstg.[ModifiedDate]
    from stg.CC_Order_FT_tmp as FTtmp 
    join stg.CC_Order_FT_stg as FTstg 
    on FTstg.OrderID=FTtmp.OrderID
),
insertData as (
    select 
		[OrderID],
		[IsActive],
		[UserID],
		[Seller_Skey],
		[PaymentID],
		[Created],
		[ModifiedDate]
    from stg.CC_Order_FT_tmp
    where OrderID not in (select  OrderID from stg.CC_Order_FT_stg)
)
SELECT
	[OrderID],
	[IsActive],
	[UserID],
	[Seller_Skey],
	[PaymentID],
	[Created],
	[ModifiedDate]
from updateData

union all

SELECT
	[OrderID],
	[IsActive],
	[UserID],
	[Seller_Skey],
	[PaymentID],
	[Created],
	[ModifiedDate]
from insertData