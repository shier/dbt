{% snapshot Auct_Chat_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ChatID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Chat_InterView]
{% endsnapshot %}