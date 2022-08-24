{% snapshot Auct_AccountingLog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AccountingLogID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AccountingLog_InterView]
{% endsnapshot %}