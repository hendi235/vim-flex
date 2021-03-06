" Vim syntax file
" Language:    Flex Logic	
" Maintainer: hendi.maulana
" Last Change:

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Flex Logic is case sensitive
"syn case ignore

syn keyword flexConditional IF THEN ELSIF ELSE CASE SWITCH EQUALS
syn keyword flexRepeat DO FOR LOOP NEXT TO UNTIL END WHILE
" Statement
syn keyword flexStatement PARAMETERS RESULTS DEFAULT RETURN INTERFACE MANDATORY
syn keyword flexStatement EXISTS CALL ADMIN_INSTANCE INSTANCE SPECIAL CASES
syn keyword flexStatement ON OR TO XOR AND NOT OF DIV
syn keyword flexStatement CALL_IF_EXISTS IF_NOT_EXISTS IF_EXISTS
syn match flexStatement "[#]"

syn keyword flexBoolean  TRUE FALSE
syn keyword flexConst NULL
" Datatypes
syn keyword flexTypes BOOLEAN BYTE FLOAT ARRAY
syn keyword flexTypes INTEGER LONG STRING CONST ENUM
syn keyword flexTypes DATE TIME DATE_AND_TIME

syn match flexOperator "[()+.,\-/*=&]"
syn match flexOperator "[<>]=\="
syn match flexOperator "<>"
syn match flexOperator "\s\+_$"
syn match flexOperator "[:]"

"syn match flexOperator \"[#:]"

" Flex Actions
syn keyword flexMethods Abort AccessStatisticsCounter Addition AddNumberToList AppendAnnoForGroupCall
syn keyword flexMethods AppendAnnouncement AppendClassification AppendMenuItem AppendMenuItemSelCodeList
syn keyword flexMethods AppendValue ArrayCopy AsciiToChar Assignment Charge DeleteBalObject ReadBalance
syn keyword flexMethods Recharge ReleaseReservation Reserve SetSessionCreditLimit SetExpirationDate SetSessionValues
syn keyword flexMethods BitwiseOps BooleanTerm CallSubroutine ChangeNumberAtPositionInList CheckPin Condition Connect
syn keyword flexMethods CounterCalculateNextDate CounterCheckAccumulators CounterGetPeriodFactor
syn keyword flexMethods CounterGetSubscriberValue CounterInitialize CounterRemove CounterSetBalances
syn keyword flexMethods CounterSetSubscriberValue CreateUniqueId CutPrefix DecodeString DecrementUseCaseCounter
syn keyword flexMethods DeleteNumberFromList DeleteSubscription DynamicAliasGenAcc ExistsVariable
syn keyword flexMethods FindDiscountsForContract FindInDataModel FindMandatoryPackagesForContract FindMnpData
syn keyword flexMethods FindPeriodicForContract FindProductForContract FindSubscriptionsForContract FloatDivision
syn keyword flexMethods FlushNotifications Format genMsgAddLeafs genMsgCreateNewMsg genMsgGetEnumValue
syn keyword flexMethods genMsgGetEventType genMsgReadEventAttribute genMsgSendAndFlush GetCalendarField
syn keyword flexMethods GetCellCongestion GetCurrentTime GetGroupMembership GetHandleOfCursor GetLogicId
syn keyword flexMethods GetNumberFromList GetNumberOfReferencedEntities GetOnTouchDateForSubscription
syn keyword flexMethods GetRoamingZone GetRoamingZoneByDomain GetRoamingZoneByIPAddress GetRoamingZoneByMccMnc
syn keyword flexMethods GetSize GetSubscriptions GetSubscriptionState GetSuppliers GetTimeId GetTimeZoneInfo
syn keyword flexMethods GetValue GroupCall HttpRequest IfEqual IfGreater IfLess IncrementUseCaseCounter
syn keyword flexMethods IndexOf InsertNewSubscription IntegerDivision IsClassificationAvailable IsInRange
syn keyword flexMethods IsNumberInList IsPerformanceTimerRunning IsSubscriptionActive IsSubscriptionInfoSet
syn keyword flexMethods IsSubscriptionMandatory IsValueAvailable LoadSubscriberData BalanceIdToName
syn keyword flexMethods BalanceNameToId Matrix Maximum MaximumFromList Minimum MinimumFromList ModifyDate
syn keyword flexMethods ModifyNumberInList Modulo Multiplication Multiplex NavigateCursor NavigateCursorInList
syn keyword flexMethods NoOperation Notify NotifyImmediately NormalizeNumber PatternMatch PlayAnnouncement
syn keyword flexMethods PlayMenu Prompt ReadCIBMessage ReadESXMessage ReadTicket RemoveGenericAccessVariable
syn keyword flexMethods RemoveOptionalGDMAttribute RequestNotifyImmediately ResetMenuAndAnnos SendAtiMessage
syn keyword flexMethods SendAtmMessage SendAtsiMessage SendCIBMessage SendESXMessage SendSmsViaMap SendSms
syn keyword flexMethods SendUSSDNotification SendUSSDPrompt SendUSSDResponse SetBalance SetCallTicketFields
syn keyword flexMethods SetCursorByHandle SetLocalPushFields SetOnTouchDateForSubscription SetPushFields
syn keyword flexMethods SetSubscriptionActive SetSubscriptionInfo Sort StandardVoucherRecharging StartPerformanceTimer
syn keyword flexMethods StopPerformanceTimer StringCase StringConcatenation StringLength StringReplace
syn keyword flexMethods StringStartsWith StringTokenizer SubString Subtraction Switch TimeIntervals TimeZone
syn keyword flexMethods Trace TypeCast WasSubscriptionInsertedViaBatch WriteConfirmationTicket

" Todo
syn keyword flexTodo contained	TODO

" Numbers
" integer number, or floating point number without a dot.
syn match flexNumber "\<\d\+\>"
" floating point number, with dot
syn match flexNumber "\<\d\+\.\d*\>"
" floating point number, starting with a dot
syn match flexNumber "\.\d\+\>"
syn match  flexFloat		"[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match  flexFloat		"[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match  flexFloat		"[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character contstants
syn region  flexString		start=+"+  end=+"\|$+
syn region  flexComment		start="/\*"  end="\*/" contains=flexTodo
syn match   flexComment		"//.*$" contains=flexTodo
syn match   flexLineNumber	"^\d\+\(\s\|$\)"
syn match   flexTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
syn match   flexTypeSpecifier  "#[a-zA-Z0-9]"me=e-1

" Global variable a.k.a Generic Access
syn match flexGlobalVar    "theGenericAccess\.[^;|:|,| ]*"
syn match flexGlobalVar    "InputParameters\.[^;|:|,| ]*"
syn match flexGlobalVar    "tga\.[^;|:|,| ]*"
syn match flexGlobalVar    "Const\.[^;|:|,| ]*"
syn match flexGlobalVar    "CCS[^;|:|,| ]*\.[^;|:|,| ]*"
syn match flexGlobalVar    "AdditionalResult\.[^;|:|,| ]*"
syn match flexGlobalVar    "Call[^;|:|,| ]*\.[^;|:|,| ]*"
syn match flexGlobalVar    "Counters\.[^;|:|,| ]*"
syn match flexGlobalVar    "CheapSpot\.[^;|:|,| ]*"
syn match flexGlobalVar    "FBC\.[^;|:|,| ]*"
syn match flexGlobalVar    "HotCharge[^;|:|,| ]*\.[^;|:|,| ]*"
syn match flexGlobalVar    "OnTouch\.[^;|:|,| ]*"
syn match flexGlobalVar    "QoS\.[^;|:|,| ]*"
syn match flexGlobalVar    "RatingInformation\.[^;|:|,| ]*"
syn match flexGlobalVar    "Ss7[^;|:|,| ]*\.[^;|:|,| ]*"
syn match flexGlobalVar    "SponsoredCalls\.[^;|:|,| ]*"
syn match flexGlobalVar    "DTMF[^;|:|,| ]*\.[^;|:|,| ]*"
syn match flexGlobalVar    "convChargingGAEvent\.[^;|:|,| ]*"
syn match flexGlobalVar    "CallSupervision\.[^;|:|,| ]*"

" just to test coloring
syn keyword flexStorage storageClass
syn keyword flexException exceptionClass
syn keyword flexSpecialChar specialCharClass
syn keyword flexLabel labelClass
syn keyword flexPrecondition preconditionClass
syn keyword flexTestRepeat repeatClass
syn keyword flexStructure structureClass
syn keyword flexMacro macroClass
syn keyword flexInclude includeClass
syn keyword flexDefinition defineClass
syn keyword flexDelimiter delimiterClass
syn keyword flexVimString vimStringClass
syn keyword flexVimSpecial vimSpecialClass
syn keyword flexWarningMsg warningMsgClass

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_flex_syntax_inits")
	if version < 508
		let did_flex_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

        " just to test coloring"
        HiLink flexVimString    vimString
        HiLink flexVimSpecial    vimSpecial
        HiLink flexWarningMsg    WarningMsg
        HiLink flexStorage    StorageClass
        HiLink flexSpecialChar    SpecialChar
        HiLink flexPrecondition    PreCondit
        HiLink flexException    Exception
        HiLink flexLabel    Label
        HiLink flexTestRepeat    Repeat
        HiLink flexStructure   Structure
        HiLink flexMacro   Macro
        HiLink flexInclude    Include
        HiLink flexDefinition    Define
        HiLink flexDelimiter    Delimiter
        " ---------
        
        HiLink flexGlobalVar    Type    "Todo
	HiLink flexBoolean		Special "Identifier
	HiLink flexLineNumber		Comment
	HiLink flexComment		Comment
	HiLink flexConditional    Identifier	
	HiLink flexConst		Special	"Constant
	HiLink flexDefine			Constant
	HiLink flexError			Error
	HiLink flexFunction		Identifier
	HiLink flexIdentifier		Identifier
	HiLink flexNumber			Number
	HiLink flexFloat			Number "Float
	HiLink flexMethods		PreProc
	HiLink flexOperator		Operator
"	HiLink flexRepeat			Repeat
        HiLink flexRepeat			Identifier
	HiLink flexString		SpecialChar	"String
	HiLink flexStatement		Identifier
	HiLink flexKeyword		Statement
	HiLink flexEvents			Special
	HiLink flexTodo			Todo
	HiLink flexTypes		Todo    "Type
	HiLink flexTypeSpecifier	Type

	delcommand HiLink
endif

let b:current_syntax = "flex"

" vim: ts=8
