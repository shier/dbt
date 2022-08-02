{% snapshot Auct_Location_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LocationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Location_InterView]
{% endsnapshot %}