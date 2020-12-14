// Skipping function Delete(none), it contains poisonous unsupported syntaxes

// Skipping function GetAll(), it contains poisonous unsupported syntaxes

// Skipping function GetById(none), it contains poisonous unsupported syntaxes

// Skipping function Insert(none), it contains poisonous unsupported syntaxes

func @_DataAccessLayer.Repositories.BaseRepository$T.TPrimaryKey$.Update$T$(none) -> () loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :51 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :51 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :51 :27)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :16) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :26) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :16) // comparison of unknown type: entity == null
cond_br %3, ^1, ^2 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :64) // "entity" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :38) // new ArgumentNullException("entity") (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :53 :32)

^2: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :54 :12) // Not a variable of known type: _entities
%7 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :54 :29) // Not a variable of known type: entity
%8 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :54 :12) // _entities.Update(entity) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :55 :12) // Not a variable of known type: _context
%10 = cbde.unknown : i32 loc("C:\\Users\\Danny\\source\\repos\\DocPatientAPINew\\DataAccessLayer\\Repositories\\BaseRepository.cs" :55 :12) // _context.SaveChanges() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
