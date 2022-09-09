{% snapshot Auct_CarMake_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarMakeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarMake_InterView]
{% endsnapshot %}