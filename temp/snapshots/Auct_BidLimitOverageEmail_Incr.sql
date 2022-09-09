{% snapshot Auct_BidLimitOverageEmail_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EmailAddress',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BidLimitOverageEmail_InterView]
{% endsnapshot %}