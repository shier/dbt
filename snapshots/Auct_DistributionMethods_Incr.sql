{% snapshot Auct_DistributionMethods_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DistributionMethodID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DistributionMethods_InterView]
{% endsnapshot %}