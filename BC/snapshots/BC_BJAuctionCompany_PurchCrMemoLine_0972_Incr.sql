{% snapshot BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='systemId',
			check_cols='all'
		)
	}}
	SELECT * from stg.[BC_BJAuctionCompany_PurchCrMemoLine_0972_InterView]
{% endsnapshot %}