{% snapshot Auct_MergeLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MergeLogID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MergeLog_InterView]
{% endsnapshot %}