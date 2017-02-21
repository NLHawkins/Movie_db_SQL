SELECT Age From Person
INNER JOIN Review on Person.Id = Review.Person
INNER JOIN Movie ON Review.Movie = Movie.Id 
WHERE Movie.Title = 'Toy Story';

SELECT Occupation FROM Person
WHERE Age < 40;

SELECT Title FROM Movie
WHERE [IMDB Url] = ''

SELECT Title FROM Movie
INNER JOIN Review on Movie.Id = Review.Movie
WHERE Rating < 2

--SELECT Person.Id, Person.Occupation, Person.Gender, Person.City, Person.Age FROM Person
--INNER JOIN Review ON Person.Id = Review.Person
--INNER JOIN Movie ON Review.Movie = Movie.Id
--WHERE Movie.[Release_Date] IS;

--SELECT Title FROM Movie
--INNER JOIN Review ON Movie.Id = Review.Movie
--INNER JOIN Person ON Review.Person = Person.Id
--WHERE Movie.Genre = 'Drama' & Person.Age > 30;
