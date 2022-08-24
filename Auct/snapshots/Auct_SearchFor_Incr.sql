{% snapshot Auct_SearchFor_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SearchForID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SearchFor_InterView]
{% endsnapshot %}