-- EX 1 

SELECT users.id, users.name,cities.name as city FROM users JOIN cities ON users."cityId"=cities.id WHERE cities.name='Rio de Janeiro' ORDER BY users.id;


-- EX 2

SELECT testimonials.id, u1.name as writer, user2.name as recipient,
testimonials.message
FROM testimonials 
JOIN users u1
ON testimonials."writerId"=u1.id
JOIN users user2
ON testimonials."recipientId"=user2.id
ORDER BY testimonials.id;


-- EX 3

SELECT educations."userId" as id,users.name, courses.name as
course, schools.name as school,educations."endDate"
FROM educations 
JOIN users 
ON educations."userId"=users.id 
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE educations."userId"=30 
AND educations.status='finished';

-- EX 4

SELECT users.id,users.name,roles.name as role,companies.name 
as company, experiences."startDate"
FROM experiences
JOIN users
ON experiences."userId"=users.id
JOIN roles
ON experiences."roleId"=roles.id
JOIN companies
ON experiences."companyId"=companies.id
WHERE experiences."userId"=50 AND experiences."endDate" IS NULL;



