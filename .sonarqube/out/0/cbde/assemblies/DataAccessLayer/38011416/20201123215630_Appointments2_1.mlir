func @_DataAccessLayer.Migrations.Appointments2.Up$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :7 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :7 :35)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :7 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :9 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :10 :22) // "DateAndTime" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :11 :23) // "Appointments" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :9 :12) // migrationBuilder.DropColumn(                  name: "DateAndTime",                  table: "Appointments") (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :13 :12) // Not a variable of known type: migrationBuilder
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :14 :22) // "Date" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :15 :23) // "Appointments" (StringLiteralExpression)
%8 = constant 0 : i1 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :16 :26) // false
%9 = constant 1 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :43)
%10 = constant 1 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :46)
%11 = constant 1 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :49)
%12 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :52)
%13 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :55)
%14 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :58)
%15 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :61)
// Entity from another assembly: DateTimeKind
%16 = constant unit loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :64) // DateTimeKind.Unspecified (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :17 :30) // new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :13 :12) // migrationBuilder.AddColumn<DateTime>(                  name: "Date",                  table: "Appointments",                  nullable: false,                  defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified)) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :19 :12) // Not a variable of known type: migrationBuilder
%20 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :20 :22) // "Time" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :21 :23) // "Appointments" (StringLiteralExpression)
%22 = constant 1 : i1 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :22 :26) // true
%23 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :19 :12) // migrationBuilder.AddColumn<string>(                  name: "Time",                  table: "Appointments",                  nullable: true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccessLayer.Migrations.Appointments2.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :25 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :25 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :25 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :27 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :28 :22) // "Date" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :29 :23) // "Appointments" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :27 :12) // migrationBuilder.DropColumn(                  name: "Date",                  table: "Appointments") (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :31 :12) // Not a variable of known type: migrationBuilder
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :32 :22) // "Time" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :33 :23) // "Appointments" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :31 :12) // migrationBuilder.DropColumn(                  name: "Time",                  table: "Appointments") (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :35 :12) // Not a variable of known type: migrationBuilder
%10 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :36 :22) // "DateAndTime" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :37 :23) // "Appointments" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :38 :22) // "datetime2" (StringLiteralExpression)
%13 = constant 0 : i1 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :39 :26) // false
%14 = constant 1 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :43)
%15 = constant 1 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :46)
%16 = constant 1 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :49)
%17 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :52)
%18 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :55)
%19 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :58)
%20 = constant 0 : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :61)
// Entity from another assembly: DateTimeKind
%21 = constant unit loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :64) // DateTimeKind.Unspecified (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :40 :30) // new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) (ObjectCreationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123215630_Appointments2.cs" :35 :12) // migrationBuilder.AddColumn<DateTime>(                  name: "DateAndTime",                  table: "Appointments",                  type: "datetime2",                  nullable: false,                  defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
