(get-aduser ORIGEM -Properties memberof).memberof | % {Add-ADGroupMember -Identity $_ -Members DESTINO}

# Subistitua ORIGEM e DESTINO pelo SAMAccountName do usuário. // Replace SOURCE and DESTINATION with the user's SAMAccountName.
# O DESTINO receberá a cópia dos grupos da ORIGEM // DESTINATION will receive a copy of the ORIGIN groups