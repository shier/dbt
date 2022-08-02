{% snapshot Auct_EnablementLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EnablementLogID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_EnablementLog_InterView]
{% endsnapshot %}