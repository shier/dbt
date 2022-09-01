{% snapshot Auct_FormsHistory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FormHistoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FormsHistory_InterView]
{% endsnapshot %}