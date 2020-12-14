func @_DoctorPatientAPI.Filters.AntiforgeryCookieResultFilterAttribute.OnResultExecuting$Microsoft.AspNetCore.Mvc.Filters.ResultExecutingContext$(none) -> () loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :16 :8) {
^entry (%_context : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :16 :47)
cbde.store %_context, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :16 :47)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :18 :25) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :18 :25) // this.Antiforgery (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :18 :60) // Not a variable of known type: context
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :18 :60) // context.HttpContext (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :18 :25) // this.Antiforgery.GetAndStoreTokens(context.HttpContext) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :12) // Not a variable of known type: context
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :12) // context.HttpContext (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :12) // context.HttpContext.Response (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :12) // context.HttpContext.Response.Cookies (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :56) // "X-XSRF-TOKEN" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :72) // Not a variable of known type: tokens
%13 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :72) // tokens.RequestToken (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :93) // new CookieOptions() { HttpOnly = false } (ObjectCreationExpression)
%15 = constant 0 : i1 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :126) // false
%16 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DoctorPatientAPI\\Filters\\AntiForgeryCookieResultFilterAttribute.cs" :19 :12) // context.HttpContext.Response.Cookies.Append("X-XSRF-TOKEN", tokens.RequestToken, new CookieOptions() { HttpOnly = false }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
