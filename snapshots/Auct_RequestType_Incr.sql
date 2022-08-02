{% snapshot Auct_RequestType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='RequestTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_RequestType_InterView]
{% endsnapshot %}