{% snapshot Auct_AbsenteeBidType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AbsenteeBidTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AbsenteeBidType_InterView]
{% endsnapshot %}