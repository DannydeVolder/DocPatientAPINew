// Skipping function SetupAuthenticator(none), it contains poisonous unsupported syntaxes

// Skipping function GetAuthenticatorDetailsAsync(none), it contains poisonous unsupported syntaxes

func @_BusinessLogic.Services.TwoFactorService.FormatKey$string$(none) -> none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :70 :8) {
^entry (%_unformattedKey : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :70 :33)
cbde.store %_unformattedKey, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :70 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :72 :25) // new StringBuilder() (ObjectCreationExpression)
%3 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :73 :34)
%4 = cbde.alloca i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :73 :16) // currentPosition
cbde.store %3, %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :73 :16)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :19)
%6 = constant 4 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :37)
%7 = addi %5, %6 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :19)
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :41) // Not a variable of known type: unformattedKey
%9 = cbde.unknown : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :41) // unformattedKey.Length (SimpleMemberAccessExpression)
%10 = cmpi "slt", %7, %9 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :19)
cond_br %10, ^2, ^3 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :74 :19)

^2: // SimpleBlock
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :30) // Not a variable of known type: unformattedKey
%13 = cbde.load %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :55)
%14 = constant 4 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :72)
%15 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :30) // unformattedKey.Substring(currentPosition, 4) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :16) // result.Append(unformattedKey.Substring(currentPosition, 4)) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :83) // " " (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :76 :16) // result.Append(unformattedKey.Substring(currentPosition, 4)).Append(" ") (InvocationExpression)
%19 = cbde.load %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :77 :16)
%20 = constant 4 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :77 :35)
%21 = addi %19, %20 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :77 :16)
cbde.store %21, %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :77 :16)
br ^1

^3: // BinaryBranchBlock
%22 = cbde.load %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :79 :16)
%23 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :79 :34) // Not a variable of known type: unformattedKey
%24 = cbde.unknown : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :79 :34) // unformattedKey.Length (SimpleMemberAccessExpression)
%25 = cmpi "slt", %22, %24 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :79 :16)
cond_br %25, ^4, ^5 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :79 :16)

^4: // SimpleBlock
%26 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :81 :16) // Not a variable of known type: result
%27 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :81 :30) // Not a variable of known type: unformattedKey
%28 = cbde.load %4 : memref<i32> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :81 :55)
%29 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :81 :30) // unformattedKey.Substring(currentPosition) (InvocationExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :81 :16) // result.Append(unformattedKey.Substring(currentPosition)) (InvocationExpression)
br ^5

^5: // JumpBlock
%31 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :84 :19) // Not a variable of known type: result
%32 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :84 :19) // result.ToString() (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :84 :19) // result.ToString().ToLowerInvariant() (InvocationExpression)
return %33 : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :84 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_BusinessLogic.Services.TwoFactorService.GenerateQrCodeUri$string.string$(none, none) -> none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :88 :8) {
^entry (%_username : none, %_unformattedKey : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :88 :41)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :88 :41)
%1 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :88 :58)
cbde.store %_unformattedKey, %1 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :88 :58)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :90 :50) // "otpauth://totp/{0}:{1}?secret={2}&issuer={0}&digits=6" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :92 :19) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :93 :16) // Not a variable of known type: AuthenticatorUriFormat
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :94 :16) // Not a variable of known type: _urlEncoder
%7 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :94 :35) // "MyHealth" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :94 :16) // _urlEncoder.Encode("MyHealth") (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :95 :16) // Not a variable of known type: _urlEncoder
%10 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :95 :35) // Not a variable of known type: username
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :95 :16) // _urlEncoder.Encode(username) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :96 :16) // Not a variable of known type: unformattedKey
%13 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :92 :19) // string.Format(                  AuthenticatorUriFormat,                  _urlEncoder.Encode("MyHealth"),                  _urlEncoder.Encode(username),                  unformattedKey) (InvocationExpression)
return %13 : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\TwoFactorService.cs" :92 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function VerifyAuthenticator(none, none), it contains poisonous unsupported syntaxes

// Skipping function TwoFactorLogin(none), it contains poisonous unsupported syntaxes

// Skipping function TwoFactorAuthenticatorSignIn(none, none), it contains poisonous unsupported syntaxes

// Skipping function TwoFactorRecoverySignIn(none, none), it contains poisonous unsupported syntaxes

// Skipping function Disable2FA(none), it contains poisonous unsupported syntaxes

// Skipping function GenerateRecoveryCodes(none), it contains poisonous unsupported syntaxes

