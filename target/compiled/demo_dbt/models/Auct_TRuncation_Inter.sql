
Select
	latchLocker LatchLocker,
	cast(latchTaskName as nvarchar(4000)) LatchTaskName,
	cast(latchMachineGUID as nvarchar(4000)) LatchMachineGUID,
	cast(LatchKey as nvarchar(4000)) LatchKey
From Auct_TRuncation_Raw