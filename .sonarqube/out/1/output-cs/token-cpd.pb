˙
IC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\AppSettings.cs
	namespace 	
BusinessLogic
 
{ 
public 

class 
AppSettings 
{ 
public		 
string		 
	JwtSecret		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
RefreshSecret

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
string 

ClaimsName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

ClaimsUser  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
AccessTokenLifetime &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int  
RefreshTokenLifetime '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
EncryptionKey #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
EncryptionEnabled %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ∑
^C:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\AddDiagnosisToMedicalFileDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class (
AddDiagnosisToMedicalFileDTO -
{		 
[

 	
Required

	 
]

 
public 
Guid 
MedicalFileID !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str f
)f g
]g h
public 
string 
DiagnosisName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str m
)m n
]n o
public 
string  
DiagnosisInformation *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} Æ
]C:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\AddMedicineToMedicalFileDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class '
AddMedicineToMedicalFileDTO ,
{		 
[

 	
Required

	 
]

 
public 
Guid 
MedicalFileID !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str e
)e f
]f g
public 
string 
MedicineName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str g
)g h
]h i
public 
string 
MedicineDosage $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} £
PC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\AppointmentDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class 
AppointmentDTO 
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
public 
	DoctorDTO 
doctor 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Time 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
AppointmentName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} À	
ZC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\AuthenticationAttemptDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class $
AuthenticationAttemptDTO )
{		 
[

 	
Required

	 
]

 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str `
)` a
]a b
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str `
)` a
]a b
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 
YC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\AuthenticatorDetailsDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class #
AuthenticatorDetailsDTO (
{ 
public		 
string		 
	SharedKey		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
AuthenticatorUri

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
} 
} ü
QC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\AuthResponseDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class 
AuthResponseDTO  
{ 
}		 
}

 º
VC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\CreateAppointmentDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public		 

class		  
CreateAppointmentDTO		 %
{

 
[ 	

JsonIgnore	 
] 
public 
Guid 
	PatientID 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
Guid 
DoctorID 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str h
)h i
]i j
public 
string 
AppointmentName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength &
=' (
$num) *
,* +
ErrorMessage, 8
=9 :
$str; j
)j k
]k l
public 
string 
Time 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Å
KC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\DoctorDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class 
	DoctorDTO 
{ 
public		 
Guid		 
Id		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
string

 
	FirstName

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} É
LC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\PatientDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
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
} Û
RC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\RecoveryCodesDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class 
RecoveryCodesDTO !
{ 
public		 
IList		 
<		 
string		 
>		 
RecoveryCodes		 *
{		+ ,
get		- 0
;		0 1
set		2 5
;		5 6
}		7 8
}

 
} ∏
TC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\RegisterAccountDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class 
RegisterAccountDTO #
{		 
[

 	
Required

	 
]

 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str b
)b c
]c d
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str a
)a b
]b c
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str `
)` a
]a b
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str `
)` a
]a b
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}   ±
KC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\ResultDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class 
	ResultDTO 
{ 
public		 
Status		 
Status		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Message

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
object 
Data 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

enum 
Status 
{ 
Success 
= 
$num 
, 
Error 
= 
$num 
} 
} ‘
YC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\TwoFactorAuthAttemptDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class #
TwoFactorAuthAttemptDTO (
{		 
[

 	
Required

	 
]

 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str `
)` a
]a b
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ ,
,, -
ErrorMessage 
= 
$str `
)` a
]a b
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
StringLength	 
( 
$num 
, 
MinimumLength &
=' (
$num) *
,* +
ErrorMessage 
= 
$str 9
)9 :
]: ;
public 
string 
TwoFactorCode #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
StringLength	 
( 
$num 
, 
MinimumLength &
=' (
$num) *
,* +
ErrorMessage 
= 
$str B
)B C
]C D
public 
string 
RecoveryCode "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
public 
bool 

IsRecovery 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} µ
IC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\UserDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{		 
public

 

class

 
UserDTO

 
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
IList 
< 
string 
> 
Roles "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
TwoFactorEnabled $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

JsonIgnore	 
] 
public 
string 
JwtToken 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

JsonIgnore	 
] 
public 
string 
RefreshToken "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

JsonIgnore	 
] 
public 
ClaimsPrincipal 
claimsUserPrincipal 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
}   —
XC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\DTO\VerifyAuthenticatorDTO.cs
	namespace 	
BusinessLogic
 
. 
DTO 
{ 
public 

class "
VerifyAuthenticatorDTO '
{		 
[

 	
Required

	 
]

 
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
VerificationCode &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ∂
`C:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Exceptions\NoRefreshTokenException.cs
	namespace 	
BusinessLogic
 
. 

Exceptions "
{ 
class 	#
NoRefreshTokenException
 !
:" #
	Exception$ -
{ 
public		 #
NoRefreshTokenException		 &
(		& '
)		' (
{

 	
} 	
public #
NoRefreshTokenException &
(& '
string' -
message. 5
)5 6
:7 8
base9 =
(= >
message> E
)E F
{ 	
} 	
} 
} “
bC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Exceptions\TwoFactorEnabledException.cs
	namespace 	
BusinessLogic
 
. 

Exceptions "
{ 
public 

class %
TwoFactorEnabledException *
:+ ,
	Exception- 6
{ 
public		 %
TwoFactorEnabledException		 (
(		( )
)		) *
{

 	
} 	
public %
TwoFactorEnabledException (
(( )
string) /
message0 7
)7 8
:9 :
base; ?
(? @
message@ G
)G H
{ 	
} 	
} 
} ˛
mC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Exceptions\UsernameOrPasswordIncorrectException.cs
	namespace 	
BusinessLogic
 
. 

Exceptions "
{ 
public 

class 0
$UsernameOrPasswordIncorrectException 5
:6 7
	Exception8 A
{ 
public		 0
$UsernameOrPasswordIncorrectException		 3
(		3 4
)		4 5
{

 	
} 	
public 0
$UsernameOrPasswordIncorrectException 3
(3 4
string4 :
message; B
)B C
:D E
baseF J
(J K
messageK R
)R S
{ 	
} 	
} 
} ∆
_C:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Exceptions\UserNameTakenException.cs
	namespace 	
BusinessLogic
 
. 

Exceptions "
{ 
public 

class "
UserNameTakenException '
:( )
	Exception* 3
{ 
public

 "
UserNameTakenException

 %
(

% &
)

& '
{ 	
} 	
public "
UserNameTakenException %
(% &
string& ,
message- 4
)4 5
:6 7
base8 <
(< =
message= D
)D E
{ 	
} 	
} 
} ¨
_C:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Helpers\AppClaimsPrincipalFactory.cs
	namespace 	
BusinessLogic
 
. 
Helpers 
{ 
public 

class %
AppClaimsPrincipalFactory *
:+ ,&
UserClaimsPrincipalFactory- G
<G H
UserH L
,L M
ApplicationRoleN ]
>] ^
{ 
public %
AppClaimsPrincipalFactory (
(( )
UserManager) 4
<4 5
User5 9
>9 :
userManager; F
,F G
RoleManager 
< 
ApplicationRole '
>' (
roleManager) 4
,4 5
IOptions 
< 
IdentityOptions $
>$ %
optionsAccessor& 5
,5 6
ILogger 
< %
AppClaimsPrincipalFactory -
>- .
logger/ 5
)5 6
: 
base 
( 
userManager 
, 
roleManager  +
,+ ,
optionsAccessor- <
)< =
{ 	
} 	
public 
override 
async 
Task "
<" #
ClaimsPrincipal# 2
>2 3
CreateAsync4 ?
(? @
User@ D
userE I
)I J
{ 	
var 
	principal 
= 
await !
base" &
.& '
CreateAsync' 2
(2 3
user3 7
)7 8
;8 9
var 
roles 
= 
await 
UserManager )
.) *
GetRolesAsync* 7
(7 8
user8 <
)< =
;= >
List 
< 
Claim 
> 
claims 
=  
new! $
List% )
<) *
Claim* /
>/ 0
(0 1
)1 2
;2 3
foreach 
( 
string 
s 
in  
roles! &
)& '
{ 
Claim 
c 
= 
new 
Claim #
(# $
$str$ +
,+ ,
s- .
). /
;/ 0
claims   
.   
Add   
(   
c   
)   
;   
}!! 
(## 
(## 
ClaimsIdentity## 
)## 
	principal## &
.##& '
Identity##' /
)##/ 0
.##0 1
	AddClaims##1 :
(##: ;
claims##; A
)##A B
;##B C
return%% 
	principal%% 
;%% 
}&& 	
})) 
}** ı+
TC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Helpers\AppUserManager.cs
	namespace 	
BusinessLogic
 
. 
Helpers 
{ 
public 

class 
AppUserManager 
:  !
UserManager" -
<- .
User. 2
>2 3
{ 
private 
IConfiguration 
_configuration -
{. /
get0 3
;3 4
}5 6
private 
readonly !
IConfigurationSection .
_appSettingsSection/ B
;B C
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
public 
AppUserManager 
( 

IUserStore (
<( )
User) -
>- .
store/ 4
,4 5
IOptions6 >
<> ?
IdentityOptions? N
>N O
optionsAccessorP _
,_ `
IPasswordHasher 
< 
User  
>  !
passwordHasher" 0
,0 1
IEnumerable2 =
<= >
IUserValidator> L
<L M
UserM Q
>Q R
>R S
userValidatorsT b
,b c
IEnumerable 
< 
IPasswordValidator *
<* +
User+ /
>/ 0
>0 1
passwordValidators2 D
,D E
ILookupNormalizerF W
keyNormalizerX e
,e f"
IdentityErrorDescriber "
errors# )
,) *
IServiceProvider+ ;
services< D
,D E
ILoggerF M
<M N
UserManagerN Y
<Y Z
UserZ ^
>^ _
>_ `
loggera g
,g h
IConfiguration 
configuration (
)( )
: 
base 
( 
store 
, 
optionsAccessor )
,) *
passwordHasher+ 9
,9 :
userValidators; I
,I J
passwordValidatorsK ]
,] ^
keyNormalizer 
, 
errors %
,% &
services' /
,/ 0
logger1 7
)7 8
{ 	
_configuration 
= 
configuration *
;* +
_appSettingsSection 
=  !
_configuration" 0
.0 1

GetSection1 ;
(; <
$str< I
)I J
;J K
_appSettings 
= 
_appSettingsSection .
.. /
Get/ 2
<2 3
AppSettings3 >
>> ?
(? @
)@ A
;A B
} 	
public## 
override## 
string## '
GenerateNewAuthenticatorKey## :
(##: ;
)##; <
{$$ 	
var%% $
originalAuthenticatorKey%% (
=%%) *
base%%+ /
.%%/ 0'
GenerateNewAuthenticatorKey%%0 K
(%%K L
)%%L M
;%%M N
bool)) 
encryptionEnabled)) "
=))# $
_appSettings))% 1
.))1 2
EncryptionEnabled))2 C
;))C D
Console++ 
.++ 
	WriteLine++ 
(++ 
encryptionEnabled++ /
)++/ 0
;++0 1
var.. 
encryptedKey.. 
=.. 
encryptionEnabled.. 0
?// 
Convert// 
.// 
ToBase64String// (
(//( )
Crypto//) /
./// 0

AesEncrypt//0 :
(//: ;$
originalAuthenticatorKey//; S
,//S T
_appSettings//U a
.//a b
EncryptionKey//b o
)//o p
)//p q
:00 $
originalAuthenticatorKey00 *
;00* +
Console22 
.22 
	WriteLine22 
(22 
encryptedKey22 *
)22* +
;22+ ,
return44 
encryptedKey44 
;44  
}55 	
public77 
override77 
async77 
Task77 "
<77" #
string77# )
>77) *$
GetAuthenticatorKeyAsync77+ C
(77C D
User77D H
user77I M
)77M N
{88 	
var99 
dbKey99 
=99 
await99 
base99 "
.99" #$
GetAuthenticatorKeyAsync99# ;
(99; <
user99< @
)99@ A
;99A B
if;; 
(;; 
dbKey;; 
==;; 
null;; 
);; 
{<< 
return== 
null== 
;== 
}>> 
bool@@ 
encryptionEnabled@@ "
=@@# $
_appSettings@@% 1
.@@1 2
EncryptionEnabled@@2 C
;@@C D
varBB $
originalAuthenticatorKeyBB (
=BB) *
encryptionEnabledBB+ <
?CC 
CryptoCC 
.CC 

AesDecryptCC #
(CC# $
ConvertCC$ +
.CC+ ,
FromBase64StringCC, <
(CC< =
dbKeyCC= B
)CCB C
,CCC D
_appSettingsCCE Q
.CCQ R
EncryptionKeyCCR _
)CC_ `
:DD 
awaitDD 
baseDD 
.DD $
GetAuthenticatorKeyAsyncDD 5
(DD5 6
userDD6 :
)DD: ;
;DD; <
returnFF $
originalAuthenticatorKeyFF +
;FF+ ,
}GG 	
}KK 
}LL ∑3
LC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Helpers\Crypto.cs
	namespace 	
BusinessLogic
 
. 
Helpers 
{		 
public

 

class

 
Crypto

 
{ 
public 
Crypto 
( 
) 
{ 	
} 	
public 
static 
byte 
[ 
] 

AesEncrypt '
(' (
string( .
message/ 6
,6 7
string8 >
key? B
)B C
{ 	
byte 
[ 
] 
keyBytes 
= 
Encoding &
.& '
UTF8' +
.+ ,
GetBytes, 4
(4 5
key5 8
)8 9
;9 :
Aes 
aesObj 
= 
Aes 
. 
Create #
(# $
)$ %
;% &
aesObj 
. 
KeySize 
= 
$num  
;  !
aesObj 
. 
	BlockSize 
= 
$num "
;" #
aesObj 
. 
Mode 
= 

CipherMode $
.$ %
CBC% (
;( )
aesObj 
. 
Key 
= 
keyBytes !
;! "
aesObj 
. 
Padding 
= 
PaddingMode (
.( )
PKCS7) .
;. /
byte 
[ 
] 
cipher 
; 
ICryptoTransform   
	encryptor   &
=  ' (
aesObj  ) /
.  / 0
CreateEncryptor  0 ?
(  ? @
keyBytes  @ H
,  H I
aesObj  J P
.  P Q
IV  Q S
)  S T
;  T U
using"" 
("" 
MemoryStream"" 
	msEncrypt""  )
=""* +
new"", /
MemoryStream""0 <
(""< =
)""= >
)""> ?
{## 
using$$ 
($$ 
CryptoStream$$ #
	csEncrypt$$$ -
=$$. /
new$$0 3
CryptoStream$$4 @
($$@ A
	msEncrypt$$A J
,$$J K
	encryptor$$L U
,$$U V
CryptoStreamMode$$W g
.$$g h
Write$$h m
)$$m n
)$$n o
{%% 
using&& 
(&& 
StreamWriter&& '
	swEncrypt&&( 1
=&&2 3
new&&4 7
StreamWriter&&8 D
(&&D E
	csEncrypt&&E N
)&&N O
)&&O P
{'' 
	swEncrypt** !
.**! "
Write**" '
(**' (
message**( /
)**/ 0
;**0 1
}++ 
cipher,, 
=,, 
	msEncrypt,, &
.,,& '
ToArray,,' .
(,,. /
),,/ 0
;,,0 1
}-- 
}.. 
byte00 
[00 
]00 
finalCipher00 
=00  
aesObj00! '
.00' (
IV00( *
.00* +
Concat00+ 1
(001 2
cipher002 8
)008 9
.009 :
ToArray00: A
(00A B
)00B C
;00C D
return11 
finalCipher11 
;11 
}22 	
public44 
static44 
string44 

AesDecrypt44 '
(44' (
byte44( ,
[44, -
]44- .

cipherText44/ 9
,449 :
string44; A
key44B E
)44E F
{55 	
string77 
	plaintext77 
=77 
null77 #
;77# $
byte99 
[99 
]99 
keyBytes99 
=99 
Encoding99 &
.99& '
UTF899' +
.99+ ,
GetBytes99, 4
(994 5
key995 8
)998 9
;999 :
Aes:: 
aesObj:: 
=:: 
Aes:: 
.:: 
Create:: #
(::# $
)::$ %
;::% &
aesObj<< 
.<< 
KeySize<< 
=<< 
$num<<  
;<<  !
aesObj== 
.== 
	BlockSize== 
=== 
$num== "
;==" #
aesObj>> 
.>> 
Mode>> 
=>> 

CipherMode>> $
.>>$ %
CBC>>% (
;>>( )
aesObj?? 
.?? 
Padding?? 
=?? 
PaddingMode?? (
.??( )
PKCS7??) .
;??. /
byteBB 
[BB 
]BB 
cipherBB 
=BB 

cipherTextBB &
.BB& '
SkipBB' +
(BB+ ,
$numBB, .
)BB. /
.BB/ 0
ToArrayBB0 7
(BB7 8
)BB8 9
;BB9 :
byteDD 
[DD 
]DD 
IVDD 
=DD 

cipherTextDD "
.DD" #
TakeDD# '
(DD' (
$numDD( *
)DD* +
.DD+ ,
ToArrayDD, 3
(DD3 4
)DD4 5
;DD5 6
aesObjEE 
.EE 
IVEE 
=EE 
IVEE 
;EE 
ICryptoTransformGG 
	decryptorGG &
=GG' (
aesObjGG) /
.GG/ 0
CreateDecryptorGG0 ?
(GG? @
keyBytesGG@ H
,GGH I
aesObjGGJ P
.GGP Q
IVGGQ S
)GGS T
;GGT U
usingJJ 
(JJ 
MemoryStreamJJ 
	msDecryptJJ  )
=JJ* +
newJJ, /
MemoryStreamJJ0 <
(JJ< =
cipherJJ= C
)JJC D
)JJD E
{KK 
usingLL 
(LL 
CryptoStreamLL #
	csDecryptLL$ -
=LL. /
newLL0 3
CryptoStreamLL4 @
(LL@ A
	msDecryptLLA J
,LLJ K
	decryptorLLL U
,LLU V
CryptoStreamModeLLW g
.LLg h
ReadLLh l
)LLl m
)LLm n
{MM 
usingNN 
(NN 
StreamReaderNN '
	srDecryptNN( 1
=NN2 3
newNN4 7
StreamReaderNN8 D
(NND E
	csDecryptNNE N
)NNN O
)NNO P
{OO 
	plaintextRR !
=RR" #
	srDecryptRR$ -
.RR- .
	ReadToEndRR. 7
(RR7 8
)RR8 9
;RR9 :
}SS 
}TT 
}UU 
returnWW 
	plaintextWW 
;WW 
}XX 	
}ZZ 
}[[ £
KC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Helpers\Roles.cs
	namespace 	
BusinessLogic
 
. 
Helpers 
{ 
public 

static 
class 
Role 
{ 
public		 
const		 
string		 
Admin		 !
=		" #
$str		$ +
;		+ ,
public

 
const

 
string

 
Doctor

 "
=

# $
$str

% -
;

- .
public 
const 
string 
Patient #
=$ %
$str& /
;/ 0
} 
} Õ	
WC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Mapping\ModelToDTOProfile.cs
	namespace 	
BusinessLogic
 
. 
Mapping 
{		 
public

 

class

 
ModelToDTOProfile

 "
:

# $
Profile

% ,
{ 
public 
ModelToDTOProfile  
(  !
)! "
{ 	
	CreateMap 
< 
User 
, 

PatientDTO &
>& '
(' (
)( )
;) *
	CreateMap 
< 
User 
, 
	DoctorDTO %
>% &
(& '
)' (
;( )
	CreateMap 
< 
User 
, 
UserDTO #
># $
($ %
)% &
;& '
	CreateMap 
< 
Doctor 
, 
	DoctorDTO '
>' (
(( )
)) *
;* +
	CreateMap 
< 
Appointment !
,! "
AppointmentDTO# 1
>1 2
(2 3
)3 4
;4 5
} 	
} 
} æ4
YC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\AppointmentService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public 

class 
AppointmentService #
:$ %
IAppointmentService& 9
{ 
private 
readonly "
IAppointmentRepository /"
_appointmentRepository0 F
;F G
private 
readonly 
IMapper  
_mapper! (
;( )
public 
AppointmentService !
(! ""
IAppointmentRepository" 8!
appointmentRepository9 N
,N O
IMapperP W
mapperX ^
)^ _
{ 	"
_appointmentRepository "
=# $!
appointmentRepository% :
;: ;
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
Appointment %
>% &
CreateAppointment' 8
(8 9 
CreateAppointmentDTO9 M 
createAppointmentDTON b
)b c
{ 	
Appointment 
appointment #
=$ %
new& )
Appointment* 5
(5 6
)6 7
;7 8
appointment 
. 
AppointmentName '
=( ) 
createAppointmentDTO* >
.> ?
AppointmentName? N
;N O
appointment 
. 
Date 
=  
createAppointmentDTO 3
.3 4
Date4 8
;8 9
appointment 
. 
Time 
=  
createAppointmentDTO 3
.3 4
Time4 8
;8 9
appointment 
. 
DoctorId  
=! " 
createAppointmentDTO# 7
.7 8
DoctorID8 @
;@ A
appointment 
. 
	PatientId !
=" # 
createAppointmentDTO$ 8
.8 9
	PatientID9 B
;B C
var   
result   
=   
await   "
_appointmentRepository   5
.  5 6
Insert  6 <
(  < =
appointment  = H
)  H I
;  I J
if"" 
("" 
result"" 
>"" 
$num"" 
)"" 
{## 
return$$ 
appointment$$ "
;$$" #
}%% 
return&& 
null&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
	ResultDTO)) #
>))# $
DeleteAppointment))% 6
())6 7
Guid))7 ;
appointmentID))< I
)))I J
{** 	
var,, 
deleted,, 
=,, "
_appointmentRepository,, 0
.,,0 1
Delete,,1 7
(,,7 8
appointmentID,,8 E
),,E F
;,,F G
if.. 
(.. 
deleted.. 
).. 
{// 
	ResultDTO00 
result100 !
=00" #
new00$ '
	ResultDTO00( 1
(001 2
)002 3
;003 4
result111 
.11 
Message11 
=11  !
$str11" D
;11D E
result122 
.22 
Status22 
=22  
Status22! '
.22' (
Success22( /
;22/ 0
return33 
result133 
;33 
}44 
	ResultDTO66 
result266 
=66 
new66  #
	ResultDTO66$ -
(66- .
)66. /
;66/ 0
result277 
.77 
Message77 
=77 
$str77 n
;77n o
result288 
.88 
Status88 
=88 
Status88 #
.88# $
Error88$ )
;88) *
return99 
result299 
;99 
}:: 	
public<< 
	ResultDTO<< 
GetMyAppointments<< *
(<<* +
Guid<<+ /
userId<<0 6
)<<6 7
{== 	
var>> 
appointmentResult>> "
=>># $"
_appointmentRepository>>% ;
.>>; <#
GetAppointmentsByUserID>>< S
(>>S T
userId>>T Z
)>>Z [
;>>[ \
var?? 
appointmentsDTO?? 
=??  !
_mapper??" )
.??) *
Map??* -
<??- .
List??. 2
<??2 3
Appointment??3 >
>??> ?
,??? @
List??A E
<??E F
AppointmentDTO??F T
>??T U
>??U V
(??V W
appointmentResult??W h
)??h i
;??i j
ifBB 
(BB 
appointmentsDTOBB 
!=BB !
nullBB" &
&&BB' )
appointmentsDTOBB* 9
.BB9 :
CountBB: ?
>BB@ A
$numBBB C
)BBC D
{CC 
	ResultDTODD 
resultDD  
=DD! "
newDD# &
	ResultDTODD' 0
(DD0 1
)DD1 2
;DD2 3
resultEE 
.EE 
StatusEE 
=EE 
StatusEE  &
.EE& '
SuccessEE' .
;EE. /
resultFF 
.FF 
DataFF 
=FF 
appointmentsDTOFF -
;FF- .
returnGG 
resultGG 
;GG 
}II 
elseJJ 
ifJJ 
(JJ 
appointmentsDTOJJ #
.JJ# $
CountJJ$ )
==JJ* ,
$numJJ- .
)JJ. /
{KK 
	ResultDTOLL 
result2LL !
=LL" #
newLL$ '
	ResultDTOLL( 1
(LL1 2
)LL2 3
;LL3 4
result2MM 
.MM 
MessageMM 
=MM  !
$strMM" H
;MMH I
result2NN 
.NN 
StatusNN 
=NN  
StatusNN! '
.NN' (
ErrorNN( -
;NN- .
returnOO 
result2OO 
;OO 
}PP 
elseQQ 
{RR 
	ResultDTOSS 
result3SS !
=SS" #
newSS$ '
	ResultDTOSS( 1
(SS1 2
)SS2 3
;SS3 4
result3TT 
.TT 
MessageTT 
=TT  !
$strTT" W
;TTW X
result3UU 
.UU 
StatusUU 
=UU  
StatusUU! '
.UU' (
ErrorUU( -
;UU- .
returnVV 
result3VV 
;VV 
}WW 
}YY 	
}ZZ 
}[[ ãƒ
RC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\AuthService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public 

class 
AuthService 
: 
IAuthService +
{ 
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
SignInManager &
<& '
User' +
>+ ,
_signInManager- ;
;; <
private 
readonly '
IUserClaimsPrincipalFactory 4
<4 5
User5 9
>9 :
_principalFactory; L
;L M
private 
readonly "
IMedicalFileRepository /"
_medicalFileRepository0 F
;F G
public!! 
AuthService!! 
(!! 
IOptions!! #
<!!# $
AppSettings!!$ /
>!!/ 0
appSettings!!1 <
,!!< =
IMapper"" 
mapper"" 
,"" 
UserManager## 
<## 
User## 
>## 
userManager## )
,##) *
SignInManager$$ 
<$$ 
User$$ 
>$$ 
signInManager$$  -
,$$- .'
IUserClaimsPrincipalFactory%% '
<%%' (
User%%( ,
>%%, -
principalFactory%%. >
,%%> ?"
IMedicalFileRepository&& "!
medicalFileRepository&&# 8
)&&8 9
{'' 	
_appSettings(( 
=(( 
appSettings(( &
.((& '
Value((' ,
;((, -
_mapper)) 
=)) 
mapper)) 
;)) 
_signInManager** 
=** 
signInManager** *
;*** +
_userManager++ 
=++ 
userManager++ &
;++& '
_principalFactory,, 
=,, 
principalFactory,,  0
;,,0 1"
_medicalFileRepository-- "
=--# $!
medicalFileRepository--% :
;--: ;
}.. 	
public// 
async// 
Task// 
<// 
UserDTO// !
>//! "
Authenticate//# /
(/// 0$
AuthenticationAttemptDTO//0 H$
authenticationAttemptDTO//I a
)//a b
{00 	
var22 
user22 
=22 
await22 
_userManager22 )
.22) *
FindByNameAsync22* 9
(229 :$
authenticationAttemptDTO22: R
.22R S
Username22S [
)22[ \
;22\ ]
if44 
(44 
user44 
!=44 
null44 
)44 
{55 
var88 
loginResult88 
=88  !
await88" '
_signInManager88( 6
.886 7$
CheckPasswordSignInAsync887 O
(88O P
user88P T
,88T U$
authenticationAttemptDTO88V n
.88n o
Password88o w
,88w x
false88y ~
)88~ 
;	88 Ä
if99 
(99 
!99 
loginResult99  
.99  !
	Succeeded99! *
)99* +
{:: 
throw;; 
new;; 0
$UsernameOrPasswordIncorrectException;; B
(;;B C
);;C D
;;;D E
}<< 
var>> 
twoFAEnabled>>  
=>>! "
await>># (
_userManager>>) 5
.>>5 6$
GetTwoFactorEnabledAsync>>6 N
(>>N O
user>>O S
)>>S T
;>>T U
if?? 
(?? 
twoFAEnabled??  
)??  !
{@@ 
throwAA 
newAA %
TwoFactorEnabledExceptionAA 7
(AA7 8
)AA8 9
;AA9 :
}BB 
varDD 
userDtoDD 
=DD 
awaitDD #
GenerateUserLoginDD$ 5
(DD5 6
userDD6 :
)DD: ;
;DD; <
returnFF 
userDtoFF 
;FF 
}II 
elseJJ 
{KK 
throwLL 
newLL 0
$UsernameOrPasswordIncorrectExceptionLL >
(LL> ?
)LL? @
;LL@ A
}MM 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
UserDTOQQ !
>QQ! "
GenerateUserLoginQQ# 4
(QQ4 5
UserQQ5 9
userQQ: >
)QQ> ?
{RR 	
UserDTOSS 
userDTOSS 
=SS 
_mapperSS %
.SS% &
MapSS& )
<SS) *
UserSS* .
,SS. /
UserDTOSS0 7
>SS7 8
(SS8 9
userSS9 =
)SS= >
;SS> ?
userDTOVV 
.VV 
TwoFactorEnabledVV $
=VV% &
awaitVV' ,
_userManagerVV- 9
.VV9 :$
GetTwoFactorEnabledAsyncVV: R
(VVR S
userVVS W
)VVW X
;VVX Y
userDTOXX 
.XX 
HasAuthenticatorXX $
=XX% &
awaitXX' ,
_userManagerXX- 9
.XX9 :$
GetAuthenticatorKeyAsyncXX: R
(XXR S
userXXS W
)XXW X
!=XXY [
nullXX\ `
;XX` a
userDTO\\ 
.\\ 
claimsUserPrincipal\\ '
=\\( )
await\\* /
_principalFactory\\0 A
.\\A B
CreateAsync\\B M
(\\M N
user\\N R
)\\R S
;\\S T
var__ 
accessToken__ 
=__ 
GenerateJwtToken__ .
(__. /
userDTO__/ 6
.__6 7
claimsUserPrincipal__7 J
.__J K
Claims__K Q
)__Q R
;__R S
userDTOaa 
.aa 
JwtTokenaa 
=aa 
accessTokenaa *
;aa* +
vardd 
refreshTokendd 
=dd  
GenerateRefreshTokendd 3
(dd3 4
userDTOdd4 ;
.dd; <
claimsUserPrincipaldd< O
.ddO P
ClaimsddP V
)ddV W
;ddW X
constgg 
intgg 

workFactorgg  
=gg! "
$numgg# %
;gg% &
stringhh 
hashedRefreshTokenhh %
=hh& '
BChh( *
.hh* +
HashPasswordhh+ 7
(hh7 8
refreshTokenhh8 D
,hhD E

workFactorhhF P
)hhP Q
;hhQ R
userkk 
.kk 
RefreshTokenkk 
=kk 
hashedRefreshTokenkk  2
;kk2 3
varll 
updateResultll 
=ll 
awaitll $
_userManagerll% 1
.ll1 2
UpdateAsyncll2 =
(ll= >
userll> B
)llB C
;llC D
varmm 
rolesmm 
=mm 
awaitmm 
_userManagermm *
.mm* +
GetRolesAsyncmm+ 8
(mm8 9
usermm9 =
)mm= >
;mm> ?
ifoo 
(oo 
updateResultoo 
.oo 
	Succeededoo &
)oo& '
{pp 
userDTOqq 
.qq 
Rolesqq 
=qq 
rolesqq  %
;qq% &
userDTOrr 
.rr 
RefreshTokenrr $
=rr% &
refreshTokenrr' 3
;rr3 4
returnss 
userDTOss 
;ss 
}tt 
returnuu 
nulluu 
;uu 
}vv 	
privatexx 
stringxx 
GenerateJwtTokenxx '
(xx' (
IEnumerablexx( 3
<xx3 4
Claimxx4 9
>xx9 :
claimsxx; A
)xxA B
{yy 	
var{{ 
tokenHandler{{ 
={{ 
new{{ "#
JwtSecurityTokenHandler{{# :
({{: ;
){{; <
;{{< =
var|| 
key|| 
=|| 
Encoding|| 
.|| 
ASCII|| $
.||$ %
GetBytes||% -
(||- .
_appSettings||. :
.||: ;
	JwtSecret||; D
)||D E
;||E F
var}} 
tokenDescriptor}} 
=}}  !
new}}" %#
SecurityTokenDescriptor}}& =
{~~ 
Subject 
= 
new 
ClaimsIdentity ,
(, -
claims- 3
)3 4
,4 5
Expires
ÄÄ 
=
ÄÄ 
DateTime
ÄÄ "
.
ÄÄ" #
UtcNow
ÄÄ# )
.
ÄÄ) *

AddMinutes
ÄÄ* 4
(
ÄÄ4 5
_appSettings
ÄÄ5 A
.
ÄÄA B!
AccessTokenLifetime
ÄÄB U
)
ÄÄU V
,
ÄÄV W 
SigningCredentials
ÅÅ "
=
ÅÅ# $
new
ÅÅ% ( 
SigningCredentials
ÅÅ) ;
(
ÅÅ; <
new
ÅÅ< ?"
SymmetricSecurityKey
ÅÅ@ T
(
ÅÅT U
key
ÅÅU X
)
ÅÅX Y
,
ÅÅY Z 
SecurityAlgorithms
ÅÅ[ m
.
ÅÅm n"
HmacSha512SignatureÅÅn Å
)ÅÅÅ Ç
}
ÇÇ 
;
ÇÇ 
var
ÉÉ 
token
ÉÉ 
=
ÉÉ 
tokenHandler
ÉÉ $
.
ÉÉ$ %
CreateToken
ÉÉ% 0
(
ÉÉ0 1
tokenDescriptor
ÉÉ1 @
)
ÉÉ@ A
;
ÉÉA B
return
ÑÑ 
tokenHandler
ÑÑ 
.
ÑÑ  

WriteToken
ÑÑ  *
(
ÑÑ* +
token
ÑÑ+ 0
)
ÑÑ0 1
;
ÑÑ1 2
}
ÖÖ 	
private
áá 
string
áá "
GenerateRefreshToken
áá +
(
áá+ ,
IEnumerable
áá, 7
<
áá7 8
Claim
áá8 =
>
áá= >
claims
áá? E
)
ááE F
{
àà 	
var
ââ 
tokenHandler
ââ 
=
ââ 
new
ââ "%
JwtSecurityTokenHandler
ââ# :
(
ââ: ;
)
ââ; <
;
ââ< =
var
ää 
key
ää 
=
ää 
Encoding
ää 
.
ää 
ASCII
ää $
.
ää$ %
GetBytes
ää% -
(
ää- .
_appSettings
ää. :
.
ää: ;
RefreshSecret
ää; H
)
ääH I
;
ääI J
var
ãã 
tokenDescriptor
ãã 
=
ãã  !
new
ãã" %%
SecurityTokenDescriptor
ãã& =
{
åå 
Subject
çç 
=
çç 
new
çç 
ClaimsIdentity
çç ,
(
çç, -
claims
çç- 3
)
çç3 4
,
çç4 5
Expires
éé 
=
éé 
DateTime
éé "
.
éé" #
UtcNow
éé# )
.
éé) *
AddDays
éé* 1
(
éé1 2
_appSettings
éé2 >
.
éé> ?"
RefreshTokenLifetime
éé? S
)
ééS T
,
ééT U 
SigningCredentials
èè "
=
èè# $
new
èè% ( 
SigningCredentials
èè) ;
(
èè; <
new
èè< ?"
SymmetricSecurityKey
èè@ T
(
èèT U
key
èèU X
)
èèX Y
,
èèY Z 
SecurityAlgorithms
èè[ m
.
èèm n"
HmacSha512Signatureèèn Å
)èèÅ Ç
}
êê 
;
êê 
var
ëë 
token
ëë 
=
ëë 
tokenHandler
ëë $
.
ëë$ %
CreateToken
ëë% 0
(
ëë0 1
tokenDescriptor
ëë1 @
)
ëë@ A
;
ëëA B
return
íí 
tokenHandler
íí 
.
íí  

WriteToken
íí  *
(
íí* +
token
íí+ 0
)
íí0 1
;
íí1 2
}
ìì 	
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
bool
ïï 
>
ïï 
Register
ïï  (
(
ïï( ) 
RegisterAccountDTO
ïï) ; 
registerAccountDTO
ïï< N
)
ïïN O
{
ññ 	
var
òò 
user
òò 
=
òò 
await
òò 
_userManager
òò )
.
òò) *
FindByNameAsync
òò* 9
(
òò9 : 
registerAccountDTO
òò: L
.
òòL M
Username
òòM U
)
òòU V
;
òòV W
if
öö 
(
öö 
user
öö 
!=
öö 
null
öö 
)
öö 
{
õõ 
throw
úú 
new
úú $
UserNameTakenException
úú 0
(
úú0 1
$str
úú1 R
)
úúR S
;
úúS T
}
ùù 
Patient
ûû 
newUser
ûû 
=
ûû 
new
ûû !
Patient
ûû" )
(
ûû) *
)
ûû* +
;
ûû+ ,
newUser
üü 
.
üü 
	FirstName
üü 
=
üü  
registerAccountDTO
üü  2
.
üü2 3
	FirstName
üü3 <
;
üü< =
newUser
†† 
.
†† 
LastName
†† 
=
††  
registerAccountDTO
†† 1
.
††1 2
LastName
††2 :
;
††: ;
newUser
°° 
.
°° 
UserName
°° 
=
°°  
registerAccountDTO
°° 1
.
°°1 2
Username
°°2 :
;
°°: ;
newUser
¢¢ 
.
¢¢ 
DateOfBirth
¢¢ 
=
¢¢  ! 
registerAccountDTO
¢¢" 4
.
¢¢4 5
DateOfBirth
¢¢5 @
;
¢¢@ A
var
§§ 
identityResult
§§ 
=
§§  
await
§§! &
_userManager
§§' 3
.
§§3 4
CreateAsync
§§4 ?
(
§§? @
newUser
§§@ G
,
§§G H 
registerAccountDTO
§§I [
.
§§[ \
Password
§§\ d
)
§§d e
;
§§e f
var
•• 

roleResult
•• 
=
•• 
await
•• "
_userManager
••# /
.
••/ 0
AddToRoleAsync
••0 >
(
••> ?
newUser
••? F
,
••F G
Role
••H L
.
••L M
Patient
••M T
)
••T U
;
••U V
MedicalFile
¶¶ 
medicalFile
¶¶ #
=
¶¶$ %
new
¶¶& )
MedicalFile
¶¶* 5
(
¶¶5 6
)
¶¶6 7
;
¶¶7 8
medicalFile
ßß 
.
ßß 
Patient
ßß 
=
ßß  !
newUser
ßß" )
;
ßß) *
await
®® $
_medicalFileRepository
®® (
.
®®( )
Insert
®®) /
(
®®/ 0
medicalFile
®®0 ;
)
®®; <
;
®®< =
if
™™ 
(
™™ 
identityResult
™™ 
.
™™ 
	Succeeded
™™ (
&&
™™) +

roleResult
™™, 6
.
™™6 7
	Succeeded
™™7 @
)
™™@ A
{
´´ 
return
¨¨ 
true
¨¨ 
;
¨¨ 
}
≠≠ 
return
ÆÆ 
false
ÆÆ 
;
ÆÆ 
}
∞∞ 	
public
≤≤ 
async
≤≤ 
Task
≤≤ 
<
≤≤ 
UserDTO
≤≤ !
>
≤≤! " 
RefreshAccessToken
≤≤# 5
(
≤≤5 6
string
≤≤6 <
refreshToken
≤≤= I
)
≤≤I J
{
≥≥ 	
var
¥¥ 
tokenHandler
¥¥ 
=
¥¥ 
new
¥¥ "%
JwtSecurityTokenHandler
¥¥# :
(
¥¥: ;
)
¥¥; <
;
¥¥< =
var
µµ 
tokenS
µµ 
=
µµ 
tokenHandler
µµ %
.
µµ% &
ReadJwtToken
µµ& 2
(
µµ2 3
refreshToken
µµ3 ?
)
µµ? @
;
µµ@ A
Console
∂∂ 
.
∂∂ 
	WriteLine
∂∂ 
(
∂∂ 
tokenS
∂∂ $
.
∂∂$ %
Claims
∂∂% +
.
∂∂+ ,
ToList
∂∂, 2
(
∂∂2 3
)
∂∂3 4
.
∂∂4 5
Count
∂∂5 :
)
∂∂: ;
;
∂∂; <
var
∑∑ 
userName
∑∑ 
=
∑∑ 
tokenS
∑∑ !
.
∑∑! "
Claims
∑∑" (
.
∑∑( )
First
∑∑) .
(
∑∑. /
claim
∑∑/ 4
=>
∑∑5 7
claim
∑∑8 =
.
∑∑= >
Type
∑∑> B
==
∑∑C E
$str
∑∑F S
)
∑∑S T
.
∑∑T U
Value
∑∑U Z
;
∑∑Z [
var
ππ 
user
ππ 
=
ππ 
await
ππ 
_userManager
ππ )
.
ππ) *
FindByNameAsync
ππ* 9
(
ππ9 :
userName
ππ: B
)
ππB C
;
ππC D
if
ΩΩ 
(
ΩΩ 
user
ΩΩ 
.
ΩΩ 
RefreshToken
ΩΩ !
==
ΩΩ" $
null
ΩΩ% )
)
ΩΩ) *
{
ææ 
throw
øø 
new
øø %
NoRefreshTokenException
øø 1
(
øø1 2
$str
øø2 _
)
øø_ `
;
øø` a
}
¿¿ 
bool
¬¬ 
	validated
¬¬ 
=
¬¬ 
BC
¬¬ 
.
¬¬  
Verify
¬¬  &
(
¬¬& '
refreshToken
¬¬' 3
,
¬¬3 4
user
¬¬5 9
.
¬¬9 :
RefreshToken
¬¬: F
)
¬¬F G
;
¬¬G H
if
√√ 
(
√√ 
!
√√ 
	validated
√√ 
)
√√ 
{
ƒƒ 
throw
≈≈ 
new
≈≈ +
BcryptAuthenticationException
≈≈ 7
(
≈≈7 8
$str
≈≈8 V
)
≈≈V W
;
≈≈W X
}
∆∆ 
var
»» !
claimsUserPrincipal
»» #
=
»»$ %
await
»»& +
_principalFactory
»», =
.
»»= >
CreateAsync
»»> I
(
»»I J
user
»»J N
)
»»N O
;
»»O P
UserDTO
   
userDTO
   
=
   
_mapper
   %
.
  % &
Map
  & )
<
  ) *
User
  * .
,
  . /
UserDTO
  0 7
>
  7 8
(
  8 9
user
  9 =
)
  = >
;
  > ?
userDTO
ÀÀ 
.
ÀÀ 
JwtToken
ÀÀ 
=
ÀÀ 
GenerateJwtToken
ÀÀ /
(
ÀÀ/ 0!
claimsUserPrincipal
ÀÀ0 C
.
ÀÀC D
Claims
ÀÀD J
)
ÀÀJ K
;
ÀÀK L
var
ÃÃ 
roles
ÃÃ 
=
ÃÃ 
await
ÃÃ 
_userManager
ÃÃ *
.
ÃÃ* +
GetRolesAsync
ÃÃ+ 8
(
ÃÃ8 9
user
ÃÃ9 =
)
ÃÃ= >
;
ÃÃ> ?
userDTO
ÕÕ 
.
ÕÕ 
Roles
ÕÕ 
=
ÕÕ 
roles
ÕÕ !
;
ÕÕ! "
return
œœ 
userDTO
œœ 
;
œœ 
}
—— 	
public
”” 
async
”” 
Task
”” 
<
”” 
bool
”” 
>
”” 
SignOut
””  '
(
””' (
Guid
””( ,
userId
””- 3
)
””3 4
{
‘‘ 	
Console
’’ 
.
’’ 
	WriteLine
’’ 
(
’’ 
userId
’’ $
)
’’$ %
;
’’% &
var
÷÷ 
user
÷÷ 
=
÷÷ 
await
÷÷ 
_userManager
÷÷ )
.
÷÷) *
FindByIdAsync
÷÷* 7
(
÷÷7 8
userId
÷÷8 >
.
÷÷> ?
ToString
÷÷? G
(
÷÷G H
)
÷÷H I
)
÷÷I J
;
÷÷J K
if
◊◊ 
(
◊◊ 
user
◊◊ 
!=
◊◊ 
null
◊◊ 
)
◊◊ 
{
ÿÿ 
user
ŸŸ 
.
ŸŸ 
RefreshToken
ŸŸ !
=
ŸŸ" #
null
ŸŸ$ (
;
ŸŸ( )
var
⁄⁄ 
updateResult
⁄⁄  
=
⁄⁄! "
await
⁄⁄# (
_userManager
⁄⁄) 5
.
⁄⁄5 6
UpdateAsync
⁄⁄6 A
(
⁄⁄A B
user
⁄⁄B F
)
⁄⁄F G
;
⁄⁄G H
return
‹‹ 
updateResult
‹‹ #
.
‹‹# $
	Succeeded
‹‹$ -
;
‹‹- .
}
ﬁﬁ 
return
ﬂﬂ 
false
ﬂﬂ 
;
ﬂﬂ 
}
·· 	
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
bool
„„ 
>
„„ 
RegisterDoctor
„„  .
(
„„. / 
RegisterAccountDTO
„„/ A 
registerAccountDTO
„„B T
)
„„T U
{
‰‰ 	
var
ÂÂ 
user
ÂÂ 
=
ÂÂ 
await
ÂÂ 
_userManager
ÂÂ )
.
ÂÂ) *
FindByNameAsync
ÂÂ* 9
(
ÂÂ9 : 
registerAccountDTO
ÂÂ: L
.
ÂÂL M
Username
ÂÂM U
)
ÂÂU V
;
ÂÂV W
if
ÁÁ 
(
ÁÁ 
user
ÁÁ 
!=
ÁÁ 
null
ÁÁ 
)
ÁÁ 
{
ËË 
throw
ÈÈ 
new
ÈÈ $
UserNameTakenException
ÈÈ 0
(
ÈÈ0 1
$str
ÈÈ1 R
)
ÈÈR S
;
ÈÈS T
}
ÍÍ 
User
ÎÎ 
newUser
ÎÎ 
=
ÎÎ 
new
ÎÎ 
Doctor
ÎÎ %
(
ÎÎ% &
)
ÎÎ& '
;
ÎÎ' (
newUser
ÏÏ 
.
ÏÏ 
	FirstName
ÏÏ 
=
ÏÏ  
registerAccountDTO
ÏÏ  2
.
ÏÏ2 3
	FirstName
ÏÏ3 <
;
ÏÏ< =
newUser
ÌÌ 
.
ÌÌ 
LastName
ÌÌ 
=
ÌÌ  
registerAccountDTO
ÌÌ 1
.
ÌÌ1 2
LastName
ÌÌ2 :
;
ÌÌ: ;
newUser
ÓÓ 
.
ÓÓ 
UserName
ÓÓ 
=
ÓÓ  
registerAccountDTO
ÓÓ 1
.
ÓÓ1 2
Username
ÓÓ2 :
;
ÓÓ: ;
newUser
ÔÔ 
.
ÔÔ 
DateOfBirth
ÔÔ 
=
ÔÔ  ! 
registerAccountDTO
ÔÔ" 4
.
ÔÔ4 5
DateOfBirth
ÔÔ5 @
;
ÔÔ@ A
var
ÒÒ 
identityResult
ÒÒ 
=
ÒÒ  
await
ÒÒ! &
_userManager
ÒÒ' 3
.
ÒÒ3 4
CreateAsync
ÒÒ4 ?
(
ÒÒ? @
newUser
ÒÒ@ G
,
ÒÒG H 
registerAccountDTO
ÒÒI [
.
ÒÒ[ \
Password
ÒÒ\ d
)
ÒÒd e
;
ÒÒe f
var
ÚÚ 

roleResult
ÚÚ 
=
ÚÚ 
await
ÚÚ "
_userManager
ÚÚ# /
.
ÚÚ/ 0
AddToRoleAsync
ÚÚ0 >
(
ÚÚ> ?
newUser
ÚÚ? F
,
ÚÚF G
Role
ÚÚH L
.
ÚÚL M
Doctor
ÚÚM S
)
ÚÚS T
;
ÚÚT U
if
ÛÛ 
(
ÛÛ 
identityResult
ÛÛ 
.
ÛÛ 
	Succeeded
ÛÛ (
&&
ÛÛ) +

roleResult
ÛÛ, 6
.
ÛÛ6 7
	Succeeded
ÛÛ7 @
)
ÛÛ@ A
{
ÙÙ 
return
ıı 
true
ıı 
;
ıı 
}
ˆˆ 
return
˜˜ 
false
˜˜ 
;
˜˜ 
}
¯¯ 	
public
˙˙ 
async
˙˙ 
Task
˙˙ 
<
˙˙ 
bool
˙˙ 
>
˙˙ 
RegisterAdmin
˙˙  -
(
˙˙- . 
RegisterAccountDTO
˙˙. @ 
registerAccountDTO
˙˙A S
)
˙˙S T
{
˚˚ 	
var
¸¸ 
user
¸¸ 
=
¸¸ 
await
¸¸ 
_userManager
¸¸ )
.
¸¸) *
FindByNameAsync
¸¸* 9
(
¸¸9 : 
registerAccountDTO
¸¸: L
.
¸¸L M
Username
¸¸M U
)
¸¸U V
;
¸¸V W
if
˛˛ 
(
˛˛ 
user
˛˛ 
!=
˛˛ 
null
˛˛ 
)
˛˛ 
{
ˇˇ 
throw
ÄÄ 
new
ÄÄ $
UserNameTakenException
ÄÄ 0
(
ÄÄ0 1
$str
ÄÄ1 R
)
ÄÄR S
;
ÄÄS T
}
ÅÅ 
User
ÇÇ 
newUser
ÇÇ 
=
ÇÇ 
new
ÇÇ 
Patient
ÇÇ &
(
ÇÇ& '
)
ÇÇ' (
;
ÇÇ( )
newUser
ÉÉ 
.
ÉÉ 
	FirstName
ÉÉ 
=
ÉÉ  
registerAccountDTO
ÉÉ  2
.
ÉÉ2 3
	FirstName
ÉÉ3 <
;
ÉÉ< =
newUser
ÑÑ 
.
ÑÑ 
LastName
ÑÑ 
=
ÑÑ  
registerAccountDTO
ÑÑ 1
.
ÑÑ1 2
LastName
ÑÑ2 :
;
ÑÑ: ;
newUser
ÖÖ 
.
ÖÖ 
UserName
ÖÖ 
=
ÖÖ  
registerAccountDTO
ÖÖ 1
.
ÖÖ1 2
Username
ÖÖ2 :
;
ÖÖ: ;
var
áá 
identityResult
áá 
=
áá  
await
áá! &
_userManager
áá' 3
.
áá3 4
CreateAsync
áá4 ?
(
áá? @
newUser
áá@ G
,
ááG H 
registerAccountDTO
ááI [
.
áá[ \
Password
áá\ d
)
áád e
;
ááe f
var
àà 

roleResult
àà 
=
àà 
await
àà "
_userManager
àà# /
.
àà/ 0
AddToRoleAsync
àà0 >
(
àà> ?
newUser
àà? F
,
ààF G
Role
ààH L
.
ààL M
Admin
ààM R
)
ààR S
;
ààS T
if
ää 
(
ää 
identityResult
ää 
.
ää 
	Succeeded
ää (
&&
ää) +

roleResult
ää, 6
.
ää6 7
	Succeeded
ää7 @
)
ää@ A
{
ãã 
return
åå 
true
åå 
;
åå 
}
çç 
return
éé 
false
éé 
;
éé 
}
èè 	
}
êê 
}ëë ˛
TC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\DoctorService.cs
	namespace

 	
BusinessLogic


 
.

 
Services

  
{ 
public 

class 
DoctorService 
:  
IDoctorService! /
{ 
private 
readonly 
IDoctorRepository *
_doctorRepository+ <
;< =
private 
readonly 
IMapper  
_mapper! (
;( )
public 
DoctorService 
( 
IDoctorRepository .
doctorRepository/ ?
,? @
IMapperA H
mapperI O
)O P
{ 	
_doctorRepository 
= 
doctorRepository  0
;0 1
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
	DoctorDTO& /
>/ 0
>0 1
	ListAsync2 ;
(; <
)< =
{ 	
var 
doctors 
= 
await 
_doctorRepository  1
.1 2
GetAll2 8
(8 9
)9 :
;: ;
var 

doctorsDTO 
= 
_mapper $
.$ %
Map% (
<( )
IEnumerable) 4
<4 5
User5 9
>9 :
,: ;
IEnumerable< G
<G H
	DoctorDTOH Q
>Q R
>R S
(S T
doctorsT [
)[ \
;\ ]
return 

doctorsDTO 
; 
} 	
public 
async 
Task 
< 
	DoctorDTO #
># $
	GetDoctor% .
(. /
Guid/ 3
doctorId4 <
)< =
{ 	
var 
doctor 
= 
await 
_doctorRepository 0
.0 1
GetById1 8
(8 9
doctorId9 A
)A B
;B C
var   
	doctorDTO   
=   
_mapper   #
.  # $
Map  $ '
<  ' (
User  ( ,
,  , -
	DoctorDTO  . 7
>  7 8
(  8 9
doctor  9 ?
)  ? @
;  @ A
return!! 
	doctorDTO!! 
;!! 
}"" 	
}## 
}$$ ◊
ZC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IAppointmentService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{		 
public

 

	interface

 
IAppointmentService

 (
{ 
Task 
< 
Appointment 
> 
CreateAppointment +
(+ , 
CreateAppointmentDTO, @ 
createAppointmentDTOA U
)U V
;V W
Task 
< 
	ResultDTO 
> 
DeleteAppointment )
() *
Guid* .
appointmentID/ <
)< =
;= >
	ResultDTO 
GetMyAppointments #
(# $
Guid$ (
userId) /
)/ 0
;0 1
} 
} ¯
SC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IAuthService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public 

	interface 
IAuthService !
{ 
Task 
< 
UserDTO 
> 
Authenticate "
(" #$
AuthenticationAttemptDTO# ;$
authenticationAttemptDTO< T
)T U
;U V
Task 
< 
bool 
> 
Register 
( 
RegisterAccountDTO .
registerAccountDTO/ A
)A B
;B C
Task 
< 
bool 
> 
RegisterDoctor !
(! "
RegisterAccountDTO" 4
registerAccountDTO5 G
)G H
;H I
Task 
< 
bool 
> 
RegisterAdmin  
(  !
RegisterAccountDTO! 3
registerAccountDTO4 F
)F G
;G H
Task 
< 
UserDTO 
> 
GenerateUserLogin '
(' (
User( ,
user- 1
)1 2
;2 3
Task 
< 
UserDTO 
> 
RefreshAccessToken (
(( )
string) /
refreshToken0 <
)< =
;= >
Task 
< 
bool 
> 
SignOut 
( 
Guid 
userId  &
)& '
;' (
} 
} †
UC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IDoctorService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public		 

	interface		 
IDoctorService		 #
{

 
Task 
< 
IEnumerable 
< 
	DoctorDTO "
>" #
># $
	ListAsync% .
(. /
)/ 0
;0 1
Task 
< 
	DoctorDTO 
> 
	GetDoctor !
(! "
Guid" &
doctorId' /
)/ 0
;0 1
} 
} ⁄
ZC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IMedicalFileService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{		 
public

 

	interface

 
IMedicalFileService

 (
{ 
Task 
< 
MedicalFile 
> $
AddMedicineToMedicalFile 2
(2 3'
AddMedicineToMedicalFileDTO3 N'
addMedicineToMedicalFileDTOO j
)j k
;k l
Task 
< 
MedicalFile 
> %
AddDiagnosisToMedicalFile 3
(3 4(
AddDiagnosisToMedicalFileDTO4 P(
addDiagnosisToMedicalFileDTOQ m
)m n
;n o
Task 
< 
MedicalFile 
> %
GetMedicalFileByPatientId 3
(3 4
Guid4 8
	patientId9 B
)B C
;C D
} 
} ¶
VC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IPatientService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{		 
public

 

	interface

 
IPatientService

 $
{ 
Task 
< 
IEnumerable 
< 

PatientDTO #
># $
>$ %
	ListAsync& /
(/ 0
)0 1
;1 2
Task 
< 

PatientDTO 
> 

GetPatient #
(# $
Guid$ (
	patientId) 2
)2 3
;3 4
} 
} ‚
SC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IRoleService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public		 

	interface		 
IRoleService		 !
{

 
Task 
< 
IdentityResult 
> 

CreateRole '
(' (
string( .
roleName/ 7
)7 8
;8 9
} 
} ‚

XC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\ITwoFactorService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{		 
public

 

	interface

 
ITwoFactorService

 &
{ 
Task 
< #
AuthenticatorDetailsDTO $
>$ %
SetupAuthenticator& 8
(8 9
ClaimsPrincipal9 H
userI M
)M N
;N O
Task 
< 
	ResultDTO 
> 
VerifyAuthenticator +
(+ ,
string, 2
verificationCode3 C
,C D
ClaimsPrincipalE T
userU Y
)Y Z
;Z [
Task 
< 
	ResultDTO 
> 
TwoFactorLogin &
(& '#
TwoFactorAuthAttemptDTO' >#
twoFactorAuthAttemptDTO? V
)V W
;W X
Task 
< 
	ResultDTO 
> 

Disable2FA "
(" #
ClaimsPrincipal# 2
user3 7
)7 8
;8 9
Task 
< 
	ResultDTO 
> !
GenerateRecoveryCodes -
(- .
ClaimsPrincipal. =
user> B
)B C
;C D
} 
} ‘
SC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\IUserService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public		 

	interface		 
IUserService		 !
{

 
Task 
< 
UserDTO 
> 
GetById 
( 
Guid "
userId# )
)) *
;* +
} 
} ﬁ
YC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\MedicalFileService.cs
	namespace		 	
BusinessLogic		
 
.		 
Services		  
{

 
public 

class 
MedicalFileService #
:$ %
IMedicalFileService& 9
{ 
private 
readonly "
IMedicalFileRepository /"
_medicalFileRepository0 F
;F G
public 
MedicalFileService !
(! ""
IMedicalFileRepository" 8!
medicalFileRepository9 N
)N O
{ 	"
_medicalFileRepository "
=# $!
medicalFileRepository% :
;: ;
} 	
public 
async 
Task 
< 
MedicalFile %
>% &%
AddDiagnosisToMedicalFile' @
(@ A(
AddDiagnosisToMedicalFileDTOA ](
addDiagnosisToMedicalFileDTO^ z
)z {
{ 	
	Diagnosis 
	diagnosis 
=  !
new" %
	Diagnosis& /
(/ 0
)0 1
;1 2
	diagnosis 
. 
DiagnosisName #
=$ %(
addDiagnosisToMedicalFileDTO& B
.B C
DiagnosisNameC P
;P Q
	diagnosis 
.  
DiagnosisInformation *
=+ ,(
addDiagnosisToMedicalFileDTO- I
.I J 
DiagnosisInformationJ ^
;^ _
var 
result 
= 
await "
_medicalFileRepository 5
.5 6%
addDiagnosisToMedicalFile6 O
(O P(
addDiagnosisToMedicalFileDTOP l
.l m
MedicalFileIDm z
,z {
	diagnosis	| Ö
)
Ö Ü
;
Ü á
return 
result 
; 
} 	
public 
async 
Task 
< 
MedicalFile %
>% &$
AddMedicineToMedicalFile' ?
(? @'
AddMedicineToMedicalFileDTO@ ['
addMedicineToMedicalFileDTO\ w
)w x
{ 	
Medicine 
medicine 
= 
new  #
Medicine$ ,
(, -
)- .
;. /
medicine   
.   
MedicineName   !
=  " #'
addMedicineToMedicalFileDTO  $ ?
.  ? @
MedicineName  @ L
;  L M
medicine!! 
.!! 
Dosage!! 
=!! '
addMedicineToMedicalFileDTO!! 9
.!!9 :
MedicineDosage!!: H
;!!H I
var"" 
result"" 
="" 
await"" "
_medicalFileRepository"" 5
.""5 6$
addMedicineToMedicalFile""6 N
(""N O'
addMedicineToMedicalFileDTO""O j
.""j k
MedicalFileID""k x
,""x y
medicine	""z Ç
)
""Ç É
;
""É Ñ
return$$ 
result$$ 
;$$ 
}'' 	
public)) 
async)) 
Task)) 
<)) 
MedicalFile)) %
>))% &%
GetMedicalFileByPatientId))' @
())@ A
Guid))A E
	patientId))F O
)))O P
{** 	
var++ 
medicalFile++ 
=++ 
await++ #"
_medicalFileRepository++$ :
.++: ;%
getMedicalFileByPatientId++; T
(++T U
	patientId++U ^
)++^ _
;++_ `
return,, 
medicalFile,, 
;,, 
}-- 	
}.. 
}// ô
UC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\PatientService.cs
	namespace

 	
BusinessLogic


 
.

 
Services

  
{ 
public 

class 
PatientService 
:  !
IPatientService" 1
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IPatientRepository +
_patientRepository, >
;> ?
public 
PatientService 
( 
IPatientRepository 0
patientRepository1 B
,B C
IMapperD K
mapperL R
)R S
{ 	
_patientRepository 
=  
patientRepository! 2
;2 3
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 

PatientDTO $
>$ %

GetPatient& 0
(0 1
Guid1 5
	patientId6 ?
)? @
{ 	
var 
patient 
= 
await 
_patientRepository  2
.2 3
GetById3 :
(: ;
	patientId; D
)D E
;E F
var 

patientDTO 
= 
_mapper $
.$ %
Map% (
<( )
User) -
,- .

PatientDTO/ 9
>9 :
(: ;
patient; B
)B C
;C D
return 

patientDTO 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

PatientDTO& 0
>0 1
>1 2
	ListAsync3 <
(< =
)= >
{   	
var!! 
patients!! 
=!! 
await!!  
_patientRepository!!! 3
.!!3 4
GetAll!!4 :
(!!: ;
)!!; <
;!!< =
var"" 
patientsDTO"" 
="" 
_mapper"" %
.""% &
Map""& )
<"") *
IEnumerable""* 5
<""5 6
User""6 :
>"": ;
,""; <
IEnumerable""= H
<""H I

PatientDTO""I S
>""S T
>""T U
(""U V
patients""V ^
)""^ _
;""_ `
return## 
patientsDTO## 
;## 
}$$ 	
}%% 
}&& Ç

RC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\RoleService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{		 
public

 

class

 
RoleService

 
:

 
IRoleService

 +
{ 
private 
readonly 
RoleManager $
<$ %
ApplicationRole% 4
>4 5
_roleManager6 B
;B C
public 
RoleService 
( 
RoleManager &
<& '
ApplicationRole' 6
>6 7
roleManager8 C
)C D
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
async 
Task 
< 
IdentityResult (
>( )

CreateRole* 4
(4 5
string5 ;
roleName< D
)D E
{ 	
return 
await 
_roleManager %
.% &
CreateAsync& 1
(1 2
new2 5
ApplicationRole6 E
(E F
roleNameF N
)N O
)O P
;P Q
} 	
} 
} üƒ
WC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\TwoFactorService.cs
	namespace 	
BusinessLogic
 
. 
Services  
{ 
public 

class 
TwoFactorService !
:" #
ITwoFactorService$ 5
{ 
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
SignInManager &
<& '
User' +
>+ ,
_signInManager- ;
;; <
private 
readonly '
IUserClaimsPrincipalFactory 4
<4 5
User5 9
>9 :
_principalFactory; L
;L M
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
readonly 
IAuthService %
_authService& 2
;2 3
public 
TwoFactorService 
(  
IOptions  (
<( )
AppSettings) 4
>4 5
appSettings6 A
,A B
IMapper 
mapper 
, 
UserManager 
< 
User 
> 
userManager )
,) *
SignInManager 
< 
User 
> 
signInManager  -
,- .'
IUserClaimsPrincipalFactory '
<' (
User( ,
>, -
principalFactory. >
,> ?

UrlEncoder   

urlEncoder   !
,  ! "
IAuthService!! 
authService!! $
)"" 
{## 	
_appSettings$$ 
=$$ 
appSettings$$ &
.$$& '
Value$$' ,
;$$, -
_mapper%% 
=%% 
mapper%% 
;%% 
_signInManager&& 
=&& 
signInManager&& *
;&&* +
_userManager'' 
='' 
userManager'' &
;''& '
_principalFactory(( 
=(( 
principalFactory((  0
;((0 1
_urlEncoder)) 
=)) 

urlEncoder)) $
;))$ %
_authService** 
=** 
authService** &
;**& '
}++ 	
public-- 
async-- 
Task-- 
<-- #
AuthenticatorDetailsDTO-- 1
>--1 2
SetupAuthenticator--3 E
(--E F
ClaimsPrincipal--F U
user--V Z
)--Z [
{.. 	
var// 

userResult// 
=// 
await// "
_userManager//# /
./// 0
GetUserAsync//0 <
(//< =
user//= A
)//A B
;//B C
var00 #
authenticatorDetailsDTO00 '
=00( )
await00* /(
GetAuthenticatorDetailsAsync000 L
(00L M

userResult00M W
)00W X
;00X Y
return11 #
authenticatorDetailsDTO11 *
;11* +
}22 	
private44 
async44 
Task44 
<44 #
AuthenticatorDetailsDTO44 2
>442 3(
GetAuthenticatorDetailsAsync444 P
(44P Q
User44Q U
user44V Z
)44Z [
{55 	
var77 
unformattedKey77 
=77  
await77! &
_userManager77' 3
.773 4$
GetAuthenticatorKeyAsync774 L
(77L M
user77M Q
)77Q R
;77R S
if88 
(88 
string88 
.88 
IsNullOrEmpty88 $
(88$ %
unformattedKey88% 3
)883 4
)884 5
{99 
await:: 
_userManager:: "
.::" #&
ResetAuthenticatorKeyAsync::# =
(::= >
user::> B
)::B C
;::C D
unformattedKey;; 
=;;  
await;;! &
_userManager;;' 3
.;;3 4$
GetAuthenticatorKeyAsync;;4 L
(;;L M
user;;M Q
);;Q R
;;;R S
}<< 
var>> 
username>> 
=>> 
await>>  
_userManager>>! -
.>>- .
GetUserNameAsync>>. >
(>>> ?
user>>? C
)>>C D
;>>D E
return@@ 
new@@ #
AuthenticatorDetailsDTO@@ .
{AA 
	SharedKeyBB 
=BB 
	FormatKeyBB %
(BB% &
unformattedKeyBB& 4
)BB4 5
,BB5 6
AuthenticatorUriCC  
=CC! "
GenerateQrCodeUriCC# 4
(CC4 5
usernameCC5 =
,CC= >
unformattedKeyCC? M
)CCM N
}DD 
;DD 
}EE 	
privateGG 
stringGG 
	FormatKeyGG  
(GG  !
stringGG! '
unformattedKeyGG( 6
)GG6 7
{HH 	
varII 
resultII 
=II 
newII 
StringBuilderII *
(II* +
)II+ ,
;II, -
intJJ 
currentPositionJJ 
=JJ  !
$numJJ" #
;JJ# $
whileKK 
(KK 
currentPositionKK "
+KK# $
$numKK% &
<KK' (
unformattedKeyKK) 7
.KK7 8
LengthKK8 >
)KK> ?
{LL 
resultMM 
.MM 
AppendMM 
(MM 
unformattedKeyMM ,
.MM, -
	SubstringMM- 6
(MM6 7
currentPositionMM7 F
,MMF G
$numMMH I
)MMI J
)MMJ K
.MMK L
AppendMML R
(MMR S
$strMMS V
)MMV W
;MMW X
currentPositionNN 
+=NN  "
$numNN# $
;NN$ %
}OO 
ifPP 
(PP 
currentPositionPP 
<PP  !
unformattedKeyPP" 0
.PP0 1
LengthPP1 7
)PP7 8
{QQ 
resultRR 
.RR 
AppendRR 
(RR 
unformattedKeyRR ,
.RR, -
	SubstringRR- 6
(RR6 7
currentPositionRR7 F
)RRF G
)RRG H
;RRH I
}SS 
returnUU 
resultUU 
.UU 
ToStringUU "
(UU" #
)UU# $
.UU$ %
ToLowerInvariantUU% 5
(UU5 6
)UU6 7
;UU7 8
}VV 	
privateYY 
stringYY 
GenerateQrCodeUriYY (
(YY( )
stringYY) /
usernameYY0 8
,YY8 9
stringYY: @
unformattedKeyYYA O
)YYO P
{ZZ 	
const[[ 
string[[ "
AuthenticatorUriFormat[[ /
=[[0 1
$str[[2 i
;[[i j
return]] 
string]] 
.]] 
Format]]  
(]]  !"
AuthenticatorUriFormat^^ &
,^^& '
_urlEncoder__ 
.__ 
Encode__ "
(__" #
$str__# -
)__- .
,__. /
_urlEncoder`` 
.`` 
Encode`` "
(``" #
username``# +
)``+ ,
,``, -
unformattedKeyaa 
)aa 
;aa  
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
	ResultDTOdd #
>dd# $
VerifyAuthenticatordd% 8
(dd8 9
stringdd9 ?
verificationCodedd@ P
,ddP Q
ClaimsPrincipalddR a
userddb f
)ddf g
{ee 	
varff %
formattedVerificationCodeff )
=ff* +
verificationCodeff, <
.ff< =
Replaceff= D
(ffD E
$strffE H
,ffH I
stringffJ P
.ffP Q
EmptyffQ V
)ffV W
.ffW X
ReplaceffX _
(ff_ `
$strff` c
,ffc d
stringffe k
.ffk l
Emptyffl q
)ffq r
;ffr s
vargg 

userResultgg 
=gg 
awaitgg "
_userManagergg# /
.gg/ 0
GetUserAsyncgg0 <
(gg< =
usergg= A
)ggA B
;ggB C
varhh 
isTokenValidhh 
=hh 
awaithh $
_userManagerhh% 1
.hh1 2%
VerifyTwoFactorTokenAsynchh2 K
(hhK L

userResulthhL V
,hhV W
_userManagerii 
.ii 
Optionsii $
.ii$ %
Tokensii% +
.ii+ ,&
AuthenticatorTokenProviderii, F
,iiF G%
formattedVerificationCodejj )
)jj) *
;jj* +
ifll 
(ll 
!ll 
isTokenValidll 
)ll 
{mm 
returnnn 
newnn 
	ResultDTOnn $
{oo 
Statuspp 
=pp 
Statuspp #
.pp# $
Errorpp$ )
,pp) *
Messageqq 
=qq 
$strqq >
,qq> ?
}rr 
;rr 
}tt 
awaituu 
_userManageruu 
.uu $
SetTwoFactorEnabledAsyncuu 7
(uu7 8

userResultuu8 B
,uuB C
trueuuD H
)uuH I
;uuI J
varvv 
userDtovv 
=vv 
_mappervv !
.vv! "
Mapvv" %
<vv% &
Uservv& *
,vv* +
UserDTOvv, 3
>vv3 4
(vv4 5

userResultvv5 ?
)vv? @
;vv@ A
userDtoww 
.ww 
TwoFactorEnabledww $
=ww% &
awaitww' ,
_userManagerww- 9
.ww9 :$
GetTwoFactorEnabledAsyncww: R
(wwR S

userResultwwS ]
)ww] ^
;ww^ _
userDtoxx 
.xx 
HasAuthenticatorxx $
=xx% &
awaitxx' ,
_userManagerxx- 9
.xx9 :$
GetAuthenticatorKeyAsyncxx: R
(xxR S

userResultxxS ]
)xx] ^
!=xx_ a
nullxxb f
;xxf g
userDtoyy 
.yy 
Rolesyy 
=yy 
awaityy !
_userManageryy" .
.yy. /
GetRolesAsyncyy/ <
(yy< =

userResultyy= G
)yyG H
;yyH I
if{{ 
({{ 
await{{ 
_userManager{{ "
.{{" ##
CountRecoveryCodesAsync{{# :
({{: ;

userResult{{; E
){{E F
!={{G I
$num{{J K
){{K L
{|| 
var}} 
result}} 
=}} 
new}}  
	ResultDTO}}! *
{~~ 
Status 
= 
Status #
.# $
Success$ +
,+ ,
Message
ÄÄ 
=
ÄÄ 
$str
ÄÄ H
,
ÄÄH I
Data
ÅÅ 
=
ÅÅ 
userDto
ÅÅ "
,
ÅÅ" #
}
ÇÇ 
;
ÇÇ 
return
ÑÑ 
result
ÑÑ 
;
ÑÑ 
}
ÖÖ 
else
ÜÜ 
{
áá 
var
àà 
result
àà 
=
àà 
new
àà  
	ResultDTO
àà! *
{
ââ 
Status
ää 
=
ää 
Status
ää #
.
ää# $
Success
ää$ +
,
ää+ ,
Message
ãã 
=
ãã 
$str
ãã H
,
ããH I
}
åå 
;
åå 
var
éé 
recoveryCodes
éé !
=
éé" #
await
éé$ )
_userManager
éé* 6
.
éé6 74
&GenerateNewTwoFactorRecoveryCodesAsync
éé7 ]
(
éé] ^

userResult
éé^ h
,
ééh i
$num
ééj l
)
éél m
;
éém n
result
êê 
.
êê 
Data
êê 
=
êê 
new
êê !
{
êê" #
recoveryCodes
êê$ 1
,
êê1 2
userDto
êê3 :
}
êê; <
;
êê< =
return
ëë 
result
ëë 
;
ëë 
}
íí 
}
ïï 	
public
óó 
async
óó 
Task
óó 
<
óó 
	ResultDTO
óó #
>
óó# $
TwoFactorLogin
óó% 3
(
óó3 4%
TwoFactorAuthAttemptDTO
óó4 K%
twoFactorAuthAttemptDTO
óóL c
)
óóc d
{
òò 	
var
ôô 
user
ôô 
=
ôô 
await
ôô 
_userManager
ôô )
.
ôô) *
FindByNameAsync
ôô* 9
(
ôô9 :%
twoFactorAuthAttemptDTO
ôô: Q
.
ôôQ R
Username
ôôR Z
)
ôôZ [
;
ôô[ \
if
õõ 
(
õõ 
user
õõ 
!=
õõ 
null
õõ 
)
õõ 
{
úú 
var
ùù 
loginResult
ùù 
=
ùù  !
await
ùù" '
_signInManager
ùù( 6
.
ùù6 7&
CheckPasswordSignInAsync
ùù7 O
(
ùùO P
user
ùùP T
,
ùùT U%
twoFactorAuthAttemptDTO
ùùV m
.
ùùm n
Password
ùùn v
,
ùùv w
false
ùùx }
)
ùù} ~
;
ùù~ 
if
ûû 
(
ûû 
!
ûû 
loginResult
ûû  
.
ûû  !
	Succeeded
ûû! *
)
ûû* +
{
üü 
throw
†† 
new
†† 2
$UsernameOrPasswordIncorrectException
†† B
(
††B C
)
††C D
;
††D E
}
°° 
if
££ 
(
££ %
twoFactorAuthAttemptDTO
££ +
.
££+ ,

IsRecovery
££, 6
)
££6 7
{
§§ 
var
•• 
redeemed
••  
=
••! "
await
••# (%
TwoFactorRecoverySignIn
••) @
(
••@ A
user
••A E
,
••E F%
twoFactorAuthAttemptDTO
••G ^
.
••^ _
RecoveryCode
••_ k
)
••k l
;
••l m
if
¶¶ 
(
¶¶ 
redeemed
¶¶  
)
¶¶  !
{
ßß 
	ResultDTO
®® !
result
®®" (
=
®®) *
new
®®+ .
	ResultDTO
®®/ 8
(
®®8 9
)
®®9 :
;
®®: ;
result
©© 
.
©© 
Status
©© %
=
©©& '
Status
©©( .
.
©©. /
Success
©©/ 6
;
©©6 7
result
™™ 
.
™™ 
Message
™™ &
=
™™' (
$str
™™) O
;
™™O P
result
´´ 
.
´´ 
Data
´´ #
=
´´$ %
await
´´& +
_authService
´´, 8
.
´´8 9
GenerateUserLogin
´´9 J
(
´´J K
user
´´K O
)
´´O P
;
´´P Q
return
¨¨ 
result
¨¨ %
;
¨¨% &
}
≠≠ 
else
ÆÆ 
{
ØØ 
Console
∞∞ 
.
∞∞  
	WriteLine
∞∞  )
(
∞∞) *
$str
∞∞* 1
)
∞∞1 2
;
∞∞2 3
	ResultDTO
±± !
result
±±" (
=
±±) *
new
±±+ .
	ResultDTO
±±/ 8
(
±±8 9
)
±±9 :
;
±±: ;
result
≤≤ 
.
≤≤ 
Status
≤≤ %
=
≤≤& '
Status
≤≤( .
.
≤≤. /
Error
≤≤/ 4
;
≤≤4 5
result
≥≥ 
.
≥≥ 
Message
≥≥ &
=
≥≥' (
$str
≥≥) c
;
≥≥c d
return
¥¥ 
result
¥¥ %
;
¥¥% &
}
µµ 
}
∑∑ 
if
ππ 
(
ππ 
!
ππ %
twoFactorAuthAttemptDTO
ππ ,
.
ππ, -

IsRecovery
ππ- 7
)
ππ7 8
{
∫∫ 
var
ªª 
	validated
ªª !
=
ªª" #
await
ªª$ )*
TwoFactorAuthenticatorSignIn
ªª* F
(
ªªF G
user
ªªG K
,
ªªK L%
twoFactorAuthAttemptDTO
ªªM d
.
ªªd e
TwoFactorCode
ªªe r
)
ªªr s
;
ªªs t
if
ºº 
(
ºº 
	validated
ºº !
)
ºº! "
{
ΩΩ 
	ResultDTO
ææ !
result
ææ" (
=
ææ) *
new
ææ+ .
	ResultDTO
ææ/ 8
(
ææ8 9
)
ææ9 :
;
ææ: ;
result
øø 
.
øø 
Status
øø %
=
øø& '
Status
øø( .
.
øø. /
Success
øø/ 6
;
øø6 7
result
¿¿ 
.
¿¿ 
Message
¿¿ &
=
¿¿' (
$str
¿¿) K
;
¿¿K L
result
¡¡ 
.
¡¡ 
Data
¡¡ #
=
¡¡$ %
await
¡¡& +
_authService
¡¡, 8
.
¡¡8 9
GenerateUserLogin
¡¡9 J
(
¡¡J K
user
¡¡K O
)
¡¡O P
;
¡¡P Q
return
¬¬ 
result
¬¬ %
;
¬¬% &
}
√√ 
else
ƒƒ 
{
≈≈ 
	ResultDTO
∆∆ !
result
∆∆" (
=
∆∆) *
new
∆∆+ .
	ResultDTO
∆∆/ 8
(
∆∆8 9
)
∆∆9 :
;
∆∆: ;
result
«« 
.
«« 
Status
«« %
=
««& '
Status
««( .
.
««. /
Error
««/ 4
;
««4 5
result
»» 
.
»» 
Message
»» &
=
»»' (
$str
»») K
;
»»K L
return
…… 
result
…… %
;
……% &
}
   
}
ÀÀ 
}
ÕÕ 
Console
ŒŒ 
.
ŒŒ 
	WriteLine
ŒŒ 
(
ŒŒ 
$str
ŒŒ %
)
ŒŒ% &
;
ŒŒ& '
	ResultDTO
œœ 
	resultDTO
œœ 
=
œœ  !
new
œœ" %
	ResultDTO
œœ& /
(
œœ/ 0
)
œœ0 1
;
œœ1 2
	resultDTO
–– 
.
–– 
Status
–– 
=
–– 
Status
–– %
.
––% &
Error
––& +
;
––+ ,
	resultDTO
—— 
.
—— 
Message
—— 
=
—— 
$str
——  7
;
——7 8
return
““ 
	resultDTO
““ 
;
““ 
}
”” 	
private
’’ 
async
’’ 
Task
’’ 
<
’’ 
bool
’’ 
>
’’  *
TwoFactorAuthenticatorSignIn
’’! =
(
’’= >
User
’’> B
user
’’C G
,
’’G H
string
’’I O
authenticatorCode
’’P a
)
’’a b
{
÷÷ 	
var
◊◊ '
formattedVerificationCode
◊◊ )
=
◊◊* +
authenticatorCode
◊◊, =
.
◊◊= >
Replace
◊◊> E
(
◊◊E F
$str
◊◊F I
,
◊◊I J
string
◊◊K Q
.
◊◊Q R
Empty
◊◊R W
)
◊◊W X
.
◊◊X Y
Replace
◊◊Y `
(
◊◊` a
$str
◊◊a d
,
◊◊d e
string
◊◊f l
.
◊◊l m
Empty
◊◊m r
)
◊◊r s
;
◊◊s t
var
ÿÿ 
isTokenValid
ÿÿ 
=
ÿÿ 
await
ÿÿ $
_userManager
ÿÿ% 1
.
ÿÿ1 2'
VerifyTwoFactorTokenAsync
ÿÿ2 K
(
ÿÿK L
user
ÿÿL P
,
ÿÿP Q
_userManager
ŸŸ 
.
ŸŸ 
Options
ŸŸ  
.
ŸŸ  !
Tokens
ŸŸ! '
.
ŸŸ' ((
AuthenticatorTokenProvider
ŸŸ( B
,
ŸŸB C'
formattedVerificationCode
⁄⁄ %
)
⁄⁄% &
;
⁄⁄& '
return
€€ 
isTokenValid
€€ 
;
€€  
}
›› 	
private
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
bool
ﬂﬂ 
>
ﬂﬂ  %
TwoFactorRecoverySignIn
ﬂﬂ! 8
(
ﬂﬂ8 9
User
ﬂﬂ9 =
user
ﬂﬂ> B
,
ﬂﬂB C
string
ﬂﬂD J
recoveryCode
ﬂﬂK W
)
ﬂﬂW X
{
‡‡ 	
var
·· #
formattedRecoveryCode
·· %
=
··& '
recoveryCode
··( 4
.
··4 5
Replace
··5 <
(
··< =
$str
··= @
,
··@ A
string
··B H
.
··H I
Empty
··I N
)
··N O
.
··O P
Replace
··P W
(
··W X
$str
··X [
,
··[ \
string
··] c
.
··c d
Empty
··d i
)
··i j
;
··j k
var
‚‚ 
redeemed
‚‚ 
=
‚‚ 
await
‚‚  
_userManager
‚‚! -
.
‚‚- ..
 RedeemTwoFactorRecoveryCodeAsync
‚‚. N
(
‚‚N O
user
‚‚O S
,
‚‚S T#
formattedRecoveryCode
‚‚U j
)
‚‚j k
;
‚‚k l
return
„„ 
redeemed
„„ 
.
„„ 
	Succeeded
„„ %
;
„„% &
}
ÂÂ 	
public
ÁÁ 
async
ÁÁ 
Task
ÁÁ 
<
ÁÁ 
	ResultDTO
ÁÁ #
>
ÁÁ# $

Disable2FA
ÁÁ% /
(
ÁÁ/ 0
ClaimsPrincipal
ÁÁ0 ?
user
ÁÁ@ D
)
ÁÁD E
{
ËË 	
var
ÈÈ 

userResult
ÈÈ 
=
ÈÈ 
await
ÈÈ "
_userManager
ÈÈ# /
.
ÈÈ/ 0
GetUserAsync
ÈÈ0 <
(
ÈÈ< =
user
ÈÈ= A
)
ÈÈA B
;
ÈÈB C
if
ÎÎ 
(
ÎÎ 
!
ÎÎ 
await
ÎÎ 
_userManager
ÎÎ #
.
ÎÎ# $&
GetTwoFactorEnabledAsync
ÎÎ$ <
(
ÎÎ< =

userResult
ÎÎ= G
)
ÎÎG H
)
ÎÎH I
{
ÏÏ 
return
ÌÌ 
new
ÌÌ 
	ResultDTO
ÌÌ $
{
ÓÓ 
Status
ÔÔ 
=
ÔÔ 
Status
ÔÔ #
.
ÔÔ# $
Error
ÔÔ$ )
,
ÔÔ) *
Message
 
=
 
$str
 P
}
ÒÒ 
;
ÒÒ 
}
ÚÚ 
var
ÙÙ 
result
ÙÙ 
=
ÙÙ 
await
ÙÙ 
_userManager
ÙÙ +
.
ÙÙ+ ,&
SetTwoFactorEnabledAsync
ÙÙ, D
(
ÙÙD E

userResult
ÙÙE O
,
ÙÙO P
false
ÙÙQ V
)
ÙÙV W
;
ÙÙW X
return
ˆˆ 
new
ˆˆ 
	ResultDTO
ˆˆ  
{
˜˜ 
Status
¯¯ 
=
¯¯ 
result
¯¯ 
.
¯¯  
	Succeeded
¯¯  )
?
¯¯* +
Status
¯¯, 2
.
¯¯2 3
Success
¯¯3 :
:
¯¯; <
Status
¯¯= C
.
¯¯C D
Error
¯¯D I
,
¯¯I J
Message
˘˘ 
=
˘˘ 
result
˘˘  
.
˘˘  !
	Succeeded
˘˘! *
?
˘˘+ ,
$str
˘˘- Q
:
˘˘R S
$"
˘˘T V$
Failed to disable 2FA 
˘˘V l
{
˘˘l m
result
˘˘m s
.
˘˘s t
Errors
˘˘t z
.
˘˘z {
FirstOrDefault˘˘{ â
(˘˘â ä
)˘˘ä ã
?˘˘ã å
.˘˘å ç
Description˘˘ç ò
}˘˘ò ô
"˘˘ô ö
,˘˘ö õ
Data
˙˙ 
=
˙˙ 
result
˙˙ 
.
˙˙ 
	Succeeded
˙˙ '
?
˙˙( )
await
˙˙* /
_authService
˙˙0 <
.
˙˙< =
GenerateUserLogin
˙˙= N
(
˙˙N O

userResult
˙˙O Y
)
˙˙Y Z
:
˙˙[ \
null
˙˙] a
,
˙˙a b
}
˚˚ 
;
˚˚ 
}
¸¸ 	
public
˛˛ 
async
˛˛ 
Task
˛˛ 
<
˛˛ 
	ResultDTO
˛˛ #
>
˛˛# $#
GenerateRecoveryCodes
˛˛% :
(
˛˛: ;
ClaimsPrincipal
˛˛; J
user
˛˛K O
)
˛˛O P
{
ˇˇ 	
var
ÄÄ 

userResult
ÄÄ 
=
ÄÄ 
await
ÄÄ "
_userManager
ÄÄ# /
.
ÄÄ/ 0
GetUserAsync
ÄÄ0 <
(
ÄÄ< =
user
ÄÄ= A
)
ÄÄA B
;
ÄÄB C
var
ÇÇ 
twoFactorEnabled
ÇÇ  
=
ÇÇ! "
await
ÇÇ# (
_userManager
ÇÇ) 5
.
ÇÇ5 6&
GetTwoFactorEnabledAsync
ÇÇ6 N
(
ÇÇN O

userResult
ÇÇO Y
)
ÇÇY Z
;
ÇÇZ [
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
twoFactorEnabled
ÑÑ !
)
ÑÑ! "
{
ÖÖ 
return
ÜÜ 
new
ÜÜ 
	ResultDTO
ÜÜ $
{
áá 
Status
àà 
=
àà 
Status
àà #
.
àà# $
Error
àà$ )
,
àà) *
Message
ââ 
=
ââ 
$str
ââ j
}
ää 
;
ää 
}
ãã 
var
çç 
recoveryCodes
çç 
=
çç 
await
çç  %
_userManager
çç& 2
.
çç2 34
&GenerateNewTwoFactorRecoveryCodesAsync
çç3 Y
(
ççY Z

userResult
ççZ d
,
ççd e
$num
ççf h
)
ççh i
;
ççi j
return
èè 
new
èè 
	ResultDTO
èè  
{
êê 
Status
ëë 
=
ëë 
Status
ëë 
.
ëë  
Success
ëë  '
,
ëë' (
Message
íí 
=
íí 
$str
íí 9
,
íí9 :
Data
ìì 
=
ìì 
recoveryCodes
ìì $
}
îî 
;
îî 
}
ïï 	
}
ññ 
}óó Í
RC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Services\UserService.cs
	namespace

 	
BusinessLogic


 
.

 
Services

  
{ 
public 

class 
UserService 
: 
IUserService +
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUserRepository (
_userRepository) 8
;8 9
public 
UserService 
( 
IUserRepository *
userRepository+ 9
,9 :
IMapper; B
mapperC I
)I J
{ 	
_userRepository 
= 
userRepository ,
;, -
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
UserDTO !
>! "
GetById# *
(* +
Guid+ /
userId0 6
)6 7
{ 	
var 
user 
= 
await 
_userRepository ,
., -
GetById- 4
(4 5
userId5 ;
); <
;< =
var 
userDTO 
= 
_mapper !
.! "
Map" %
<% &
User& *
,* +
UserDTO, 3
>3 4
(4 5
user5 9
)9 :
;: ;
return 
userDTO 
; 
} 	
public 
async 
Task 
< 
UserDTO !
>! "
GetByUserName# 0
(0 1
string1 7
username8 @
)@ A
{ 	
var   
user   
=   
await   
_userRepository   ,
.  , -
GetByUsername  - :
(  : ;
username  ; C
)  C D
;  D E
var!! 
userDTO!! 
=!! 
_mapper!! !
.!!! "
Map!!" %
<!!% &
User!!& *
,!!* +
UserDTO!!, 3
>!!3 4
(!!4 5
user!!5 9
)!!9 :
;!!: ;
return"" 
userDTO"" 
;"" 
}## 	
}$$ 
}%% ‚+
UC:\Users\Danny\source\repos\DocPatientAPINew\BusinessLogic\Startup\DependencySetup.cs
	namespace 	
BusinessLogic
 
. 
Startup 
{ 
public 

class 
DependencySetup  
{ 
public 
static 
void 
ConfigureServices ,
(, -
IServiceCollection- ?
services@ H
,H I
IConfigurationJ X
configurationY f
)f g
{ 	
IdentityBuilder 
builder #
=$ %
services& .
.. /
AddIdentityCore/ >
<> ?
User? C
>C D
(D E
optE H
=>I K
{ 
opt 
. 
Password  
.  !
RequireDigit! -
=. /
true0 4
;4 5
opt 
. 
Password  
.  !
RequiredLength! /
=0 1
$num2 3
;3 4
opt 
. 
Password  
.  !
RequiredUniqueChars! 4
=5 6
$num7 8
;8 9
opt 
. 
Password  
.  !"
RequireNonAlphanumeric! 7
=8 9
false: ?
;? @
opt 
. 
Password  
.  !
RequireUppercase! 1
=2 3
true4 8
;8 9
opt 
. 
Password  
.  !
RequireLowercase! 1
=2 3
true4 8
;8 9
} 
) 
; 
builder   
=   
new   
IdentityBuilder   )
(  ) *
builder  * 1
.  1 2
UserType  2 :
,  : ;
typeof  < B
(  B C
ApplicationRole  C R
)  R S
,  S T
builder  U \
.  \ ]
Services  ] e
)  e f
;  f g
builder!! 
.!! $
AddDefaultTokenProviders!! ,
(!!, -
)!!- .
;!!. /
builder"" 
."" $
AddEntityFrameworkStores"" ,
<"", -
AppDbContext""- 9
>""9 :
("": ;
)""; <
;""< =
builder## 
.## 
AddUserManager## "
<##" #
AppUserManager### 1
>##1 2
(##2 3
)##3 4
;##4 5
services%% 
.%% 
	AddScoped%% 
<%% '
IUserClaimsPrincipalFactory%% :
<%%: ;
User%%; ?
>%%? @
,%%@ A%
AppClaimsPrincipalFactory%%B [
>%%[ \
(%%\ ]
)%%] ^
;%%^ _
services&& 
.&& 
	AddScoped&& 
<&& 
IPatientService&& .
,&&. /
PatientService&&0 >
>&&> ?
(&&? @
)&&@ A
;&&A B
services'' 
.'' 
	AddScoped'' 
<'' 
IMedicalFileService'' 2
,''2 3
MedicalFileService''4 F
>''F G
(''G H
)''H I
;''I J
services(( 
.(( 
	AddScoped(( 
<(( 
IAuthService(( +
,((+ ,
AuthService((- 8
>((8 9
(((9 :
)((: ;
;((; <
services)) 
.)) 
	AddScoped)) 
<)) 
ITwoFactorService)) 0
,))0 1
TwoFactorService))2 B
>))B C
())C D
)))D E
;))E F
services** 
.** 
	AddScoped** 
<** 
IRoleService** +
,**+ ,
RoleService**- 8
>**8 9
(**9 :
)**: ;
;**; <
services++ 
.++ 
	AddScoped++ 
<++ 
IAppointmentService++ 2
,++2 3
AppointmentService++4 F
>++F G
(++G H
)++H I
;++I J
services,, 
.,, 
	AddScoped,, 
<,, 
IDoctorService,, -
,,,- .
DoctorService,,/ <
>,,< =
(,,= >
),,> ?
;,,? @
builder// 
.// 
AddSignInManager// $
<//$ %
SignInManager//% 2
<//2 3
User//3 7
>//7 8
>//8 9
(//9 :
)//: ;
;//; <
builder00 
.00 
AddRoleManager00 "
<00" #
RoleManager00# .
<00. /
ApplicationRole00/ >
>00> ?
>00? @
(00@ A
)00A B
;00B C
builder11 
.11 
AddRoleValidator11 $
<11$ %
RoleValidator11% 2
<112 3
ApplicationRole113 B
>11B C
>11C D
(11D E
)11E F
;11F G
services44 
.44 
AddAutoMapper44 "
(44" #
typeof44# )
(44) *
DependencySetup44* 9
)449 :
)44: ;
;44; <
services55 
.55 
	Configure55 
<55 
AppSettings55 *
>55* +
(55+ ,
configuration55, 9
.559 :

GetSection55: D
(55D E
$str55E R
)55R S
)55S T
;55T U
DependencySetupDAL66 
.66 
ConfigureServices66 0
(660 1
services661 9
,669 :
configuration66; H
)66H I
;66I J
}77 	
}99 
}:: 