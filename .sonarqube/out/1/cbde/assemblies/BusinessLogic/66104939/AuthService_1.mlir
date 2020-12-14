// Skipping function Authenticate(none), it contains poisonous unsupported syntaxes

// Skipping function GenerateUserLogin(none), it contains poisonous unsupported syntaxes

func @_BusinessLogic.Services.AuthService.GenerateJwtToken$System.Collections.Generic.IEnumerable$System.Security.Claims.Claim$$(none) -> none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :119 :8) {
^entry (%_claims : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :119 :40)
cbde.store %_claims, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :119 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :122 :31) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
// Entity from another assembly: Encoding
%3 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :123 :22) // Encoding.ASCII (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :123 :46) // Not a variable of known type: _appSettings
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :123 :46) // _appSettings.JwtSecret (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :123 :22) // Encoding.ASCII.GetBytes(_appSettings.JwtSecret) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :124 :34) // new SecurityTokenDescriptor              {                  Subject = new ClaimsIdentity(claims),                  Expires = DateTime.UtcNow.AddMinutes(_appSettings.AccessTokenLifetime),                  SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)              } (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :126 :45) // Not a variable of known type: claims
%10 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :126 :26) // new ClaimsIdentity(claims) (ObjectCreationExpression)
// Entity from another assembly: DateTime
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :127 :26) // DateTime.UtcNow (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :127 :53) // Not a variable of known type: _appSettings
%13 = cbde.unknown : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :127 :53) // _appSettings.AccessTokenLifetime (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :127 :26) // DateTime.UtcNow.AddMinutes(_appSettings.AccessTokenLifetime) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :128 :85) // Not a variable of known type: key
%16 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :128 :60) // new SymmetricSecurityKey(key) (ObjectCreationExpression)
// Entity from another assembly: SecurityAlgorithms
%17 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :128 :91) // SecurityAlgorithms.HmacSha512Signature (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :128 :37) // new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature) (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :130 :24) // Not a variable of known type: tokenHandler
%21 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :130 :49) // Not a variable of known type: tokenDescriptor
%22 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :130 :24) // tokenHandler.CreateToken(tokenDescriptor) (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :131 :19) // Not a variable of known type: tokenHandler
%25 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :131 :43) // Not a variable of known type: token
%26 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :131 :19) // tokenHandler.WriteToken(token) (InvocationExpression)
return %26 : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :131 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BusinessLogic.Services.AuthService.GenerateRefreshToken$System.Collections.Generic.IEnumerable$System.Security.Claims.Claim$$(none) -> none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :134 :8) {
^entry (%_claims : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :134 :44)
cbde.store %_claims, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :134 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :136 :31) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
// Entity from another assembly: Encoding
%3 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :137 :22) // Encoding.ASCII (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :137 :46) // Not a variable of known type: _appSettings
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :137 :46) // _appSettings.RefreshSecret (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :137 :22) // Encoding.ASCII.GetBytes(_appSettings.RefreshSecret) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :138 :34) // new SecurityTokenDescriptor              {                  Subject = new ClaimsIdentity(claims),                  Expires = DateTime.UtcNow.AddDays(_appSettings.RefreshTokenLifetime),                  SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)              } (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :140 :45) // Not a variable of known type: claims
%10 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :140 :26) // new ClaimsIdentity(claims) (ObjectCreationExpression)
// Entity from another assembly: DateTime
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :141 :26) // DateTime.UtcNow (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :141 :50) // Not a variable of known type: _appSettings
%13 = cbde.unknown : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :141 :50) // _appSettings.RefreshTokenLifetime (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :141 :26) // DateTime.UtcNow.AddDays(_appSettings.RefreshTokenLifetime) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :142 :85) // Not a variable of known type: key
%16 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :142 :60) // new SymmetricSecurityKey(key) (ObjectCreationExpression)
// Entity from another assembly: SecurityAlgorithms
%17 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :142 :91) // SecurityAlgorithms.HmacSha512Signature (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :142 :37) // new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature) (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :144 :24) // Not a variable of known type: tokenHandler
%21 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :144 :49) // Not a variable of known type: tokenDescriptor
%22 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :144 :24) // tokenHandler.CreateToken(tokenDescriptor) (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :145 :19) // Not a variable of known type: tokenHandler
%25 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :145 :43) // Not a variable of known type: token
%26 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :145 :19) // tokenHandler.WriteToken(token) (InvocationExpression)
return %26 : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\BusinessLogic\\Services\\AuthService.cs" :145 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Register(none), it contains poisonous unsupported syntaxes

// Skipping function RefreshAccessToken(none), it contains poisonous unsupported syntaxes

// Skipping function SignOut(none), it contains poisonous unsupported syntaxes

// Skipping function RegisterDoctor(none), it contains poisonous unsupported syntaxes

// Skipping function RegisterAdmin(none), it contains poisonous unsupported syntaxes

