{% snapshot Auct_CarType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarType_InterView]
{% endsnapshot %}