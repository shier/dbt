{% snapshot Auct_UpdateLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UpdateLogID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UpdateLog_InterView]
{% endsnapshot %}