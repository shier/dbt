{% snapshot Auct_BidLimitReturnType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidLimitReturnTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidLimitReturnType_InterView]
{% endsnapshot %}