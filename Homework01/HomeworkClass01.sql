CREATE DATABASE SEDCACADEMYDB;

USE SEDCACADEMYDB;
GO

CREATE TABLE Student(
[Id] [int] NOT NULL,
[FirstName] [nvarchar](50) NOT NULL,
[LastName] [nvarchar](50) NOT NULL,
[DateOfBirth] DATE NOT NULL,
[EnrolledDate] DATE NOT NULL,
[Gender] [nvarchar] NOT NULL,
[NationalIdNumber] [nvarchar] (100) NOT NULL,
[StudentCardNumber] [nvarchar] (100) NOT NULL
);
GO


CREATE TABLE Teacher(
[Id] [int] NOT NULL,
[FirstName] [nvarchar](50) NOT NULL,
[LastName] [nvarchar](50) NOT NULL,
[DateOfBirth] DATE NOT NULL,
[AcademicRank] [nvarchar](50) NULL,
[HireDate] DATE NOT NULL,
);
GO

CREATE TABLE Grade (
[Id] [int] NOT NULL,
[StudentId] [nvarchar] (100) NOT NULL,
[CourseID] [nvarchar] (50) NOT NULL,
[TeacherID] [nvarchar] (50) NOT NULL,
[Grade] [nvarchar] (50) NOT NULL,
[Comment] [nvarchar] (100) NULL,
[CreatedDate] DATE NOT NULL
);


CREATE TABLE Course (
[Id] [int] NOT NULL,
[Name] [nvarchar] (50) NOT NULL,
[Credit] [nvarchar] (50) NOT NULL,
[AcademicYear] DATE NOT NULL,
[Semester] [nvarchar] (50) NOT NULL,
);
GO


CREATE TABLE GradeDetails (
[Id] [int] NOT NULL,
[GradeId] [nvarchar] (50) NOT NULL,
[AchievementTypeID] [nvarchar] (50) NOT NULL,
[AchievementPoints] [nvarchar] (50) NULL,
[AchievementMaxPoints] [nvarchar] (50) NULL,
[AchievementDate] DATE NOT NULL,
);


CREATE TABLE AchievementType (
[Id] [int] NOT NULL,
[Name] [nvarchar] (50) NOT NULL,
[Description] [nvarchar] (50) NULL,
[ParticipationRate] [nvarchar] (50) NULL,
);

