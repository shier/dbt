{% snapshot Auct_AbsenteeBID_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AbsenteeBidID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AbsenteeBID_InterView]
{% endsnapshot %}