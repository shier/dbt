{% snapshot Auct_UserContactType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UserContactTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserContactType_InterView]
{% endsnapshot %}