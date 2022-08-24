{% snapshot Auct_AuctionCustomerCommission_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CustomerAccountID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuctionCustomerCommission_InterView]
{% endsnapshot %}