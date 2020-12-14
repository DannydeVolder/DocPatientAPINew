// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_DataAccessLayer.Migrations.Appointments.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123132645_Appointments.cs" :47 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123132645_Appointments.cs" :47 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123132645_Appointments.cs" :47 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123132645_Appointments.cs" :49 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123132645_Appointments.cs" :50 :22) // "Appointments" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Migrations\\20201123132645_Appointments.cs" :49 :12) // migrationBuilder.DropTable(                  name: "Appointments") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
