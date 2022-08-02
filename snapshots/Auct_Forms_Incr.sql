{% snapshot Auct_Forms_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FormID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Forms_InterView]
{% endsnapshot %}