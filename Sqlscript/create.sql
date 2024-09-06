IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'dbo.departments') 
    AND type in (N'U')
)


BEGIN
CREATE TABLE dbo.departments (
    department_id INT ,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
)
END;

INSERT INTO departments (department_id,department_name, location)
VALUES 
(1,'Engineering', 'New York'),
(2,'Human Resources', 'Los Angeles'),
(3,'Marketing', 'San Francisco');
