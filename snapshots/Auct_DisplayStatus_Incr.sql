{% snapshot Auct_DisplayStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DisplayStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DisplayStatus_InterView]
{% endsnapshot %}