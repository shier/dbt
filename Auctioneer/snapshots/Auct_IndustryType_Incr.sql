{% snapshot Auct_IndustryType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='IndustryTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_IndustryType_InterView]
{% endsnapshot %}