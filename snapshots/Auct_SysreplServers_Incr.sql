{% snapshot Auct_SysreplServers_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SrvID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SysreplServers_InterView]
{% endsnapshot %}