{% snapshot Auct_CarOptioncar_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarOptioncarID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarOptioncar_InterView]
{% endsnapshot %}