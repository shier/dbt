{% snapshot Auct_MediaDistrubutionType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DistributionTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaDistrubutionType_InterView]
{% endsnapshot %}