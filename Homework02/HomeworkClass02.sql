--Session 2 Homework - 01 filtering data.sql

SELECT * 
FROM Student
WHERE FirstName = 'Antonio'
GO

SELECT *
FROM Student
WHERE DateOfBirth > '1999.01.01'
GO

SELECT* 
FROM Student
WHERE Gender = 'M'
GO

SELECT*
FROM Student
WHERE LastName like 'T%'
GO

SELECT * 
FROM Student
WHERE DateOfBirth BETWEEN '1998.01.01' AND '2010.01.31'--Date edited so it gives result
AND LastName like 'T%'
GO


--Session 2 Homework - 02 sorting data.sql
SELECT * 
FROM Student
WHERE FirstName = 'Antonio'
ORDER BY LastName
GO

SELECT *
FROM Student
ORDER BY FirstName
GO

SELECT LastName
FROM Teacher
UNION
SELECT LastName
FROM Student
GO

SELECT *
FROM Student
WHERE Gender = 'M'
ORDER BY EnrolledDate DESC;
GO

--Session 2 Homework - 03 Combining sets.sql

SELECT FirstName FROM Teacher
UNION ALL
SELECT FirstName FROM Student;

SELECT LastName FROM Teacher
UNION
SELECT LastName FROM Student;

SELECT FirstName FROM Teacher
INTERSECT
SELECT FirstName FROM Student;

--Session 2 Homework - 04 Table constraints.sql

ALTER TABLE GradeDetails
ADD CONSTRAINT DF_GradeDetails_AchievementMaxPoints DEFAULT 100 FOR AchievementMaxPoints;
GO

UPDATE GradeDetails
SET AchievementMaxPoints = 100
WHERE AchievementMaxPoints IS NULL;
GO

ALTER TABLE GradeDetails
ADD CONSTRAINT chk_achievement_points
CHECK (AchievementPoints <= AchievementMaxPoints)
GO

SELECT * 
FROM AchievementType Name
GO

ALTER TABLE AchievementType
ADD CONSTRAINT uq_achievementtype_name UNIQUE (Name)
GO


--Session 2 Homework - 06 Join types.sql

SELECT 
c.Name AS CourseName,
a.Name AS AchievementTypeName
FROM Grade g
JOIN Course c ON g.CourseID = c.ID
JOIN GradeDetails gd ON gd.GradeID = g.ID
JOIN AchievementType a ON a.ID = gd.AchievementTypeID
GROUP BY 
c.Name, a.Name;
GO

SELECT DISTINCT t.FirstName, t.LastName
FROM Teacher t
JOIN Grade g ON t.ID = g.TeacherID
GO

SELECT DISTINCT t.*
FROM Teacher t
LEFT JOIN Grade g ON t.ID = g.TeacherID
WHERE G.ID IS NULL;
GO

--left + right join
SELECT DISTINCT b.LastName + N' ' + b.LastName as TeacherWithoutExamGrade
FROM Teacher b
left join [Grade] o on b.ID = o.Grade
where o.id is null
GO

SELECT DISTINCT b.LastName + N' ' + b.LastName as TeacherWithoutExamGrade
FROM [Grade] o
right join Teacher b on b.ID = o.Grade
WHERE o.ID IS NULL;
GO



