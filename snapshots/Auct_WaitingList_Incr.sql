{% snapshot Auct_WaitingList_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='WaitingListID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_WaitingList_InterView]
{% endsnapshot %}