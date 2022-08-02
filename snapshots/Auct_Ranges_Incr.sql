{% snapshot Auct_Ranges_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='RangeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Ranges_InterView]
{% endsnapshot %}