{% snapshot Auct_BidderStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BidderStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidderStatus_InterView]
{% endsnapshot %}