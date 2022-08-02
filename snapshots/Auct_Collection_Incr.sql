{% snapshot Auct_Collection_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CollectionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Collection_InterView]
{% endsnapshot %}