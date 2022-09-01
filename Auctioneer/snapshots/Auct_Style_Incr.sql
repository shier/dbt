{% snapshot Auct_Style_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='StyleID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Style_InterView]
{% endsnapshot %}