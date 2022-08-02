{% snapshot Auct_Content_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContentID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Content_InterView]
{% endsnapshot %}