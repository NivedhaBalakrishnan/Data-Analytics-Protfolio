-- The winning percentage of home team and away team over the years
SELECT 
	LOCATION
	,TEAM_NAME
	,SUM(WIN_COUNT)*100/SUM(GAME_COUNT) AS `WIN %`
FROM 
	game_analysis
WHERE 
	SEASON >= 2000
GROUP BY 1,2;

-- Average foul and FT % for home and away teams over the years
SELECT 
	`game_analysis`.`LOCATION` AS `LOCATION`,
	`game_analysis`.`SEASON` AS `SEASON`,
	AVG(`game_analysis`.`AVERGAE_FOULS`) AS `AVERGAE_FOULS`,
	AVG(`game_analysis`.`FREE_THROUGH_GOAL_PERCENTAGE`) AS `FREE_THROUGH_GOAL_PERCENTAGE`
FROM 
	`game_analysis`
	INNER JOIN 
    (
	SELECT 
		`game_analysis`.`SEASON` AS `SEASON`
	FROM 
		`game_analysis`
	WHERE (`game_analysis`.`SEASON` >= '2000')
	GROUP BY 1
	) `t0` 
    ON (`game_analysis`.`SEASON` = `t0`.`SEASON`)
GROUP BY 1,2;

-- Offensive and defensive metrics 
-- Defense Metrics
SELECT 
	`game_analysis`.`LOCATION` AS `LOCATION`,
	`game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
	AVG(`game_analysis`.`AVERAGE_NUMBER_OF_BLOCKS`) AS `AVERAGE_NUMBER_OF_BLOCKS`,
	AVG(`game_analysis`.`AVERAGE_NUMBER_OF_STEALS`) AS `AVERAGE_NUMBER_OF_STEALS`,
	AVG(`game_analysis`.`AVERAGE_POINTS_AFTER_TURNOVER_PERCENTAGE`) AS `AVERAGE_POINTS_AFTER_TURNOVER_PERCENTAGE`,
	AVG(`game_analysis`.`DEFENSIVE_REBOUND_PERCENTAGE`) AS `DEFENSIVE_REBOUND_PERCENTAGE`
FROM 
	`game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1,2;

-- Offense Metrics
SELECT 
	`game_analysis`.`LOCATION` AS `LOCATION`,
	`game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
	AVG(`game_analysis`.`AVERAGE_2ND_CHANCE_POINTS`) AS `AVERAGE_2ND_CHANCE_POINTS`,
	AVG(`game_analysis`.`AVERAGE_ASSISTS`) AS `AVERAGE_ASSISTS`,
	AVG(`game_analysis`.`AVERAGE_PAINT_POINTS`) AS `AVERAGE_PAINT_POINTS`,
	AVG(`game_analysis`.`OFFENSIVE_REBOUND_PERCENTAGE`) AS `OFFENSIVE_REBOUND_PERCENTAGE`
FROM
	`game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1,2;

-- Point distribution of top 5 and bottom 5 teams
-- Top 5 teams - Point Distribution %
SELECT `game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
  AVG(`game_analysis`.`AVERAGE_2ND_CHANCE_POINTS`) AS `AVERAGE_2ND_CHANCE_POINTS`,
  AVG(`game_analysis`.`AVERAGE_2_POINT_GOAL_PERCENTAGE`) AS `AVERAGE_2_POINT_GOAL_PERCENTAGE`,
  AVG(`game_analysis`.`AVERAGE_3_POINT_GOAL_PERCENTAGE`) AS `AVERAGE_3_POINT_GOAL_PERCENTAGE`,
  AVG(`game_analysis`.`AVERAGE_PAINT_POINTS`) AS `AVERAGE_PAINT_POINTS`,
  AVG(`game_analysis`.`AVERAGE_POINTS_AFTER_TURNOVER_PERCENTAGE`) AS `AVERAGE_POINTS_AFTER_TURNOVER_PERCENTAGE`,
  SUM(WIN_COUNT)*100/SUM(GAME_COUNT) AS `$__alias__0`
FROM `game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1
ORDER BY `$__alias__0` DESC,`TEAM_SLUG` ASC
LIMIT 5;

-- Bottom 5 teams - Point Distribution %
SELECT `game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
  AVG(`game_analysis`.`AVERAGE_2ND_CHANCE_POINTS`) AS `AVERAGE_2ND_CHANCE_POINTS`,
  AVG(`game_analysis`.`AVERAGE_2_POINT_GOAL_PERCENTAGE`) AS `AVERAGE_2_POINT_GOAL_PERCENTAGE`,
  AVG(`game_analysis`.`AVERAGE_3_POINT_GOAL_PERCENTAGE`) AS `AVERAGE_3_POINT_GOAL_PERCENTAGE`,
  AVG(`game_analysis`.`AVERAGE_PAINT_POINTS`) AS `AVERAGE_PAINT_POINTS`,
  AVG(`game_analysis`.`AVERAGE_POINTS_AFTER_TURNOVER_PERCENTAGE`) AS `AVERAGE_POINTS_AFTER_TURNOVER_PERCENTAGE`,
  SUM(WIN_COUNT)*100/SUM(GAME_COUNT) AS `$__alias__0`
FROM `game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1
ORDER BY `$__alias__0` ASC,`TEAM_SLUG` ASC
LIMIT 5;

-- 3 point average percentage and efficiency
-- Average 3 Point Goal Percentage of Top 5 Teams
SELECT 
	`game_analysis`.`SEASON` AS `SEASON`,
	`game_analysis`.`TEAM_NAME` AS `TEAM_NAME`,
	AVG(`game_analysis`.`TOTAL_AVERAGE_3_POINT_GOAL_PERCENTAGE`) AS `TOTAL_AVERAGE_3_POINT_GOAL_PERCENTAGE`
FROM 
	`game_analysis`
	INNER JOIN 
    (
	SELECT 
		`game_analysis`.`TEAM_NAME` AS `TEAM_NAME`,
		SUM(WIN_COUNT)*100/SUM(GAME_COUNT) AS `$__alias__0`
	FROM 
		`game_analysis`
	WHERE (`game_analysis`.`SEASON` >= '2000')
	GROUP BY 1
	ORDER BY `$__alias__0` DESC,`TEAM_NAME` ASC
	LIMIT 5
	) `t0` 
    ON (`game_analysis`.`TEAM_NAME` <=> `t0`.`TEAM_NAME`)
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1,2;

-- Average 3 Point Goal Percentage of Bottom 5 Teams
SELECT 
	`game_analysis`.`SEASON` AS `SEASON`,
	`game_analysis`.`TEAM_NAME` AS `TEAM_NAME`,
	AVG(`game_analysis`.`TOTAL_AVERAGE_3_POINT_GOAL_PERCENTAGE`) AS `TOTAL_AVERAGE_3_POINT_GOAL_PERCENTAGE`
FROM 
	`game_analysis`
	INNER JOIN 
    (
	SELECT 
		`game_analysis`.`TEAM_NAME` AS `TEAM_NAME`,
		SUM(WIN_COUNT)*100/SUM(GAME_COUNT) AS `$__alias__0`
	FROM 
		`game_analysis`
	WHERE (`game_analysis`.`SEASON` >= '2000')
	GROUP BY 1
	ORDER BY `$__alias__0` ASC,`TEAM_NAME` ASC
	LIMIT 5
	) `t0` 
    ON (`game_analysis`.`TEAM_NAME` <=> `t0`.`TEAM_NAME`)
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1,2;

-- Offensive rebound % over years vs win %
SELECT 
	`game_analysis`.`SEASON` AS `SEASON`,
	AVG((`game_analysis`.`WIN_COUNT` / `game_analysis`.`GAME_COUNT`)) AS `WIN %`,
	AVG(`game_analysis`.`OFFENSIVE_REBOUND_PERCENTAGE`) AS `OFFENSIVE_REBOUND_PERCENTAGE`
FROM 
	`game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1;

-- 3 point efficiency and win %
SELECT 
	`game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
	AVG(`game_analysis`.`AVERAGE_3_POINT_GOAL_EFFICIENCY`) AS `AVERAGE_3_POINT_GOAL_EFFICIENCY`,
	AVG((`game_analysis`.`WIN_COUNT` / `game_analysis`.`GAME_COUNT`)) AS `WIN %`
FROM 
	`game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1;

-- Free throw goal efficiency all the teams 
SELECT 
	`game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
	AVG((`game_analysis`.`WIN_COUNT` / `game_analysis`.`GAME_COUNT`)) AS `WIN %`,
	AVG(`game_analysis`.`FREE_THROUGH_GOAL_EFFICIENCY`) AS `FREE_THROUGH_GOAL_EFFICIENCY`
FROM 
	`game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1;

-- Free throw goal percentage all the teams 
SELECT 
	`game_analysis`.`TEAM_SLUG` AS `TEAM_SLUG`,
	AVG((`game_analysis`.`WIN_COUNT` / `game_analysis`.`GAME_COUNT`)) AS `WIN %`,
	AVG(`game_analysis`.`FREE_THROUGH_GOAL_PERCENTAGE`) AS `FREE_THROUGH_GOAL_PERCENTAGE`
FROM 
	`game_analysis`
WHERE (`game_analysis`.`SEASON` >= '2000')
GROUP BY 1;

-- -- TEAM ANALYSIS
-- Salary Distribution of Teams
SELECT 
	`team_winning_stats_with_salary`.`TEAM_SLUG` AS `TEAM_SLUG`,
	SUM(`team_winning_stats_with_salary`.`2021-2022 SALARY`) AS `2021-2022 SALARY`,
	SUM(`team_winning_stats_with_salary`.`2022-2023 SALARY`) AS `2022-2023 SALARY`,
	SUM(`team_winning_stats_with_salary`.`2023-2024 SALARY`) AS `2023-2024 SALARY`,
	SUM(`team_winning_stats_with_salary`.`2024-2025 SALARY`) AS `2024-2025 SALARY`,
	SUM(`team_winning_stats_with_salary`.`2025-2026 SALARY`) AS `2025-2026 SALARY`
FROM 
	`team_winning_stats_with_salary`
GROUP BY 1;

-- Win/Loss % of Teams and Team salary vs win %
SELECT 
	`team_winning_stats_with_salary`.`TEAM_NAME` AS `TEAM_NAME`,
	MIN(`team_winning_stats_with_salary`.`YEAR_FOUNDED`) AS `YEAR_FOUNDED`,
	SUM(`team_winning_stats_with_salary`.`2021-2022 SALARY`) AS `2021-2022 SALARY`,
	SUM(`team_winning_stats_with_salary`.`TOTAL WIN %`) AS `TOTAL WIN %`,
	SUM(`team_winning_stats_with_salary`.`TOTAL LOSS %`) AS `TOTAL LOSS %`,
	SUM(`team_winning_stats_with_salary`.`HOME WIN %`) AS `HOME WIN %`,
	SUM(`team_winning_stats_with_salary`.`HOME LOSS %`) AS `HOME LOSS %`,
	SUM(`team_winning_stats_with_salary`.`AWAY WIN %`) AS `AWAY WIN %`,
	SUM(`team_winning_stats_with_salary`.`AWAY LOSS %`) AS `AWAY LOSS %`
FROM 
	`team_winning_stats_with_salary`
GROUP BY 1;

-- PLAYER ANALYSIS
-- Player Salary Contract Type Distribution
SELECT 
	`player_stats_with_salary`.`2021 - 2022 CONTRACT TYPE` AS `2021 - 2022 CONTRACT TYPE`,
	COUNT(DISTINCT `player_stats_with_salary`.`PLAYER_ID`) AS `COUNT_OF_PLAYERS`
FROM 
	`player_stats_with_salary`
	INNER JOIN 
	`team_winning_stats_with_salary` 
    ON (`player_stats_with_salary`.`TEAM_ID` = `team_winning_stats_with_salary`.`TEAM_ID`)
WHERE 
	(
    (NOT ISNULL(`player_stats_with_salary`.`2021 - 2022 SALARY`)) 
    AND 
    (`team_winning_stats_with_salary`.`TEAM_NAME` >= 'Atlanta Hawks') 
    AND 
    (`team_winning_stats_with_salary`.`TEAM_NAME` <= 'Washington Wizards')
    )
GROUP BY 1;

-- Player Points vs Salary
SELECT 
	`player_stats_with_salary`.`PLAYER_ID` AS `PLAYER_ID`,
	SUM(`player_stats_with_salary`.`2021 - 2022 SALARY`) AS `2021 - 2022 SALARY`,
	SUM(`player_stats_with_salary`.`PTS`) AS `TOTAL POINTS`
FROM 
	`player_stats_with_salary`
	INNER JOIN 
    (
	SELECT 
		`player_stats_with_salary`.`TEAM_ID` AS `TEAM_ID`,
		`player_stats_with_salary`.`2021 - 2022 CONTRACT TYPE` AS `2021 - 2022 CONTRACT TYPE`,
		`player_stats_with_salary`.`2021 - 2022 SALARY` AS `2021 - 2022 SALARY`
	FROM 
		`player_stats_with_salary`
		INNER JOIN 
        `team_winning_stats_with_salary` 
        ON (`player_stats_with_salary`.`TEAM_ID` = `team_winning_stats_with_salary`.`TEAM_ID`)
	WHERE 
		(
		(`team_winning_stats_with_salary`.`TEAM_NAME` >= 'Atlanta Hawks') 
        AND 
        (`team_winning_stats_with_salary`.`TEAM_NAME` <= 'Washington Wizards')
		)
	GROUP BY 2,3,1
	) `t0` 
    ON ((`player_stats_with_salary`.`TEAM_ID` = `t0`.`TEAM_ID`) AND (`player_stats_with_salary`.`2021 - 2022 CONTRACT TYPE` <=> `t0`.`2021 - 2022 CONTRACT TYPE`) AND (`player_stats_with_salary`.`2021 - 2022 SALARY` <=> `t0`.`2021 - 2022 SALARY`))
WHERE 
(
(`player_stats_with_salary`.`2021 - 2022 CONTRACT TYPE` = 'Guaranteed') 
AND 
(NOT ISNULL(`player_stats_with_salary`.`2021 - 2022 SALARY`))
)
GROUP BY 1;
