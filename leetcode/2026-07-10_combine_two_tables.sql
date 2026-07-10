-- Problem: Combine Two Tables
-- Given Person(personId, firstName, lastName) and Address(addressId, personId, city, state),
-- report each person's name with city and state, showing NULL if that person has no address.
-- Pattern: LEFT JOIN keeps every row from the left table even without a match on the right.

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
