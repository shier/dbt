{% snapshot Auct_FeeType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeeTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FeeType_InterView]
{% endsnapshot %}