/*
	SQL Test queries. These are sample queries, some of which we used in MySQL to test 
		the DB, and some of which we adapted to use in the UI. 

*/
SELECT S_year, T_teamName FROM team_performance WHERE passingYards > 5000 AND rushingYards > 5000 AND sacks > 50;

SELECT * FROM stadium where T_homeTeam = 'vitz';

SELECT * FROM injury_report where injuryType = 'aceon';

SELECT S_year, T_teamName FROM played_for WHERE P_playerID IN (SELECT playerID FROM player WHERE fname = 'Alfie' AND lname = 'Bovis');

SELECT s.year, s.T_championTeam FROM season as s WHERE s.T_championTeam = 'Digitube';

SELECT * FROM team;

SELECT gameDate, homeTeam, awayTeam FROM GAME
WHERE gameDate > current_date() AND (homeTeam = 'Vitz' OR awayTeam = 'Vitz')
ORDER BY gameDate;

SELECT gameDate, homeTeam, awayTeam
FROM GAME
WHERE gameDate > current_date()
ORDER BY gameDate;

SELECT fName, lName,  position
FROM player as p, team as t, played_for as pf
WHERE p.playerID = pf.P_playerID AND t.teamName = pf.T_teamName AND t.teamName = 'Skipfire'
ORDER BY position;

SELECT c.fName, c.lName, cs.S_year, cs.T_TeamName
FROM ((team_performance as tp
INNER JOIN coaches as cs ON cs.S_Year = tp.S_Year AND cs.T_teamName = tp.T_teamName)
INNER JOIN coach as c ON c.coachID = coachID);

SELECT gameDate, homeTeam, awayTeam
FROM GAME
WHERE gameDate > '2000-01-01'
ORDER BY gameDate;

SELECT gameDate, homeTeam, awayTeam
FROM GAME
WHERE gameDate > current_date()
ORDER BY gameDate;
