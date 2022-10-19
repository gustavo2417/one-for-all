SELECT FORMAT(MIN(cost), 2) AS faturamento_minimo,
MAX(cost) AS faturamento_maximo,
ROUND(AVG(plan.cost), 2) AS faturamento_medio,
ROUND(SUM(plan.cost), 2) AS faturamento_total
FROM SpotifyClone.plans AS plan
INNER JOIN SpotifyClone.users AS user ON user.plan_id = plan.plan_id;