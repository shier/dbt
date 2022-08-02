{% snapshot AH_SMStemplatecontents_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_SMStemplatecontents_InterView]
{% endsnapshot %}