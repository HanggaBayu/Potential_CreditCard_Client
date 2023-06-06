WITH btpn_combine AS (
  SELECT cdh.[CLIENTNUM],cdh.[idstatus]
      ,cdh.[Customer_Age]
      ,cdh.[Gender]
      ,cdh.[Dependent_count]
      ,cdh.[Educationid]
      ,cdh.[Maritalid]
      ,cdh.[Income_Category]
      ,cdh.[card_categoryid]
      ,cdh.[Months_on_book]
      ,cdh.[Total_Relationship_Count]
      ,cdh.[Months_Inactive_12_mon]
      ,cdh.[Contacts_Count_12_mon]
      ,cdh.[Credit_Limit]
      ,cdh.[Total_Revolving_Bal]
      ,cdh.[Avg_Open_To_Buy]
      ,cdh.[Total_Trans_Amt]
      ,cdh.[Total_Trans_Ct]
      ,cdh.[Avg_Utilization_Ratio], s.status, e.Education_Level, c.Card_Category, m.Marital_Status
  FROM [BTPNS_Filter_Customer].[dbo].[customer_data_history] cdh
  LEFT JOIN [BTPNS_Filter_Customer].[dbo].[status_db] s ON cdh.idstatus = s.id
  LEFT JOIN [BTPNS_Filter_Customer].[dbo].[education_db] e ON cdh.Educationid = e.id
  LEFT JOIN [BTPNS_Filter_Customer].[dbo].[category_db] c ON cdh.card_categoryid = c.id
  LEFT JOIN [BTPNS_Filter_Customer].[dbo].[marital_db] m ON cdh.Maritalid = m.id
)

--SELECT *
--INTO [BTPNS_Filter_Customer].[dbo].[BTPN_COMBINE]
--FROM btpn_combine;

--SELECT idstatus,status,count(idstatus) as Count 
--FROM btpn_combine
--GROUP BY idstatus, status

--SELECT status, Education_Level, count(Education_Level) as Count
--FROM btpn_combine
--WHERE idstatus = 2
--GROUP BY status, Education_Level
--Order BY count (Education_Level) desc

--SELECT status, Marital_Status, count(Marital_Status) as Count
--FROM btpn_combine
--WHERE idstatus = 2
--GROUP BY status, Marital_Status
--Order BY count (Marital_Status) desc

--SELECT status, Income_Category, count(Income_Category) as Count
--FROM btpn_combine
--WHERE idstatus = 2
--GROUP BY status, Income_Category
--Order BY count (Income_Category) desc

--SELECT Marital_Status, Income_Category, count(Income_Category) as Count
--FROM btpn_combine
--WHERE idstatus = 2
--GROUP BY Marital_Status, Income_Category
--Order BY count (Income_Category) desc

