{% snapshot Auct_AcceptionApplicationsBits_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AcceptionApplicationsBit',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AcceptionApplicationsBits_InterView]
{% endsnapshot %}