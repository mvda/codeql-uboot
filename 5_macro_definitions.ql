import cpp

from Macro m
where m.getName().prefix(4) = "ntoh"
select m, "a macro named ntoh*"

