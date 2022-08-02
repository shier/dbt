{% snapshot Mer_Date_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DateID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_Date_InterView]
{% endsnapshot %}