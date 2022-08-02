{% snapshot Auct_BlockBID_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BlockBidID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BlockBID_InterView]
{% endsnapshot %}