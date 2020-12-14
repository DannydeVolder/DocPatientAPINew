À0
bC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\AppointmentController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class !
AppointmentController &
:' (
ControllerBase) 7
{ 
private 
readonly 
IAppointmentService ,
_appointmentService- @
;@ A
public !
AppointmentController $
($ %
IAppointmentService% 8
appointmentService9 K
)K L
{ 	
_appointmentService 
=  !
appointmentService" 4
;4 5
} 	
[ 	
	Authorize	 
( !
AuthenticationSchemes (
=) *
$str+ 8
,8 9
Roles: ?
=@ A
RoleB F
.F G
PatientG N
)N O
]O P
[ 	
HttpPost	 
( 
$str %
)% &
]& '
public 
async 
Task 
< 
IActionResult '
>' (
CreateAppointment) :
(: ; 
CreateAppointmentDTO; O 
createAppointmentDTOP d
)d e
{ 	
if   
(   

ModelState   
.   
IsValid   "
)  " #
{!!  
createAppointmentDTO"" $
.""$ %
	PatientID""% .
=""/ 0
Guid""1 5
.""5 6
Parse""6 ;
(""; <
User""< @
.""@ A
FindFirstValue""A O
(""O P

ClaimTypes""P Z
.""Z [
NameIdentifier""[ i
)""i j
)""j k
;""k l
var## 
result## 
=## 
await## "
_appointmentService### 6
.##6 7
CreateAppointment##7 H
(##H I 
createAppointmentDTO##I ]
)##] ^
;##^ _
if%% 
(%% 
result%% 
!=%% 
null%% !
)%%! "
{&& 
return'' 
Ok'' 
('' 
result'' $
)''$ %
;''% &
}(( 
return)) 

BadRequest)) !
())! "
new))" %
{))& '
message))( /
=))0 1
$str))2 d
}))e f
)))f g
;))g h
}** 
return++ 

BadRequest++ 
(++ 

ModelState++ (
)++( )
;++) *
},, 	
[.. 	
	Authorize..	 
(.. !
AuthenticationSchemes.. (
=..) *
$str..+ 8
,..8 9
Roles..: ?
=..@ A
Role..B F
...F G
Doctor..G M
+..N O
$str..P S
+..T U
Role..V Z
...Z [
Patient..[ b
)..b c
]..c d
[// 	

HttpDelete//	 
(// 
$str// '
)//' (
]//( )
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (
DeleteAppointment00) :
(00: ;
[00; <
Required00< D
]00D E
Guid00F J
appointmentId00K X
)00X Y
{11 	
if22 
(22 

ModelState22 
.22 
IsValid22 "
)22" #
{33 
var44 
result44 
=44 
await44 "
_appointmentService44# 6
.446 7
DeleteAppointment447 H
(44H I
appointmentId44I V
)44V W
;44W X
if66 
(66 
result66 
.66 
Status66  
==66! #
Status66$ *
.66* +
Success66+ 2
)662 3
{77 
return88 
Ok88 
(88 
)88 
;88  
}99 
return;; 

BadRequest;; !
(;;! "
new;;" %
{;;& '
message;;( /
=;;0 1
result;;2 8
.;;8 9
Message;;9 @
};;A B
);;B C
;;;C D
}<< 
return== 

BadRequest== 
(== 

ModelState== (
)==( )
;==) *
}>> 	
[@@ 	
	Authorize@@	 
(@@ !
AuthenticationSchemes@@ (
=@@) *
$str@@+ 8
,@@8 9
Roles@@: ?
=@@@ A
Role@@B F
.@@F G
Doctor@@G M
+@@N O
$str@@P S
+@@T U
Role@@V Z
.@@Z [
Patient@@[ b
)@@b c
]@@c d
[AA 	
HttpGetAA	 
(AA 
$strAA $
)AA$ %
]AA% &
publicBB 
asyncBB 
TaskBB 
<BB 
IActionResultBB '
>BB' (
GetMyAppointmentsBB) :
(BB: ;
)BB; <
{CC 	
varDD 
userIdDD 
=DD 
UserDD 
.DD 
FindFirstValueDD ,
(DD, -

ClaimTypesDD- 7
.DD7 8
NameIdentifierDD8 F
)DDF G
;DDG H
varEE 
resultEE 
=EE 
_appointmentServiceEE ,
.EE, -
GetMyAppointmentsEE- >
(EE> ?
GuidEE? C
.EEC D
ParseEED I
(EEI J
userIdEEJ P
)EEP Q
)EEQ R
;EER S
ifGG 
(GG 
resultGG 
.GG 
StatusGG 
==GG 
StatusGG  &
.GG& '
ErrorGG' ,
)GG, -
{HH 
returnII 

BadRequestII !
(II! "
newII" %
{II& '
messageII( /
=II0 1
resultII2 8
.II8 9
MessageII9 @
}IIA B
)IIB C
;IIC D
}JJ 
returnLL 
OkLL 
(LL 
resultLL 
)LL 
;LL 
}MM 	
}NN 
}OO ”q
[C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\AuthController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IAuthService %
_authService& 2
;2 3
	protected 
IAntiforgery 
_antiforgery +
;+ ,
public 
AuthController 
( 
IAuthService *
authService+ 6
,6 7
IAntiforgery8 D
antiforgeryE P
)P Q
{ 	
_antiforgery 
= 
antiforgery &
;& '
_authService   
=   
authService   &
;  & '
}!! 	
[## 	
AllowAnonymous##	 
]## 
[$$ 	"
IgnoreAntiforgeryToken$$	 
]$$  
[%% 	
HttpPost%%	 
(%% 
$str%%  
)%%  !
]%%! "
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
Authenticate&&) 5
(&&5 6$
AuthenticationAttemptDTO&&6 N
authAttemptDTO&&O ]
)&&] ^
{'' 	
if(( 
((( 

ModelState(( 
.(( 
IsValid(( "
)((" #
{)) 
try** 
{++ 
var,, 
response,,  
=,,! "
await,,# (
_authService,,) 5
.,,5 6
Authenticate,,6 B
(,,B C
authAttemptDTO,,C Q
),,Q R
;,,R S
Response00 
.00 
Cookies00 $
.00$ %
Append00% +
(00+ ,
$str11 &
,11& '
response22  
.22  !
JwtToken22! )
,22) *
new33 
CookieOptions33 )
{44 
Expires55 #
=55$ %
DateTime55& .
.55. /
Now55/ 2
.552 3

AddMinutes553 =
(55= >
$num55> @
)55@ A
,55A B
HttpOnly66 $
=66% &
true66' +
,66+ ,
IsEssential77 '
=77( )
true77* .
}88 
)88 
;88 
Response;; 
.;; 
Cookies;; $
.;;$ %
Append;;% +
(;;+ ,
$str<< '
,<<' (
response==  
.==  !
RefreshToken==! -
,==- .
new>> 
CookieOptions>> )
{?? 
Expires@@ #
=@@$ %
DateTime@@& .
.@@. /
Now@@/ 2
.@@2 3
AddDays@@3 :
(@@: ;
$num@@; <
)@@< =
,@@= >
HttpOnlyAA $
=AA% &
trueAA' +
,AA+ ,
IsEssentialBB '
=BB( )
trueBB* .
}CC 
)CC 
;CC 
HttpContextEE 
.EE  
UserEE  $
=EE% &
responseEE' /
.EE/ 0
claimsUserPrincipalEE0 C
;EEC D
varGG 
tokensGG 
=GG  
_antiforgeryGG! -
.GG- .
GetAndStoreTokensGG. ?
(GG? @
HttpContextGG@ K
)GGK L
;GGL M
ResponseHH 
.HH 
CookiesHH $
.HH$ %
AppendHH% +
(HH+ ,
$strII ,
,II, -
tokensJJ 
.JJ 
RequestTokenJJ +
,JJ+ ,
newKK 
CookieOptionsKK )
(KK) *
)KK* +
{LL 
ExpiresMM #
=MM$ %
DateTimeMM& .
.MM. /
NowMM/ 2
.MM2 3
AddDaysMM3 :
(MM: ;
$numMM; <
)MM< =
,MM= >
HttpOnlyNN $
=NN% &
falseNN' ,
,NN, -
IsEssentialOO '
=OO( )
trueOO* .
}PP 
)PP 
;PP 
varRR 
resultRR 
=RR  
newRR! $
	ResultDTORR% .
(RR. /
)RR/ 0
;RR0 1
resultSS 
.SS 
StatusSS !
=SS" #
StatusSS$ *
.SS* +
SuccessSS+ 2
;SS2 3
resultTT 
.TT 
MessageTT "
=TT# $
$strTT% B
;TTB C
resultUU 
.UU 
DataUU 
=UU  !
responseUU" *
;UU* +
returnVV 
OkVV 
(VV 
resultVV $
)VV$ %
;VV% &
}WW 
catchXX 
(XX %
TwoFactorEnabledExceptionXX 0
exXX1 3
)XX3 4
{YY 
varZZ 
resultZZ 
=ZZ  
newZZ! $
	ResultDTOZZ% .
(ZZ. /
)ZZ/ 0
;ZZ0 1
result[[ 
.[[ 
Status[[ !
=[[" #
Status[[$ *
.[[* +
Error[[+ 0
;[[0 1
result\\ 
.\\ 
Message\\ "
=\\# $
$str\\% j
;\\j k
return]] 
Ok]] 
(]] 
result]] $
)]]$ %
;]]% &
}^^ 
catch__ 
(__ 0
$UsernameOrPasswordIncorrectException__ :
ex__; =
)__= >
{`` 
returnaa 

BadRequestaa %
(aa% &
newaa& )
{aa* +
messageaa, 3
=aa4 5
$straa6 Z
}aa[ \
)aa\ ]
;aa] ^
}bb 
}cc 
returndd 

BadRequestdd 
(dd 

ModelStatedd (
)dd( )
;dd) *
}ee 	
[gg 	"
IgnoreAntiforgeryTokengg	 
]gg  
[hh 	
	Authorizehh	 
(hh !
AuthenticationSchemeshh (
=hh) *
$strhh+ 9
)hh9 :
]hh: ;
[ii 	
HttpPostii	 
(ii 
$strii 
)ii 
]ii 
publicjj 
asyncjj 
Taskjj 
<jj 
IActionResultjj '
>jj' (
SignOutjj) 0
(jj0 1
)jj1 2
{kk 	
ifll 
(ll 

ModelStatell 
.ll 
IsValidll "
)ll" #
{mm 
varnn 
	signedOutnn 
=nn 
awaitnn  %
_authServicenn& 2
.nn2 3
SignOutnn3 :
(nn: ;
Guidnn; ?
.nn? @
Parsenn@ E
(nnE F
UsernnF J
.nnJ K
FindFirstValuennK Y
(nnY Z

ClaimTypesnnZ d
.nnd e
NameIdentifiernne s
)nns t
)nnt u
)nnu v
;nnv w
ifpp 
(pp 
	signedOutpp 
)pp 
{qq 
Responserr 
.rr 
Cookiesrr $
.rr$ %
Deleterr% +
(rr+ ,
$strrr, :
)rr: ;
;rr; <
Responsess 
.ss 
Cookiesss $
.ss$ %
Deletess% +
(ss+ ,
$strss, ;
)ss; <
;ss< =
Responsett 
.tt 
Cookiestt $
.tt$ %
Deletett% +
(tt+ ,
$strtt, @
)tt@ A
;ttA B
returnuu 
Okuu 
(uu 
)uu 
;uu  
}vv 
elsexx 
{yy 
returnzz 

BadRequestzz %
(zz% &
newzz& )
{zz* +
messagezz, 3
=zz4 5
$strzz6 M
}zzN O
)zzO P
;zzP Q
}{{ 
}|| 
return}} 

BadRequest}} 
(}} 

ModelState}} (
)}}( )
;}}) *
}~~ 	
[
ÄÄ 	
AllowAnonymous
ÄÄ	 
]
ÄÄ 
[
ÅÅ 	$
IgnoreAntiforgeryToken
ÅÅ	 
]
ÅÅ  
[
ÇÇ 	
HttpPost
ÇÇ	 
(
ÇÇ 
$str
ÇÇ 
)
ÇÇ 
]
ÇÇ 
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
IActionResult
ÉÉ '
>
ÉÉ' (
Register
ÉÉ) 1
(
ÉÉ1 2 
RegisterAccountDTO
ÉÉ2 D 
registerAccountDTO
ÉÉE W
)
ÉÉW X
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 

ModelState
ÖÖ 
.
ÖÖ 
IsValid
ÖÖ "
)
ÖÖ" #
{
ÜÜ 
try
áá 
{
àà 
var
ââ 
result
ââ 
=
ââ  
await
ââ! &
_authService
ââ' 3
.
ââ3 4
Register
ââ4 <
(
ââ< = 
registerAccountDTO
ââ= O
)
ââO P
;
ââP Q
if
ää 
(
ää 
result
ää 
==
ää !
true
ää" &
)
ää& '
{
ãã 
return
åå 
Ok
åå !
(
åå! "
)
åå" #
;
åå# $
}
çç 
}
éé 
catch
èè 
(
èè $
UserNameTakenException
èè ,
e
èè- .
)
èè. /
{
êê 
return
ëë 

BadRequest
ëë %
(
ëë% &
new
ëë& )
{
ëë* +
message
ëë, 3
=
ëë4 5
e
ëë6 7
.
ëë7 8
Message
ëë8 ?
}
ëë@ A
)
ëëA B
;
ëëB C
}
íí 
catch
ìì 
(
ìì 
	Exception
ìì  
)
ìì  !
{
îî 
return
ïï 

BadRequest
ïï %
(
ïï% &
new
ïï& )
{
ïï* +
message
ïï, 3
=
ïï4 5
$str
ïï6 M
}
ïïN O
)
ïïO P
;
ïïP Q
}
ññ 
}
óó 
return
òò 

BadRequest
òò 
(
òò 
new
òò !
{
òò" #
message
òò$ +
=
òò, -
$str
òò. E
}
òòF G
)
òòG H
;
òòH I
}
öö 	
[
úú 	
	Authorize
úú	 
(
úú #
AuthenticationSchemes
úú (
=
úú) *
$str
úú+ 8
)
úú8 9
]
úú9 :
[
ùù 	
HttpPost
ùù	 
(
ùù 
$str
ùù "
)
ùù" #
]
ùù# $
public
ûû 
async
ûû 
Task
ûû 
<
ûû 
IActionResult
ûû '
>
ûû' (
RegisterDoctor
ûû) 7
(
ûû7 8 
RegisterAccountDTO
ûû8 J 
registerAccountDTO
ûûK ]
)
ûû] ^
{
üü 	
if
†† 
(
†† 

ModelState
†† 
.
†† 
IsValid
†† "
)
††" #
{
°° 
try
¢¢ 
{
££ 
var
§§ 
result
§§ 
=
§§  
await
§§! &
_authService
§§' 3
.
§§3 4
RegisterDoctor
§§4 B
(
§§B C 
registerAccountDTO
§§C U
)
§§U V
;
§§V W
if
•• 
(
•• 
result
•• 
==
•• !
true
••" &
)
••& '
{
¶¶ 
return
ßß 
Ok
ßß !
(
ßß! "
)
ßß" #
;
ßß# $
}
®® 
}
©© 
catch
™™ 
(
™™ $
UserNameTakenException
™™ -
e
™™. /
)
™™/ 0
{
´´ 
return
¨¨ 

BadRequest
¨¨ %
(
¨¨% &
new
¨¨& )
{
¨¨* +
message
¨¨, 3
=
¨¨4 5
e
¨¨6 7
.
¨¨7 8
Message
¨¨8 ?
}
¨¨@ A
)
¨¨A B
;
¨¨B C
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
	Exception
ÆÆ  
)
ÆÆ  !
{
ØØ 
return
∞∞ 

BadRequest
∞∞ %
(
∞∞% &
new
∞∞& )
{
∞∞* +
message
∞∞, 3
=
∞∞4 5
$str
∞∞6 M
}
∞∞N O
)
∞∞O P
;
∞∞P Q
}
±± 
}
≤≤ 
return
≥≥ 

BadRequest
≥≥ 
(
≥≥ 
new
≥≥ !
{
≥≥" #
message
≥≥$ +
=
≥≥, -
$str
≥≥. E
}
≥≥F G
)
≥≥G H
;
≥≥H I
}
¥¥ 	
[
∂∂ 	$
IgnoreAntiforgeryToken
∂∂	 
]
∂∂  
[
∑∑ 	
	Authorize
∑∑	 
(
∑∑ #
AuthenticationSchemes
∑∑ (
=
∑∑) *
$str
∑∑+ 9
)
∑∑9 :
]
∑∑: ;
[
∏∏ 	
HttpPost
∏∏	 
(
∏∏ 
$str
∏∏ 
)
∏∏ 
]
∏∏ 
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
IActionResult
ππ '
>
ππ' ( 
RefreshAccessToken
ππ) ;
(
ππ; <
)
ππ< =
{
∫∫ 	
var
ªª 
refreshCookieName
ªª !
=
ªª" #
$str
ªª$ 3
;
ªª3 4
try
ΩΩ 
{
ææ 
var
øø 
user
øø 
=
øø 
await
øø  
_authService
øø! -
.
øø- . 
RefreshAccessToken
øø. @
(
øø@ A
HttpContext
øøA L
.
øøL M
Request
øøM T
.
øøT U
Cookies
øøU \
[
øø\ ]
refreshCookieName
øø] n
]
øøn o
)
øøo p
;
øøp q
Response
¿¿ 
.
¿¿ 
Cookies
¿¿  
.
¿¿  !
Append
¿¿! '
(
¿¿' (
$str
¡¡ "
,
¡¡" #
user
¬¬ 
.
¬¬ 
JwtToken
¬¬ !
,
¬¬! "
new
√√ 
CookieOptions
√√ %
{
ƒƒ 
Expires
≈≈ 
=
≈≈  !
DateTime
≈≈" *
.
≈≈* +
Now
≈≈+ .
.
≈≈. /

AddMinutes
≈≈/ 9
(
≈≈9 :
$num
≈≈: <
)
≈≈< =
,
≈≈= >
HttpOnly
∆∆  
=
∆∆! "
true
∆∆# '
,
∆∆' (
}
«« 
)
«« 
;
«« 
return
…… 
Ok
…… 
(
…… 
user
…… 
)
…… 
;
……  
}
   
catch
ÀÀ 
(
ÀÀ 
	Exception
ÀÀ 
	exception
ÀÀ %
)
ÀÀ% &
{
ÃÃ 
return
ÕÕ 

BadRequest
ÕÕ !
(
ÕÕ! "
new
ÕÕ" %
{
ÕÕ& '
message
ÕÕ( /
=
ÕÕ0 1
$str
ÕÕ2 g
}
ÕÕh i
)
ÕÕi j
;
ÕÕj k
}
ŒŒ 
}
œœ 	
}
”” 
}‘‘ Á
]C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\DoctorController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
DoctorController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
IDoctorService '
_doctorService( 6
;6 7
public 
DoctorController 
(  
IDoctorService  .
doctorService/ <
)< =
{ 	
_doctorService 
= 
doctorService *
;* +
} 	
[ 	
	Authorize	 
( !
AuthenticationSchemes (
=) *
$str+ 8
,8 9
Roles: ?
=@ A
RoleB F
.F G
DoctorG M
+N O
$strP S
+T U
RoleV Z
.Z [
Patient[ b
)b c
]c d
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IEnumerable %
<% &
	DoctorDTO& /
>/ 0
>0 1
GetAllAsync2 =
(= >
)> ?
{ 	
var 
doctors 
= 
await 
_doctorService  .
.. /
	ListAsync/ 8
(8 9
)9 :
;: ;
return 
doctors 
; 
} 	
}   
}!! ≈-
bC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\MedicalFileController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
$str' 4
)4 5
]5 6
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class !
MedicalFileController &
:' (
ControllerBase) 7
{ 
private 
readonly 
IMedicalFileService ,
_medicalFileService- @
;@ A
public !
MedicalFileController $
($ %
IMedicalFileService% 8
medicalFileService9 K
)K L
{ 	
_medicalFileService 
=  !
medicalFileService" 4
;4 5
} 	
[ 	
	Authorize	 
( !
AuthenticationSchemes (
=) *
$str+ 8
,8 9
Roles: ?
=@ A
RoleB F
.F G
DoctorG M
)M N
]N O
[ 	
HttpPost	 
( 
$str  
)  !
]! "
public 
async 
Task 
< 
IActionResult '
>' (%
AddDiagnosisToMedicalFile) B
(B C(
AddDiagnosisToMedicalFileDTOC _(
addDiagnosisToMedicalFileDTO` |
)| }
{   	
if!! 
(!! 

ModelState!! 
.!! 
IsValid!! "
)!!" #
{"" 
var## 
result## 
=## 
await## "
_medicalFileService### 6
.##6 7%
AddDiagnosisToMedicalFile##7 P
(##P Q(
addDiagnosisToMedicalFileDTO##Q m
)##m n
;##n o
if$$ 
($$ 
result$$ 
!=$$ 
null$$ "
)$$" #
{%% 
return&& 
Ok&& 
(&& 
result&& $
)&&$ %
;&&% &
}'' 
return(( 

BadRequest(( !
(((! "
new((" %
{((& '
message((( /
=((0 1
$str((2 I
}((J K
)((K L
;((L M
})) 
return** 

BadRequest** 
(** 

ModelState** (
)**( )
;**) *
}++ 	
[-- 	
	Authorize--	 
(-- !
AuthenticationSchemes-- (
=--) *
$str--+ 8
,--8 9
Roles--: ?
=--@ A
Role--B F
.--F G
Doctor--G M
)--M N
]--N O
[.. 	
HttpPost..	 
(.. 
$str.. !
)..! "
].." #
public// 
async// 
Task// 
<// 
IActionResult// '
>//' ($
AddMedicineToMedicalFile//) A
(//A B'
AddMedicineToMedicalFileDTO//B ]'
addMedicineToMedicalFileDTO//^ y
)//y z
{00 	
if11 
(11 

ModelState11 
.11 
IsValid11 "
)11" #
{22 
var33 
result33 
=33 
await33 "
_medicalFileService33# 6
.336 7$
AddMedicineToMedicalFile337 O
(33O P'
addMedicineToMedicalFileDTO33P k
)33k l
;33l m
if44 
(44 
result44 
!=44 
null44 "
)44" #
{55 
return66 
Ok66 
(66 
)66 
;66  
}77 
return88 

BadRequest88 !
(88! "
new88" %
{88& '
message88( /
=880 1
$str882 I
}88J K
)88K L
;88L M
}99 
return:: 

BadRequest:: 
(:: 

ModelState:: (
)::( )
;::) *
};; 	
[== 	
	Authorize==	 
(== !
AuthenticationSchemes== (
===) *
$str==+ 8
,==8 9
Roles==: ?
===@ A
Role==B F
.==F G
Doctor==G M
+==N O
$str==P S
+==T U
Role==V Z
.==Z [
Patient==[ b
)==b c
]==c d
[>> 	
HttpGet>>	 
(>> 
$str>> 
)>> 
]>> 
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (%
GetMedicalFileByPatientId??) B
(??B C
[??C D
Required??D L
]??L M
Guid??N R
	patientId??S \
)??\ ]
{@@ 	
ifAA 
(AA 

ModelStateAA 
.AA 
IsValidAA "
)AA" #
{BB 
varCC 
resultCC 
=CC 
awaitCC "
_medicalFileServiceCC# 6
.CC6 7%
GetMedicalFileByPatientIdCC7 P
(CCP Q
	patientIdCCQ Z
)CCZ [
;CC[ \
ifDD 
(DD 
resultDD 
!=DD 
nullDD "
)DD" #
{EE 
returnFF 
OkFF 
(FF 
resultFF $
)FF$ %
;FF% &
}GG 
returnHH 

BadRequestHH !
(HH! "
newHH" %
{HH& '
messageHH( /
=HH0 1
$strHH2 I
}HHJ K
)HHK L
;HHL M
}II 
returnJJ 

BadRequestJJ 
(JJ 

ModelStateJJ (
)JJ( )
;JJ) *
}LL 	
}MM 
}NN Ä
_C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\MedicineController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
MedicineController #
:$ %
ControllerBase& 4
{ 
} 
} ˇ
_C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\PatientsController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PatientsController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
IPatientService (
_patientService) 8
;8 9
public 
PatientsController !
(! "
IPatientService" 1
patientService2 @
)@ A
{ 	
_patientService 
= 
patientService ,
;, -
} 	
[ 	
	Authorize	 
( !
AuthenticationSchemes (
=) *
$str+ 8
,8 9
Roles: ?
=@ A
RoleB F
.F G
DoctorG M
)M N
]N O
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IEnumerable %
<% &

PatientDTO& 0
>0 1
>1 2
GetAllAsync3 >
(> ?
)? @
{ 	
var 
patients 
= 
await  
_patientService! 0
.0 1
	ListAsync1 :
(: ;
); <
;< =
return   
patients   
;   
}!! 	
[## 	
	Authorize##	 
(## !
AuthenticationSchemes## (
=##) *
$str##+ 8
,##8 9
Roles##: ?
=##@ A
Role##B F
.##F G
Doctor##G M
+##N O
$str##P S
+##T U
Role##V Z
.##Z [
Patient##[ b
)##b c
]##c d
[$$ 	
HttpGet$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
async%% 
Task%% 
<%% 

PatientDTO%% $
>%%$ %

GetPatient%%& 0
(%%0 1
[%%1 2
Required%%2 :
]%%: ;
Guid%%; ?
	patientId%%@ I
)%%I J
{&& 	
var'' 
patient'' 
='' 
await'' 
_patientService''  /
.''/ 0

GetPatient''0 :
('': ;
	patientId''; D
)''D E
;''E F
return(( 
patient(( 
;(( 
})) 	
}++ 
},, ˜
[C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\RoleController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
RoleController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IRoleService %
_roleService& 2
;2 3
public 
RoleController 
( 
IRoleService *
roleService+ 6
)6 7
{ 	
_roleService 
= 
roleService &
;& '
} 	
[ 	"
IgnoreAntiforgeryToken	 
]  
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Create) /
(/ 0
[0 1
Required1 9
]9 :
string; A
roleNameB J
)J K
{ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{ 
var   
result   
=   
await   "
_roleService  # /
.  / 0

CreateRole  0 :
(  : ;
roleName  ; C
)  C D
;  D E
if!! 
(!! 
result!! 
.!! 
	Succeeded!! $
)!!$ %
{"" 
return## 
Ok## 
(## 
)## 
;##  
}$$ 
else%% 
{&& 
return'' 

BadRequest'' %
(''% &
result''& ,
.'', -
Errors''- 3
)''3 4
;''4 5
}(( 
})) 
return** 

BadRequest** 
(** 

ModelState** (
)**( )
;**) *
}++ 	
},, 
}-- µy
`C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\TwoFactorController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
TwoFactorController $
:% &
ControllerBase' 5
{ 
private 
readonly 
ITwoFactorService *
_twoFactorService+ <
;< =
	protected 
IAntiforgery 
_antiforgery +
;+ ,
public 
TwoFactorController "
(" #
ITwoFactorService# 4
twoFactorService5 E
,E F
IAntiforgeryG S
antiforgeryT _
)_ `
{ 	
_twoFactorService 
= 
twoFactorService  0
;0 1
_antiforgery 
= 
antiforgery &
;& '
} 	
[   	
HttpGet  	 
(   
$str   %
)  % &
]  & '
[!! 	
	Authorize!!	 
(!! !
AuthenticationSchemes!! (
=!!) *
$str!!+ 8
)!!8 9
]!!9 :
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
SetupAuthenticator"") ;
(""; <
)""< =
{## 	
var%% 
authDetailsDTO%% 
=%%  
await%%! &
_twoFactorService%%' 8
.%%8 9
SetupAuthenticator%%9 K
(%%K L
User%%L P
)%%P Q
;%%Q R
return&& 
Ok&& 
(&& 
authDetailsDTO&& $
)&&$ %
;&&% &
}(( 	
[** 	
HttpPost**	 
(** 
$str** 
)** 
]**  
[++ 	
	Authorize++	 
(++ !
AuthenticationSchemes++ (
=++) *
$str+++ 8
)++8 9
]++9 :
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (

Disable2FA,,) 3
(,,3 4
),,4 5
{-- 	
var.. 
result.. 
=.. 
await.. 
_twoFactorService.. 0
...0 1

Disable2FA..1 ;
(..; <
User..< @
)..@ A
;..A B
if// 
(// 
result// 
.// 
Status// 
==// 
Status//  &
.//& '
Success//' .
)//. /
{00 
return11 
Ok11 
(11 
result11  
)11  !
;11! "
}22 
return33 

BadRequest33 
(33 
result33 $
)33$ %
;33% &
}55 	
[77 	
HttpGet77	 
(77 
$str77 
)77 
]77 
public88 
IActionResult88 
AesKey88 #
(88# $
)88$ %
{99 	
var;; 
result;; 
=;; 
Crypto;; 
.;;  

AesEncrypt;;  *
(;;* +
$str;;+ t
,;;t u
$str	;;v ò
)
;;ò ô
;
;;ô ö
string== 
S== 
=== 
Encoding== 
.==  
UTF8==  $
.==$ %
	GetString==% .
(==. /
result==/ 5
)==5 6
;==6 7
Console>> 
.>> 
	WriteLine>> 
(>> 
S>> 
)>>  
;>>  !
var?? 
	decrypted?? 
=?? 
Crypto?? "
.??" #

AesDecrypt??# -
(??- .
result??. 4
,??4 5
$str??6 X
)??X Y
;??Y Z
returnAA 
OkAA 
(AA 
	decryptedAA 
)AA  
;AA  !
}BB 	
[DD 	
HttpPostDD	 
(DD 
$strDD )
)DD) *
]DD* +
[EE 	
	AuthorizeEE	 
(EE !
AuthenticationSchemesEE (
=EE) *
$strEE+ 8
)EE8 9
]EE9 :
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (!
GenerateRecoveryCodesFF) >
(FF> ?
)FF? @
{GG 	
varHH 
resultHH 
=HH 
awaitHH 
_twoFactorServiceHH 0
.HH0 1!
GenerateRecoveryCodesHH1 F
(HHF G
UserHHG K
)HHK L
;HHL M
ifII 
(II 
resultII 
.II 
StatusII 
==II 
StatusII  &
.II& '
SuccessII' .
)II. /
{JJ 
returnKK 
OkKK 
(KK 
resultKK  
)KK  !
;KK! "
}LL 
elseMM 
{NN 
returnOO 

BadRequestOO !
(OO! "
resultOO" (
)OO( )
;OO) *
}PP 
}QQ 	
[SS 	
HttpPostSS	 
(SS 
$strSS '
)SS' (
]SS( )
[TT 	
	AuthorizeTT	 
(TT !
AuthenticationSchemesTT (
=TT) *
$strTT+ 8
)TT8 9
]TT9 :
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
VerifyAuthenticatorUU) <
(UU< ="
VerifyAuthenticatorDTOUU= S"
verifyAuthenticatorDTOUUT j
)UUj k
{VV 	
ifWW 
(WW 

ModelStateWW 
.WW 
IsValidWW "
)WW" #
{XX 
varYY 
resultYY 
=YY 
awaitYY "
_twoFactorServiceYY# 4
.YY4 5
VerifyAuthenticatorYY5 H
(YYH I"
verifyAuthenticatorDTOYYI _
.YY_ `
VerificationCodeYY` p
,YYp q
UserYYr v
)YYv w
;YYw x
ifZZ 
(ZZ 
resultZZ 
.ZZ 
StatusZZ  
==ZZ! #
StatusZZ$ *
.ZZ* +
SuccessZZ+ 2
)ZZ2 3
{[[ 
return\\ 
Ok\\ 
(\\ 
result\\ $
)\\$ %
;\\% &
}]] 
else^^ 
{__ 
return`` 

BadRequest`` %
(``% &
result``& ,
)``, -
;``- .
}aa 
}cc 
returndd 

BadRequestdd 
(dd 

ModelStatedd (
)dd( )
;dd) *
}ee 	
[gg 	
AllowAnonymousgg	 
]gg 
[hh 	"
IgnoreAntiforgeryTokenhh	 
]hh  
[ii 	
HttpPostii	 
(ii 
$strii "
)ii" #
]ii# $
publicjj 
asyncjj 
Taskjj 
<jj 
IActionResultjj '
>jj' (
TwoFactorLoginjj) 7
(jj7 8#
TwoFactorAuthAttemptDTOjj8 O#
twoFactorAuthAttemptDTOjjP g
)jjg h
{kk 	
ifll 
(ll 

ModelStatell 
.ll 
IsValidll "
)ll" #
{mm 
trynn 
{oo 
varpp 
resultpp 
=pp  
awaitpp! &
_twoFactorServicepp' 8
.pp8 9
TwoFactorLoginpp9 G
(ppG H#
twoFactorAuthAttemptDTOppH _
)pp_ `
;pp` a
ifrr 
(rr 
resultrr 
.rr 
Statusrr $
==rr% '
Statusrr( .
.rr. /
Errorrr/ 4
)rr4 5
{ss 
returntt 

BadRequesttt )
(tt) *
resulttt* 0
)tt0 1
;tt1 2
}uu 
varww 
userDtoww 
=ww  !
(ww" #
UserDTOww# *
)ww* +
resultww+ 1
.ww1 2
Dataww2 6
;ww6 7
Response{{ 
.{{ 
Cookies{{ $
.{{$ %
Append{{% +
({{+ ,
$str|| &
,||& '
userDto}} 
.}}  
JwtToken}}  (
,}}( )
new~~ 
CookieOptions~~ )
{ 
Expires
ÄÄ #
=
ÄÄ$ %
DateTime
ÄÄ& .
.
ÄÄ. /
Now
ÄÄ/ 2
.
ÄÄ2 3

AddMinutes
ÄÄ3 =
(
ÄÄ= >
$num
ÄÄ> @
)
ÄÄ@ A
,
ÄÄA B
HttpOnly
ÅÅ $
=
ÅÅ% &
true
ÅÅ' +
,
ÅÅ+ ,
IsEssential
ÇÇ '
=
ÇÇ( )
true
ÇÇ* .
}
ÉÉ 
)
ÉÉ 
;
ÉÉ 
Response
ÜÜ 
.
ÜÜ 
Cookies
ÜÜ $
.
ÜÜ$ %
Append
ÜÜ% +
(
ÜÜ+ ,
$str
áá '
,
áá' (
userDto
àà 
.
àà  
RefreshToken
àà  ,
,
àà, -
new
ââ 
CookieOptions
ââ )
{
ää 
Expires
ãã #
=
ãã$ %
DateTime
ãã& .
.
ãã. /
Now
ãã/ 2
.
ãã2 3
AddDays
ãã3 :
(
ãã: ;
$num
ãã; <
)
ãã< =
,
ãã= >
HttpOnly
åå $
=
åå% &
true
åå' +
,
åå+ ,
IsEssential
çç '
=
çç( )
true
çç* .
}
éé 
)
éé 
;
éé 
HttpContext
êê 
.
êê  
User
êê  $
=
êê% &
userDto
êê' .
.
êê. /!
claimsUserPrincipal
êê/ B
;
êêB C
var
íí 
tokens
íí 
=
íí  
_antiforgery
íí! -
.
íí- .
GetAndStoreTokens
íí. ?
(
íí? @
HttpContext
íí@ K
)
ííK L
;
ííL M
Response
ìì 
.
ìì 
Cookies
ìì $
.
ìì$ %
Append
ìì% +
(
ìì+ ,
$str
îî ,
,
îî, -
tokens
ïï 
.
ïï 
RequestToken
ïï +
,
ïï+ ,
new
ññ 
CookieOptions
ññ )
(
ññ) *
)
ññ* +
{
óó 
HttpOnly
òò $
=
òò% &
false
òò' ,
,
òò, -
IsEssential
ôô '
=
ôô( )
true
ôô* .
}
öö 
)
öö 
;
öö 
return
úú 
Ok
úú 
(
úú 
result
úú $
)
úú$ %
;
úú% &
}
ùù 
catch
ûû 
(
ûû 2
$UsernameOrPasswordIncorrectException
ûû ;
)
ûû; <
{
üü 
return
†† 

BadRequest
†† %
(
††% &
new
††& )
{
††* +
message
††, 3
=
††4 5
$str
††6 Z
}
††[ \
)
††\ ]
;
††] ^
}
°° 
}
££ 
return
•• 

BadRequest
•• 
(
•• 

ModelState
•• (
)
••( )
;
••) *
}
¶¶ 	
[
®® 	
AllowAnonymous
®®	 
]
®® 
[
©© 	$
IgnoreAntiforgeryToken
©©	 
]
©©  
[
™™ 	
HttpPost
™™	 
(
™™ 
$str
™™ *
)
™™* +
]
™™+ ,
public
´´ 
async
´´ 
Task
´´ 
<
´´ 
IActionResult
´´ '
>
´´' ($
TwoFactorRecoveryLogin
´´) ?
(
´´? @%
TwoFactorAuthAttemptDTO
´´@ W%
twoFactorAuthAttemptDTO
´´X o
)
´´o p
{
¨¨ 	
if
≠≠ 
(
≠≠ 

ModelState
≠≠ 
.
≠≠ 
IsValid
≠≠ "
)
≠≠" #
{
ÆÆ 
try
ØØ 
{
∞∞ 
var
±± 
result
±± 
=
±±  
await
±±! &
_twoFactorService
±±' 8
.
±±8 9
TwoFactorLogin
±±9 G
(
±±G H%
twoFactorAuthAttemptDTO
±±H _
)
±±_ `
;
±±` a
if
≥≥ 
(
≥≥ 
result
≥≥ 
.
≥≥ 
Status
≥≥ %
==
≥≥& (
Status
≥≥) /
.
≥≥/ 0
Error
≥≥0 5
)
≥≥5 6
{
¥¥ 
return
µµ 

BadRequest
µµ )
(
µµ) *
result
µµ* 0
)
µµ0 1
;
µµ1 2
}
∂∂ 
var
∏∏ 
userDto
∏∏ 
=
∏∏  !
(
∏∏" #
UserDTO
∏∏# *
)
∏∏* +
result
∏∏+ 1
.
∏∏1 2
Data
∏∏2 6
;
∏∏6 7
Response
ºº 
.
ºº 
Cookies
ºº $
.
ºº$ %
Append
ºº% +
(
ºº+ ,
$str
ΩΩ &
,
ΩΩ& '
userDto
ææ 
.
ææ  
JwtToken
ææ  (
,
ææ( )
new
øø 
CookieOptions
øø )
{
¿¿ 
Expires
¡¡ #
=
¡¡$ %
DateTime
¡¡& .
.
¡¡. /
Now
¡¡/ 2
.
¡¡2 3

AddMinutes
¡¡3 =
(
¡¡= >
$num
¡¡> @
)
¡¡@ A
,
¡¡A B
HttpOnly
¬¬ $
=
¬¬% &
true
¬¬' +
,
¬¬+ ,
IsEssential
√√ '
=
√√( )
true
√√* .
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 
Response
«« 
.
«« 
Cookies
«« $
.
««$ %
Append
««% +
(
««+ ,
$str
»» '
,
»»' (
userDto
…… 
.
……  
RefreshToken
……  ,
,
……, -
new
   
CookieOptions
   )
{
ÀÀ 
Expires
ÃÃ #
=
ÃÃ$ %
DateTime
ÃÃ& .
.
ÃÃ. /
Now
ÃÃ/ 2
.
ÃÃ2 3
AddDays
ÃÃ3 :
(
ÃÃ: ;
$num
ÃÃ; <
)
ÃÃ< =
,
ÃÃ= >
HttpOnly
ÕÕ $
=
ÕÕ% &
true
ÕÕ' +
,
ÕÕ+ ,
IsEssential
ŒŒ '
=
ŒŒ( )
true
ŒŒ* .
}
œœ 
)
œœ 
;
œœ 
HttpContext
—— 
.
——  
User
——  $
=
——% &
userDto
——' .
.
——. /!
claimsUserPrincipal
——/ B
;
——B C
var
”” 
tokens
”” 
=
””  
_antiforgery
””! -
.
””- .
GetAndStoreTokens
””. ?
(
””? @
HttpContext
””@ K
)
””K L
;
””L M
Response
‘‘ 
.
‘‘ 
Cookies
‘‘ $
.
‘‘$ %
Append
‘‘% +
(
‘‘+ ,
$str
’’ ,
,
’’, -
tokens
÷÷ 
.
÷÷ 
RequestToken
÷÷ +
,
÷÷+ ,
new
◊◊ 
CookieOptions
◊◊ )
(
◊◊) *
)
◊◊* +
{
ÿÿ 
HttpOnly
ŸŸ $
=
ŸŸ% &
false
ŸŸ' ,
,
ŸŸ, -
IsEssential
⁄⁄ '
=
⁄⁄( )
true
⁄⁄* .
}
€€ 
)
€€ 
;
€€ 
return
›› 
Ok
›› 
(
›› 
result
›› $
)
››$ %
;
››% &
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ 2
$UsernameOrPasswordIncorrectException
ﬂﬂ ;
)
ﬂﬂ; <
{
‡‡ 
return
·· 

BadRequest
·· %
(
··% &
new
··& )
{
··* +
message
··, 3
=
··4 5
$str
··6 Z
}
··[ \
)
··\ ]
;
··] ^
}
‚‚ 
}
‰‰ 
return
ÊÊ 

BadRequest
ÊÊ 
(
ÊÊ 

ModelState
ÊÊ (
)
ÊÊ( )
;
ÊÊ) *
}
ÁÁ 	
}
ËË 
}ÈÈ ˙
\C:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Controllers\UsersController.cs
	namespace 	
DoctorPatientAPI
 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
UsersController  
:! "
ControllerBase# 1
{ 
} 
} ¢
ZC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Domain\DTO\AppointmentDTO.cs
	namespace 	
DoctorPatientAPI
 
. 
Domain !
.! "
DTO" %
{ 
public 

class 
AppointmentDTO 
{		 
public

 
string

 
Id

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
string 

DoctorName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
DateAndTime #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ≥
VC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Domain\DTO\PatientDTO.cs
	namespace 	
DoctorPatientAPI
 
. 
Domain !
.! "
DTO" %
{ 
public 

class 

PatientDTO 
{		 
public

 
Guid

 
Id

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} è
oC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Filters\AntiForgeryCookieResultFilterAttribute.cs
	namespace		 	
DoctorPatientAPI		
 
.		 
Filters		 "
{

 
public 

class 2
&AntiforgeryCookieResultFilterAttribute 7
:8 9!
ResultFilterAttribute: O
{ 
	protected 
IAntiforgery 
Antiforgery *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 2
&AntiforgeryCookieResultFilterAttribute 5
(5 6
IAntiforgery6 B
antiforgeryC N
)N O
=>P R
thisS W
.W X
AntiforgeryX c
=d e
antiforgeryf q
;q r
public 
override 
void 
OnResultExecuting .
(. /"
ResultExecutingContext/ E
contextF M
)M N
{ 	
var 
tokens 
= 
this 
. 
Antiforgery )
.) *
GetAndStoreTokens* ;
(; <
context< C
.C D
HttpContextD O
)O P
;P Q
context 
. 
HttpContext 
.  
Response  (
.( )
Cookies) 0
.0 1
Append1 7
(7 8
$str8 F
,F G
tokensH N
.N O
RequestTokenO [
,[ \
new] `
CookieOptionsa n
(n o
)o p
{q r
HttpOnlys {
=| }
false	~ É
}
Ñ Ö
)
Ö Ü
;
Ü á
} 	
} 
} õ
gC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Middlewares\GetJWTFromCookieMiddleware.cs
	namespace 	
DoctorPatientAPI
 
. 
Middlewares &
{		 
public

 

class

 &
GetJWTFromCookieMiddleware

 +
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public &
GetJWTFromCookieMiddleware )
() *
RequestDelegate* 9
next: >
)> ?
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
if 
( 
context 
. 
Request 
.  
Path  $
.$ %
StartsWithSegments% 7
(7 8
$str8 K
)K L
)L M
{ 
await 
_next 
( 
context #
)# $
;$ %
return 
; 
} 
var $
authenticationCookieName (
=) *
$str+ 9
;9 :
var 
cookie 
= 
context  
.  !
Request! (
.( )
Cookies) 0
[0 1$
authenticationCookieName1 I
]I J
;J K
if 
( 
cookie 
!= 
null 
) 
{ 
var   
token   
=   
cookie   "
;  " #
context!! 
.!! 
Request!! 
.!!  
Headers!!  '
.!!' (
Append!!( .
(!!. /
$str!!/ >
,!!> ?
$str!!@ I
+!!J K
token!!L Q
)!!Q R
;!!R S
}"" 
await$$ 
_next$$ 
.$$ 
Invoke$$ 
($$ 
context$$ &
)$$& '
;$$' (
}%% 	
}&& 
}'' —
oC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Middlewares\GetMedicalFileProtectionMiddleware.cs
	namespace

 	
DoctorPatientAPI


 
.

 
Middlewares

 &
{ 
public 

class .
"GetMedicalFileProtectionMiddleware 3
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public .
"GetMedicalFileProtectionMiddleware 1
(1 2
RequestDelegate2 A
nextB F
)F G
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
if 
( 
! 
context 
. 
Request  
.  !
Path! %
.% &
StartsWithSegments& 8
(8 9
$str9 S
)S T
)T U
{ 
await 
_next 
( 
context #
)# $
;$ %
return 
; 
} 
else 
{ 
if 
( 
context 
. 
User  
.  !
HasClaim! )
() *

ClaimTypes* 4
.4 5
Role5 9
,9 :
Role; ?
.? @
Doctor@ F
)F G
||H J
contextK R
.R S
UserS W
.W X
HasClaimX `
(` a

ClaimTypesa k
.k l
Rolel p
,p q
Roler v
.v w
Adminw |
)| }
)} ~
{   
await"" 
_next"" 
(""  
context""  '
)""' (
;""( )
return## 
;## 
}$$ 
else%% 
{&& 
if'' 
('' 
context'' 
.''  
Request''  '
.''' (
Query''( -
[''- .
$str''. 9
]''9 :
==''; =
context''> E
.''E F
User''F J
.''J K
Claims''K Q
.''Q R
FirstOrDefault''R `
(''` a
x''a b
=>''c e
x''f g
.''g h
Type''h l
==''m o

ClaimTypes''p z
.''z {
NameIdentifier	''{ â
)
''â ä
.
''ä ã
Value
''ã ê
)
''ê ë
{(( 
await)) 
_next)) #
())# $
context))$ +
)))+ ,
;)), -
return** 
;** 
},, 
}-- 
context.. 
... 
Response..  
...  !
Clear..! &
(..& '
)..' (
;..( )
context// 
.// 
Response//  
.//  !

StatusCode//! +
=//, -
(//. /
int/// 2
)//2 3
HttpStatusCode//3 A
.//A B
	Forbidden//B K
;//K L
await00 
context00 
.00 
Response00 &
.00& '

WriteAsync00' 1
(001 2
$str002 @
)00@ A
;00A B
}11 
}33 	
}44 
}55 ò
pC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Middlewares\GetRefreshTokenFromCookieMiddleware.cs
	namespace 	
DoctorPatientAPI
 
. 
Middlewares &
{ 
public		 

class		 /
#GetRefreshTokenFromCookieMiddleware		 4
{

 
private 
readonly 
RequestDelegate (
_next) .
;. /
public /
#GetRefreshTokenFromCookieMiddleware 3
(3 4
RequestDelegate4 C
nextD H
)H I
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)4 5
{ 	
if 
( 
context 
. 
Request 
.  
Path  $
.$ %
StartsWithSegments% 7
(7 8
$str8 K
)K L
)L M
{ 
var 
refreshCookieName %
=& '
$str( 7
;7 8
var 
cookie 
= 
context $
.$ %
Request% ,
., -
Cookies- 4
[4 5
refreshCookieName5 F
]F G
;G H
if 
( 
cookie 
!= 
null "
)" #
{ 
var 
token 
= 
cookie  &
;& '
context 
. 
Request #
.# $
Headers$ +
.+ ,
Append, 2
(2 3
$str3 B
,B C
$strD M
+N O
tokenP U
)U V
;V W
} 
} 
await   
_next   
.   
Invoke   
(   
context   &
)  & '
;  ' (
}!! 	
}"" 
}$$ …
lC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Middlewares\GetUserByIdProtectionMiddleware.cs
	namespace

 	
DoctorPatientAPI


 
.

 
Middlewares

 &
{ 
public 

class +
GetUserByIdProtectionMiddleware 0
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public +
GetUserByIdProtectionMiddleware .
(. /
RequestDelegate/ >
next? C
)C D
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
if 
( 
! 
context 
. 
Request  
.  !
Path! %
.% &
StartsWithSegments& 8
(8 9
$str9 P
)P Q
)Q R
{ 
await 
_next 
( 
context #
)# $
;$ %
return 
; 
} 
else 
{ 
if   
(   
context   
.   
User    
.    !
HasClaim  ! )
(  ) *

ClaimTypes  * 4
.  4 5
Role  5 9
,  9 :
Role  ; ?
.  ? @
Doctor  @ F
)  F G
||  H J
context  K R
.  R S
User  S W
.  W X
HasClaim  X `
(  ` a

ClaimTypes  a k
.  k l
Role  l p
,  p q
Role  r v
.  v w
Admin  w |
)  | }
)  } ~
{	   Ä
await"" 
_next"" 
(""  
context""  '
)""' (
;""( )
return## 
;## 
}$$ 
else%% 
{&& 
if'' 
('' 
context'' 
.''  
Request''  '
.''' (
Query''( -
[''- .
$str''. 9
]''9 :
==''; =
context''> E
.''E F
User''F J
.''J K
Claims''K Q
.''Q R
FirstOrDefault''R `
(''` a
x''a b
=>''c e
x''f g
.''g h
Type''h l
==''m o

ClaimTypes''p z
.''z {
NameIdentifier	''{ â
)
''â ä
.
''ä ã
Value
''ã ê
)
''ê ë
{(( 
await)) 
_next)) #
())# $
context))$ +
)))+ ,
;)), -
return** 
;** 
},, 
}-- 
context.. 
... 
Response..  
...  !
Clear..! &
(..& '
)..' (
;..( )
context// 
.// 
Response//  
.//  !

StatusCode//! +
=//, -
(//. /
int/// 2
)//2 3
HttpStatusCode//3 A
.//A B
	Forbidden//B K
;//K L
await00 
context00 
.00 
Response00 &
.00& '

WriteAsync00' 1
(001 2
$str002 @
)00@ A
;00A B
}11 
}33 	
}44 
}55 è
HC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Program.cs
	namespace 	
DoctorPatientAPI
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
var 
host 
= 
BuildWebHost #
(# $
args$ (
)( )
;) *
using 
( 
var 
scope 
= 
host #
.# $
Services$ ,
., -
CreateScope- 8
(8 9
)9 :
): ;
host 
. 
Run 
( 
) 
; 
} 	
public 
static 
IWebHost 
BuildWebHost +
(+ ,
string, 2
[2 3
]3 4
args5 9
)9 :
=>; =
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup 
>  
(  !
)! "
. 
Build 
( 
) 
; 
} 
} ˙W
HC:\Users\Danny\source\repos\DocPatientAPINew\DoctorPatientAPI\Startup.cs
	namespace 	
DoctorPatientAPI
 
{ 
public 

class 
Startup 
{ 
readonly 
string "
MyAllowSpecificOrigins .
=/ 0
$str1 J
;J K
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public   
Startup   
(   
IConfiguration   %
configuration  & 3
)  3 4
{!! 	
Configuration"" 
="" 
configuration"" )
;"") *
}## 	
public(( 
void(( 
ConfigureServices(( %
(((% &
IServiceCollection((& 8
services((9 A
)((A B
{)) 	
services-- 
.-- 
AddCors-- 
(-- 
options-- $
=>--% '
{.. 
options// 
.// 
	AddPolicy// !
(//! "
name//" &
://& '"
MyAllowSpecificOrigins//( >
,//> ?
builder00" )
=>00* ,
{11" #
builder22& -
.22- .
WithOrigins22. 9
(229 :
$str22: Q
)22Q R
.33( )
AllowAnyHeader33) 7
(337 8
)338 9
.44( )
AllowAnyMethod44) 7
(447 8
)448 9
.55( )
AllowCredentials55) 9
(559 :
)55: ;
;55; <
}66" #
)66# $
;66$ %
}77 
)77 
;77 
services88 
.88 
AddControllers88 #
(88# $
)88$ %
;88% &
var:: 
appSettingsSection:: "
=::# $
Configuration::% 2
.::2 3

GetSection::3 =
(::= >
$str::> K
)::K L
;::L M
services;; 
.;; 
	Configure;; 
<;; 
AppSettings;; *
>;;* +
(;;+ ,
appSettingsSection;;, >
);;> ?
;;;? @
services?? 
.?? 
AddAntiforgery?? #
(??# $
options??$ +
=>??, .
{@@ 
optionsAA 
.AA 

HeaderNameAA "
=AA# $
$strAA% 3
;AA3 4
}BB 
)BB 
;BB 
varFF 
appSettingsFF 
=FF 
appSettingsSectionFF 0
.FF0 1
GetFF1 4
<FF4 5
AppSettingsFF5 @
>FF@ A
(FFA B
)FFB C
;FFC D
varGG 
accessTokenSecretGG !
=GG" #
EncodingGG$ ,
.GG, -
ASCIIGG- 2
.GG2 3
GetBytesGG3 ;
(GG; <
appSettingsGG< G
.GGG H
	JwtSecretGGH Q
)GGQ R
;GGR S
varHH 
refreshTokenSecretHH "
=HH# $
EncodingHH% -
.HH- .
ASCIIHH. 3
.HH3 4
GetBytesHH4 <
(HH< =
appSettingsHH= H
.HHH I
RefreshSecretHHI V
)HHV W
;HHW X
servicesII 
.II 
AddAuthenticationII &
(II& '
optionsII' .
=>II/ 1
{JJ 
optionsKK 
.KK %
DefaultAuthenticateSchemeKK 1
=KK2 3
JwtBearerDefaultsKK4 E
.KKE F 
AuthenticationSchemeKKF Z
;KKZ [
optionsLL 
.LL "
DefaultChallengeSchemeLL .
=LL/ 0
JwtBearerDefaultsLL1 B
.LLB C 
AuthenticationSchemeLLC W
;LLW X
}MM 
)MM 
.NN 
AddJwtBearerNN 
(NN 
$strNN +
,NN+ ,
xNN- .
=>NN/ 1
{OO 
xPP 
.PP  
RequireHttpsMetadataPP *
=PP+ ,
falsePP- 2
;PP2 3
xQQ 
.QQ 
	SaveTokenQQ 
=QQ  !
trueQQ" &
;QQ& '
xRR 
.RR %
TokenValidationParametersRR /
=RR0 1
newRR2 5%
TokenValidationParametersRR6 O
{SS $
ValidateIssuerSigningKeyTT 0
=TT1 2
trueTT3 7
,TT7 8
IssuerSigningKeyUU (
=UU) *
newUU+ . 
SymmetricSecurityKeyUU/ C
(UUC D
accessTokenSecretUUD U
)UUU V
,UUV W
ValidateIssuerVV &
=VV' (
falseVV) .
,VV. /
ValidateAudienceWW (
=WW) *
falseWW+ 0
,WW0 1
	ClockSkewXX !
=XX" #
TimeSpanXX$ ,
.XX, -
ZeroXX- 1
}YY 
;YY 
}ZZ 
)ZZ 
.[[ 
AddJwtBearer[[ 
([[ 
$str[[ ,
,[[, -
x[[. /
=>[[0 2
{\\ 
x]] 
.]]  
RequireHttpsMetadata]] *
=]]+ ,
false]]- 2
;]]2 3
x^^ 
.^^ 
	SaveToken^^ 
=^^  !
true^^" &
;^^& '
x__ 
.__ %
TokenValidationParameters__ /
=__0 1
new__2 5%
TokenValidationParameters__6 O
{`` $
ValidateIssuerSigningKeyaa 0
=aa1 2
trueaa3 7
,aa7 8
IssuerSigningKeybb (
=bb) *
newbb+ . 
SymmetricSecurityKeybb/ C
(bbC D
refreshTokenSecretbbD V
)bbV W
,bbW X
ValidateIssuercc &
=cc' (
falsecc) .
,cc. /
ValidateAudiencedd (
=dd) *
falsedd+ 0
,dd0 1
	ClockSkewee !
=ee" #
TimeSpanee$ ,
.ee, -
Zeroee- 1
}ff 
;ff 
}gg 
)gg 
;gg 
servicesii 
.jj 
AddAuthorizationjj !
(jj! "
optionsjj" )
=>jj* ,
{kk 
optionsll 
.ll 
DefaultPolicyll )
=ll* +
newll, /&
AuthorizationPolicyBuilderll0 J
(llJ K
)llK L
.mm $
RequireAuthenticatedUsermm 1
(mm1 2
)mm2 3
.nn $
AddAuthenticationSchemesnn 1
(nn1 2
$strnn2 ?
,nn? @
$strnnA O
)nnO P
.oo 
Buildoo 
(oo 
)oo  
;oo  !
}pp 
)pp 
;pp 
servicestt 
.uu 
AddMvcuu 
(uu 
optionsuu 
=>uu  "
{vv 
optionsww 
.ww 
Filtersww #
.ww# $
Addww$ '
(ww' (
newww( +1
%AutoValidateAntiforgeryTokenAttributeww, Q
(wwQ R
)wwR S
)wwS T
;wwT U
}xx 
)xx 
.yy #
SetCompatibilityVersionyy (
(yy( ) 
CompatibilityVersionyy) =
.yy= >
Latestyy> D
)yyD E
;yyE F
services{{ 
.{{ 

AddOptions{{ 
({{  
){{  !
;{{! "
services|| 
.|| 
AddMemoryCache|| #
(||# $
)||$ %
;||% &
services}} 
.}} 
	Configure}} 
<}} 
IpRateLimitOptions}} 1
>}}1 2
(~~ 
Configuration~~ 
.~~ 

GetSection~~ %
(~~% &
$str~~& 3
)~~3 4
)~~4 5
;~~5 6
services 
. 
AddSingleton !
<! "
IIpPolicyStore" 0
,0 1&
MemoryCacheIpPolicyStore
ÄÄ $
>
ÄÄ$ %
(
ÄÄ% &
)
ÄÄ& '
;
ÄÄ' (
services
ÅÅ 
.
ÅÅ 
AddSingleton
ÅÅ !
<
ÅÅ! "$
IRateLimitCounterStore
ÅÅ" 8
,
ÅÅ8 9.
 MemoryCacheRateLimitCounterStore
ÇÇ ,
>
ÇÇ, -
(
ÇÇ- .
)
ÇÇ. /
;
ÇÇ/ 0
services
ÉÉ 
.
ÉÉ 
AddSingleton
ÉÉ !
<
ÉÉ! "%
IRateLimitConfiguration
ÉÉ" 9
,
ÉÉ9 :$
RateLimitConfiguration
ÑÑ "
>
ÑÑ" #
(
ÑÑ# $
)
ÑÑ$ %
;
ÑÑ% &
services
ÖÖ 
.
ÖÖ $
AddHttpContextAccessor
ÖÖ +
(
ÖÖ+ ,
)
ÖÖ, -
;
ÖÖ- .
services
áá 
.
áá 
	AddScoped
áá 
<
áá 
IUserService
áá +
,
áá+ ,
UserService
áá- 8
>
áá8 9
(
áá9 :
)
áá: ;
;
áá; <
DependencySetup
àà 
.
àà 
ConfigureServices
àà -
(
àà- .
services
àà. 6
,
àà6 7
Configuration
àà8 E
)
ààE F
;
ààF G
}
ää 	
public
çç 
void
çç 
	Configure
çç 
(
çç !
IApplicationBuilder
çç 1
app
çç2 5
,
çç5 6!
IWebHostEnvironment
çç7 J
env
ççK N
)
ççN O
{
éé 	
app
èè 
.
èè 

UseRouting
èè 
(
èè 
)
èè 
;
èè 
if
êê 
(
êê 
env
êê 
.
êê 
IsDevelopment
êê !
(
êê! "
)
êê" #
)
êê# $
{
ëë 
app
íí 
.
íí '
UseDeveloperExceptionPage
íí -
(
íí- .
)
íí. /
;
íí/ 0
}
ìì 
app
óó 
.
óó !
UseHttpsRedirection
óó #
(
óó# $
)
óó$ %
;
óó% &
app
ôô 
.
ôô 
UseCors
ôô 
(
ôô $
MyAllowSpecificOrigins
ôô .
)
ôô. /
;
ôô/ 0
app
ùù 
.
ùù 
UseMiddleware
ùù 
<
ùù (
GetJWTFromCookieMiddleware
ùù 8
>
ùù8 9
(
ùù9 :
)
ùù: ;
;
ùù; <
app
ûû 
.
ûû 
UseMiddleware
ûû 
<
ûû 1
#GetRefreshTokenFromCookieMiddleware
ûû A
>
ûûA B
(
ûûB C
)
ûûC D
;
ûûD E
app
üü 
.
üü 
UseAuthentication
üü !
(
üü! "
)
üü" #
;
üü# $
app
†† 
.
†† 
UseAuthorization
††  
(
††  !
)
††! "
;
††" #
app
¢¢ 
.
¢¢ 
UseMiddleware
¢¢ 
<
¢¢ -
GetUserByIdProtectionMiddleware
¢¢ =
>
¢¢= >
(
¢¢> ?
)
¢¢? @
;
¢¢@ A
app
££ 
.
££ 
UseMiddleware
££ 
<
££ 0
"GetMedicalFileProtectionMiddleware
££ @
>
££@ A
(
££A B
)
££B C
;
££C D
app
§§ 
.
§§ 
UseIpRateLimiting
§§ !
(
§§! "
)
§§" #
;
§§# $
app
¶¶ 
.
¶¶ 
UseEndpoints
¶¶ 
(
¶¶ 
x
¶¶ 
=>
¶¶ !
x
¶¶" #
.
¶¶# $
MapControllers
¶¶$ 2
(
¶¶2 3
)
¶¶3 4
)
¶¶4 5
;
¶¶5 6
}
™™ 	
}
´´ 
}¨¨ 