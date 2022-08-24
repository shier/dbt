{% snapshot Auct_Inspection_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='InspectionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Inspection_InterView]
{% endsnapshot %}