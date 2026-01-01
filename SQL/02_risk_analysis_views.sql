-- ===============================
-- RISK ANALYSIS VIEW
-- ===============================
CREATE VIEW Machine_Risk_Analysis AS
SELECT
    Machine_ID,
    Log_Date,
    Temperature,
    Vibration,
    Pressure,
    Runtime_Hours,

    CASE
        WHEN Temperature > 90 AND Vibration > 6 THEN 'High Risk'
        WHEN Temperature BETWEEN 80 AND 90 
             OR Vibration BETWEEN 5 AND 6 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS Risk_Level

FROM Clean_Machine_Logs;
GO
SELECT * FROM Machine_Risk_Analysis;
