grammar <grammarName>;
@members {<InitBooleanMember("enumKeyword",True())>}
primary
    :   ID {<writeln("\"ID \"+$ID.text")>}
    |   {<GetMember("enumKeyword"):Not()>}? 'enum' {<writeln("\"enum\"")>}
    ;
ID : [a-z]+ ;
WS : [ \t\n\r]+ -> skip ;