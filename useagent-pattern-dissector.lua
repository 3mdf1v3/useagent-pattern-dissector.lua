local function DefineAndRegisterHexUserAgentdissector()
	local oProtoUserAgent = Proto('UserAgentPattern', 'HTTP User Agent Suspicious Pattern')
	local oProtoserAgentPattern = ProtoField.string('UserAgent.pattern', 'UserAgent Pattern', 'HTTP User Agent Suspicious Pattern')

	oProtoUserAgent.fields = {oProtoserAgentPattern}
	
	local oField_http_useragent = Field.new('http.user_agent')
	
	local UserAgentPattern = ({
		"^SAH%sAgent+",
		"^Async%sHTTP%sAgent+",
		"^malware+",
		"^Tear Application+",
		"^TCYWinHTTPDownload+",
		"^ErrCode+",
		"^RookIE%/1%.0$",
		"^SelectRebates+",
		"^wget%s3.0$",
		"^Error%sFix+",
		"^STORMDDOS+",
		"^MacProtector+",
		"^Opera%/8.89+",
		"^Baby%sRemote+",
		"^feranet%/0%.4$",
		"^darkness+",
		"^InfoBot%/+",
		"^Meterpreter+",
		"^0pera%s10+",
		"^Mozilla%/%/4.0%s%[compatible+",
		"^MBVDFRESCT+",
		"^API%-Guide%stest%sprogram+",
		"^Win32%/Amti+",
		"^Flag%:+",
		"^Aldi%sBot+",
		"^Google%sBot$",
		"^asafaweb%.com+",
		"^psi%sv+",
		"^YZF$",
		"^1234567890+",
		"^core%-project+",	
		"^tl%_v+",
		"^mus+",
		"^gbot+",
		"^BOT%/0%.1%s%(BOT%sfor%sJCE%)+",
		"^RAbcLib+",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s6%.0%;Windows%sNT%s5%.1%;%s%.NET%sCLR%s1%.1%.2150%)+",
		"^PoisonIvy+",
		"^you$",
		"^Alerter COM%++",
		"^Testing$",
		"^Opera%/9%.61$",
		"^vaccinepc+",
		"^Lizard%/1%.0$",
		"^test%_hInternet$",
		"^Google%spage$",
		"^Opera%/+",
		"^NewBrandTest$",
		"^me0hoi$",
		"^04%/XP$",
		"^User%-Agent%:%sMozilla%/4%.0+",
		"^cibabam+",
		"^NOKIAN95%/WEB+",
		"^Mozilla%/3%.0%s%(Compatible%)%s%;Brutus%/AET+",
		"^Opera%/10%s+",
		"^Win$",
		"^Alina+",
		"^J13A$",
		"^msctls%_progress32$",
		"^yahoonews$",
		"^IExplore$",
		"^umbra$",
		"^dtl2012$",
		"^SUiCiDE%/1%.5$",
		"^getURLDown$",
		"^Zollard$",
		"^fucking$",
		"^z00sAgent+",
		"^Update1.0$",
		"^fortis$",
		"^warpHTTP$",
		"^HTTP%s1%.1$",
		"^DMFR$",
		"^%(CustomSpy%)$",
		"^CWAD$",
		"^TestWinInet$",
		"^WebClient%sFor%sExtensions+",
		"^Mozilla%/981%.0%s%(compatible%;%sArachmo+",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s4%.01%;%sWindows%sNT)$",
		"^TixDll^",
		"^Updates downloader$",
		"^MSIE%s9%.0$",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s7%.0%;%sWindows%sNT%s5%.1%;%sSV1%)$",
		"^logogo%.exe+",
		"^getcmdw23$",
		"^getcmd$",
		"^aa$",
		"^Mozilla%s%/5%.0%s%(Windows%sNT%s5%.1$",
		"^InetAll$",
		"^Browser$",
		"^EyeS%_Client%_1%.0$",
		"^ebot$",
		"^Neutrino%/2%.1$",
		"^User%-Agent%:%sMozilla%/+",
		"^hello crazyk$",
		"^svchost$",
		"^DefaultBotPassword$",
		"^rome0321$",
		"^blacksun+",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s7%.0%;%sna%;+",
		"^Skypee+",
		"^MyProgramm+",
		"^HttpCall+",
		"^Treck$",
		"^Install$",
		"^Decebal+",
		"^httptestman$",
		"^xsser%.0day%s%(unknown%sversion+",
		"^update$",
		"^http$",
		"^BloodguyBrowser%-%_%-$",
		"^fast uax$",
		"^myupdate$",
		"^connect$",
		"^VUPHTTP$",
		"^globalupdate$",
		"^RUpdate$",
		"^realupdate$",
		"^Mazilla%/5%.0$",
		"^onlyupdate$",
		"^testupdate$",
		"^Updates%sdownloader$",
		"^onlymacros$",
		"^macrotest$",
		"^iMacros$",
		"^hi$",
		"^bbbbbbbbbb$",
		"^WATClient+",
		"^USER%_CHECK$",
		"^Tintin$",
		"^SLSSoapClient$",
		"^Peers12$",
		"^OperaMini$",
		"^Opera10$",
		"^Opera$",
		"^Mozilla$",
		"^Explorer$",
		"^FixUpdate$",
		"^Installer%/1%.0$",
		"^Wurst$",
		"^Player$",
		"^2808inst$",
		"^2608cw%-2$",
		"^2508Inst$",
		"^2608cw%-1$",
		"^AppUpdate$",
		"^Firefox%/5%.0$",
		"^Firefox$",
		"^DNS%sCheck$",
		"^ALIZER$",
		"^XAgent+",
		"^Downing$",
		"^Google%sOmaha$",
		"^DownloadMR+",
		"^dolit$",
		"^E9BC3BD76216AFA560BFB5ACAF5731A3+",
		"^KAIIOOOO871$",
		"^crackim+",
		"^spam%_bot$",
		"^Mozilla%sFirefox%/4%.0$",
		"^EMERY$",
		"^Mozilla%/4%.0%+%(compatible%;$+MSIE$+6$.0%;%+Windows%+NT%+5%.1%;+SV1%;%+%.NET%+CLR%+2%.0%.50727$",
		"^EI%sPlugin%supdater+",
		"^Mozilla%/5%.0%s%(compatible%;%sZollard%;%sLinux$",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE\"%;%snocase%;%shttp%_header%;%scontent%:\"%sMyIE%s3%.01$",
		"^Mozila%/5%.0$",
		"^FromtheGods+",
		"^jexboss+",
		"^uguogo$",
		"^fsrhrsrg$",
		"^InetURL%:%/1%.0$",
		"^mozilla%/2%.0$",
		"^InstallCapital$",
		"^Mozilla%/4%.08%s%(Charon%;%sInferno$",
		"^F%.5%.E%.C%sDRILL+",
		"^MyAgrent+",
		"^bUQ8QmvUpI57udWFxQHPkuyKDfc3T8u5+",
		"^Godzilla+",
		"^Mozilla%/5%.0%s%(compatible%,%sViper%s4%.0%)+",
		"^DriveCleaner%sUpdater+",
		"^Museon+",
		"^pcsafe+",
		"^H$",
		"^Microsoft%sInternet%sExplorer+",
		"^%_$",
		"^BlackSun+",
		"^Mozzila+",
		"^WinFix%sMaster+",
		"^ScrapeBox+",
		"^msndown$",
		"^iamx%/+",
		"^Win32+",
		"^REKOM+",
		"^Moxilla+",
		"^opera%/8%.11$",
		"^VCTestClient+",
		"^PrivacyInfoUpdate+",
		"^VMozilla+",
		"^VERTEXNET+",
		"^sample+",
		"^Mozilla%/3%.0$",
		"^IE6%son%sWindows%sXP+",
		"^Lotto+",
		"^AskPartner+",
		"^changhuatong$",
		"^CholTBAgent+",
		"^mdms$",
		"^asd$",
		"^SimpleClient+",
		"^Cyberdog+",
		"^Google page+",
		"^EmailSiphon+",
		"^Binget%/+",
		"^pxyscand%/+",
		"^PyCurl+",
		"^Atomic%_Email%_Hunter%/+",
		"^Revolution+",
		"^BGroom+",
		"^tiny$",
		"^adlib%/+",
		"^Mozilla%/5%.0%s%(Windows%sNT%s5%.1%s%;%sv%.+",
		"^zeroup+",
		"^DownloadMR+",
		"^ChilkatUpload+",
		"^FOCA$",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s6%.1%;%sWindows%sNT%)$",
		"^WT%-User%-Agent%:%sWT%sGames%sApp+",
		"^Mozilla%/5%.0%s%(compatible%;%sBLEXBot%/+",
		"^Mozilla%/5%.0%s%(Windows%sNT%s5%.1%;%srv%:11%.0%)%sGecko%/20100101%sFirefox%/24%.0+",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s7%.0%;%sWindows%sNT%s5%.1%;%sTrident%/4%.0%;%sMozilla%/4%.0%s%(compatible%;%sMSIE%s6%.0%;%sWindows%sNT%s5%.1%;%sSV1%)%s%;%sMaxthon%/3%.0%)+",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s7%.0%;%sWindows%sNT%s5%.1%;%sTrident%/4%.0%;%sMozilla%/4%.0%s%(compatible%;%sMSIE%s6%.0%;%sWindows%sNT%s5%.1%;%sSV1%)%s%;%s360SE%)+",
		"^Mozilla%/4%.0%s%(compatible%;%sMSIE%s8%.0%;%sWindows%sNT%s5%.1%;%sTrident%/4%.0%;%sInfoPath%.1%)+",
	})
	
	function oProtoUserAgent.dissector(buffer, pinfo, tree)	
		local i_http_useragent = oField_http_useragent()
		local s_http_useragent = tostring(i_http_useragent)
		if s_http_useragent then	
			for i,value in pairs(UserAgentPattern) do
				local userAgent = string.match(string.lower(s_http_useragent),string.lower(value))
				if userAgent then
					local oSubtree = tree:add(oProtoUserAgent, 'HTTP User Agent Suspicious Pattern')
					oSubtree:add(oProtoserAgentPattern, userAgent)
				end
			end
		end
	end
					
	register_postdissector(oProtoUserAgent)
end

local function Main()
	DefineAndRegisterHexUserAgentdissector()
end

Main()
