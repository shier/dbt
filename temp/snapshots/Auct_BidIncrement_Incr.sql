{% snapshot Auct_BidIncrement_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidIncrementID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidIncrement_InterView]
{% endsnapshot %}