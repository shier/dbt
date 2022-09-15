{% snapshot BC_BJAuctionCompany_SalesCrMemoHeader_8d9d_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='No',
			check_cols='all'
		)
	}}
	SELECT * from stg.[BC_BJAuctionCompany_SalesCrMemoHeader_8d9d_InterView]
{% endsnapshot %}