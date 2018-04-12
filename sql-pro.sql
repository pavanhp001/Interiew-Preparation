select * from domain_config;
"DOMAIN_CONFIG_ID"	"NAME"	"VALUE"	"DOMAIN_ID"
"1"	"channelCSS"	"allconnect.css"	"101"
"2"	"channelType"	"web"	"101"
"3"	"flowType"	"allconnect"	"101"
"4"	"channelCSS"	"cox.css"	"102"
"5"	"channelType"	"web"	"102"
"6"	"flowType"	"cox"	"102"
"7"	"provider_logo"	"ctc-logo.png"	"102"
"8"	"provider_phone"	"1-877-878-1747"	"102"
"9"	"provider_logo"	"ctc-logo.png"	"102"
"10"	"provider_phone"	"1-877-878-1747"	"102"
"11"	"provider_phone"	"1-877-878-1747"	"102"
"12"	"provider_phone"	"1-877-878-1747"	"102"


select count(*) from domain_config;

"count(*)"
"12"

alter table domain_config 
add domain_value int;

desc domain_config

"Field"			"Type"		"Null"		"Key"		"Default"	"Extra"
"DOMAIN_CONFIG_ID"	"int(10)"	"NO"		"PRI"		"0"		""
"NAME"			"varchar(50)"	"YES"		""		\N		""
"VALUE"			"varchar(50)"	"YES"		""		\N		""
"DOMAIN_ID"		"int(10)"	"YES"		"MUL"		\N		""
"domain_value"		"int(11)"	"YES"		""		\N		""

select * from domain_config

"DOMAIN_CONFIG_ID"	"NAME"		"VALUE"			"DOMAIN_ID"	"domain_value"
"1"			"channelCSS"	"allconnect.css"	"101"	"54"
"2"			"channelType"	"web"			"101"	"43"
"3"			"flowType"	"allconnect"		"101"	"23"
"4"			"channelCSS"	"cox.css"		"102"	"45"
"5"			"channelType"	"web"			"102"	"43"
"6"			"flowType"	"cox"			"102"	"56"
"7"			"provider_logo"	"ctc-logo.png"		"102"	"43"
"8"			"provider_phone""1-877-878-1747"	"102"	"34"
"9"			"provider_logo"	"ctc-logo.png"		"102"	"56"
"10"			"provider_phone""1-877-878-1747"	"102"	"35"
"11"			"provider_phone""1-877-878-1747"	"102"	"34"
"12"			"provider_phone""1-877-878-1747"	"102"	"43"


select max(domain_value) from domain_config

"max(domain_value)"
"56"


select max(domain_value) from domain_config group by domain_id

"max(domain_value)"
"54"
"56"

Find the 3rd MAX salary in the emp table.====

select distinct domain_value from domain_config d1 
where 3= (select count(distinct domain_value) from domain_config d2 where d1.domain_value <= d2.domain_value)

"domain_value"
"45"

select * from domain_config minus select * from domain_config where rownum < (select count(*) from domain_config)

select * from domain_config minus select * from domain_config,(SELECT @rownum:=0) r where @rownum:=@rownum+1 ‘rank’ < (select count(*) from domain_config)


select @rownum:=@rownum+1 ‘rank’, p.* from domain_config p,(SELECT @rownum:=0) r

"‘rank’"	"DOMAIN_CONFIG_ID"	"NAME"	"VALUE"	"DOMAIN_ID"	"domain_value"
"1"	"1"	"channelCSS"	"allconnect.css"	"101"	"54"
"2"	"2"	"channelType"	"web"	"101"	"43"
"3"	"3"	"flowType"	"allconnect"	"101"	"23"
"4"	"4"	"channelCSS"	"cox.css"	"102"	"45"
"5"	"5"	"channelType"	"web"	"102"	"43"
"6"	"6"	"flowType"	"cox"	"102"	"56"
"7"	"7"	"provider_logo"	"ctc-logo.png"	"102"	"43"
"8"	"8"	"provider_phone"	"1-877-878-1747"	"102"	"34"
"9"	"9"	"provider_logo"	"ctc-logo.png"	"102"	"56"
"10"	"10"	"provider_phone"	"1-877-878-1747"	"102"	"35"
"11"	"11"	"provider_phone"	"1-877-878-1747"	"102"	"34"
"12"	"12"	"provider_phone"	"1-877-878-1747"	"102"	"43"


