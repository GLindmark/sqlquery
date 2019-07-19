DECLARE @Job nvarchar (30) = 'Derector'

IF EXISTS (SELECT id from job where description = @job)
BEGIN
	PRINT 'That job exists.'
END
ELSE
BEGIN
	PRINT 'That job doe NOT exist.'
END