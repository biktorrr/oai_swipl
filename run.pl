#!/staff/jan/bin/pl -L0 -G0 -T0 -s

:- [load].

:- debug(oai).

sp(Server) :-
	oai_server_properties(Server, Server).
gr(Server) :-
	oai_records(Server, Server,
		    [ metadataPrefix=oai_dc
		    ]).
gr1(Server) :-
	oai_records(Server, Server,
		    [ metadataPrefix=oai_dc,
		      resume(false)
		    ]).
