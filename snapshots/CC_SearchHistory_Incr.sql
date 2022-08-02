{% snapshot CC_SearchHistory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SearchHistoryPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_SearchHistory_InterView]
{% endsnapshot %}