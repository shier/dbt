{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([OrderID], [Event_Name], [ShippingMethod], [Phone], [Address], [Address2], [City], [State], [Country], [Ticket_Type], [Ticket_Seq_ID], [Retail_Mask], [Retail_Qualifiers], [Company], [Email], [Price_Code_Desc], [Comp_Name], [Sell_Location_Name], [PaID], [Ticket_Status], [Status], [Season_Name], [Manifest_Name], [Event_Name_Long], [FullName], [Zip], [Price_Code], Cast([Full_Price] as varchar), Cast([Purchase_Price] as varchar), Cast([Inet_Purchase_Price] as varchar), Cast([Printed_Price] as varchar), Cast([Pc_Ticket] as varchar), Cast([Pc_Tax] as varchar), Cast([Block_full_Price] as varchar), Cast([Block_Purchase_Price] as varchar), Cast([Paid_Amount] as varchar), Cast([Season_ID] as varchar), Cast([Event_ID] as varchar), Cast([Acct_ID] as varchar), Cast([Sell_Location_ID] as varchar), Cast([Num_Seats] as varchar), Cast([Comp_Code] as varchar), Cast([SourceID] as varchar), Cast([Event_Date] as varchar), Cast([Upd_DateTime] as varchar), Cast([Privacy_Opt_Out_upd_DateTime] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Mer_TicketOrders_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
