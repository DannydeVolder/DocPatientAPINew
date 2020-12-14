// Skipping function SetupAuthenticator(), it contains poisonous unsupported syntaxes

// Skipping function Disable2FA(), it contains poisonous unsupported syntaxes

func @_DoctorPatientAPI.Controllers.TwoFactorController.AesKey$$() -> none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :54 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Crypto
%0 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :58 :43) // "kankervettqewrwerew333333333333333333333333333333333333333333333333333r" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :58 :118) // "UDW8Uj24kCseiEc2RrEH2sZ3jl4A40W9" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :58 :25) // Crypto.AesEncrypt("kankervettqewrwerew333333333333333333333333333333333333333333333333333r", "UDW8Uj24kCseiEc2RrEH2sZ3jl4A40W9") (InvocationExpression)
// Entity from another assembly: Encoding
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :60 :23) // Encoding.UTF8 (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :60 :47) // Not a variable of known type: result
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :60 :23) // Encoding.UTF8.GetString(result) (InvocationExpression)
// Entity from another assembly: Console
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :61 :30) // Not a variable of known type: S
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :61 :12) // Console.WriteLine(S) (InvocationExpression)
// Entity from another assembly: Crypto
%10 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :62 :46) // Not a variable of known type: result
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :62 :54) // "UDW8Uj24kCseiEc2RrEH2sZ3jl4A40W9" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :62 :28) // Crypto.AesDecrypt(result, "UDW8Uj24kCseiEc2RrEH2sZ3jl4A40W9") (InvocationExpression)
// Entity from another assembly: Ok
%14 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :64 :22) // Not a variable of known type: decrypted
%15 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :64 :19) // Ok(decrypted) (InvocationExpression)
return %15 : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Controllers\\TwoFactorController.cs" :64 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GenerateRecoveryCodes(), it contains poisonous unsupported syntaxes

// Skipping function VerifyAuthenticator(none), it contains poisonous unsupported syntaxes

// Skipping function TwoFactorLogin(none), it contains poisonous unsupported syntaxes

// Skipping function TwoFactorRecoveryLogin(none), it contains poisonous unsupported syntaxes

