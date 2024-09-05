--get registered pets per type
CREATE OR REPLACE PROCEDURE getmascotsPerType

AS
    CURSOR c_Animal IS
        SELECT idAnimal FROM Animal;
    vidAnimal animal.idAnimal%TYPE;
    vCount NUMBER;
BEGIN
    DELETE FROM Results;
    FOR recAnimal IN c_Animal LOOP
        vidAnimal := recAnimal.idAnimal;
        vCount :=0;
        
        FOR recPet IN
        (SELECT idAnimal 
        FROM Pet
        WHERE IDANIMAL = vidAnimal)
        LOOP
            Vcount := vCount + 1;
        END LOOP;
        
        INSERT INTO Results (idAnimal, count)
        VALUES (vidAnimal, Vcount);
    END LOOP;

END getmascotsPerType;-- getmascotsPerType;
/
--get adoptants per range
CREATE OR REPLACE PROCEDURE getAdoptantsPerAge
(pCeroToEighteen OUT NUMBER, pNineteenToThirty OUT NUMBER, pThirtyOneToFourtyFive OUT NUMBER, 
pFourtySixToSixty OUT NUMBER, pSixtyOneToSeventyFive OUT NUMBER, pSeventyFivePlus OUT NUMBER, pGender IN VARCHAR2)
AS
BEGIN
    SELECT
        SUM(CASE WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birthday)/12) BETWEEN 0 AND 18 THEN 1 ELSE 0 END) AS ceroToeighteen,
        SUM(CASE WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birthday)/12) BETWEEN 19 AND 30 THEN 1 ELSE 0 END) AS nineteenToThirty,
        SUM(CASE WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birthday)/12) BETWEEN 31 AND 45 THEN 1 ELSE 0 END) AS thirtyOneTofourtyFive,
        SUM(CASE WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birthday)/12) BETWEEN 46 AND 60 THEN 1 ELSE 0 END) AS fourtySixTosixty,
        SUM(CASE WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birthday)/12) BETWEEN 61 AND 75 THEN 1 ELSE 0 END) AS sixtyOneToseventyFive,
        SUM(CASE WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birthday)/12) > 75 THEN 1 ELSE 0 END) AS seventyFivePlus
    INTO pCeroToEighteen,pNineteenToThirty,pThirtyOneToFourtyFive,pFourtySixToSixty,pSixtyOneToSeventyFive,pSeventyFivePlus
    FROM Candidate c
    INNER JOIN Person p
    ON p.idPerson = c.idPerson
    WHERE gender = pGender;
END getAdoptantsPerAge;
/
--get topNrace
CREATE OR REPLACE PROCEDURE topNraces
(topNr IN OUT NUMBER)
IS
BEGIN
    DELETE FROM topNrace;
    FOR races IN(
        SELECT raceName, COUNT(*) as top
        FROM Race
        GROUP BY RaceName
        ORDER BY COUNT(*) DESC)
    LOOP
        IF topNr > 0 THEN
            INSERT INTO topNrace(race, count)
            VALUES(races.Racename, races.top);
            topNr := topNr -1;
        ELSE
            EXIT;
        END IF;
    END LOOP;
END;
/
--percentage of adopted mascots and costs
CREATE OR REPLACE PROCEDURE Porcentage 
IS
    vPetAdopted NUMBER;
    vPets NUMBER;
    vBudget NUMBER;
    vSpent NUMBER;
    vPercentageCost NUMBER;
    VPercentagePets NUMBER;
BEGIN
    SELECT COUNT(*) INTO vPetAdopted FROM PetAdopted;
    SELECT COUNT(*) INTO vPets FROM Pet;
    SELECT SUM(a.spent) INTO vSpent FROM Pet a
    JOIN CandidateXPet c ON a.IdPet = c.idPet;
    SELECT SUM(b.budget) INTO vBudget FROM Candidate b
    JOIN CandidateXPet c ON b.IdCandidate = c.idCandidate;
    
    VPercentagePets := (vPetAdopted / vPets)*100;
    
    vPercentageCost := (vBudget / vSpent)*100;
END Porcentage;
/