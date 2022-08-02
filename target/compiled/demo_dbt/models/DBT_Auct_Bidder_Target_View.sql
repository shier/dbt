

with aloneID as (  
    select [BidderID] From DBT_Auct_Bidder_Target  group by BidderID having count(BidderID)=1 
),
duplicateID as(
    select [BidderID] From DBT_Auct_Bidder_Target  group by BidderID having count(BidderID)>1 

)

select 	hashValue,effectiveTime,1 as validMark, [BidderID],
	[BidderTypeID],
	[BidderStatusID],
	[CustomerAccountID],
	[BidderNumber],
	[AnniversaryDate],
	[ApprovedByUserID],
	[Comments],
	[Created],
	[UpdateEventID],
	[BidLimit],
	[PaymentMethodID],
	[AddressID],
	[ShippingAddressID],
	[ContactPhoneID]
From DBT_Auct_Bidder_Target where BidderID in aloneID
union all
select 	hashValue,effectiveTime,1- validMark as validMark, [BidderID],
	[BidderTypeID],
	[BidderStatusID],
	[CustomerAccountID],
	[BidderNumber],
	[AnniversaryDate],
	[ApprovedByUserID],
	[Comments],
	[Created],
	[UpdateEventID],
	[BidLimit],
	[PaymentMethodID],
	[AddressID],
	[ShippingAddressID],
	[ContactPhoneID]
From DBT_Auct_Bidder_Target where BidderID in duplicateID