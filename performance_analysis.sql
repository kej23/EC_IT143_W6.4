
--SELECT * FROM Person.Person;         --Step 1; Query a table in your AdventureWorks SQL Server Database.

SELECT *                               --Step 2; Add a WHERE clause that limits to a specific value for a character field (one that is not indexed).      
FROM Person.Person
WHERE MiddleName = 'A';
                                                         --Step 3. Include the Actual Execution Plan.
                                                         --Step 4. Review the execution plan.
														 --Step 5. Take note of the estimated subtree cost and any missing index recommendations.
														 --Step 6. Opposite click on the missing index recommendation and select missing index details.
CREATE NONCLUSTERED INDEX [IX_Person_MiddleName]       --Step 7. To use the recommended index, name the index and execute the script.
ON [Person].[Person] ([MiddleName]);
                                                        --Step 8. Re-run the query to see if performance improves in terms of runtime and estimated subtree cost.