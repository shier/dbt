{% snapshot AH_ThReadTracking_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ThReadGUID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ThReadTracking_InterView]
{% endsnapshot %}