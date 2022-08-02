{% snapshot Auct_Buyer_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BuyerID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Buyer_InterView]
{% endsnapshot %}