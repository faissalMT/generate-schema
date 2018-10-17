CREATE TABLE generic (
  id INT,
  type VARCHAR(max),
  PRIMARY KEY (id)
);

CREATE TABLE generic_baselineData (
  generic_id INT,
  id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_id) REFERENCES generic(id)
);

CREATE TABLE generic_baselineData_summary (
  generic_baselineData_id INT,
  id INT,
  BIDReference VARCHAR(max),
  projectName VARCHAR(max),
  leadAuthority VARCHAR(max),
  jointBidAreas VARCHAR(max),
  projectDescription VARCHAR(max),
  greenOrBrownField VARCHAR(max),
  noOfHousingSites INT,
  totalArea INT,
  hifFundingAmount VARCHAR(max),
  descriptionOfInfrastructure VARCHAR(max),
  descriptionOfWiderProjectDeliverables VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

INSERT INTO generic_baselineData_summary (id) VALUES (0);
UPDATE generic_baselineData_summary SET BIDReference = '12345' WHERE id = 0;
UPDATE generic_baselineData_summary SET projectName = 'Project name' WHERE id = 0;
UPDATE generic_baselineData_summary SET leadAuthority = 'Made Tech' WHERE id = 0;
UPDATE generic_baselineData_summary SET jointBidAreas = 'Made Tech 2' WHERE id = 0;
UPDATE generic_baselineData_summary SET projectDescription = 'Descripion of project' WHERE id = 0;
UPDATE generic_baselineData_summary SET greenOrBrownField = 'Greenfield' WHERE id = 0;
UPDATE generic_baselineData_summary SET noOfHousingSites = 10 WHERE id = 0;
UPDATE generic_baselineData_summary SET totalArea = 10 WHERE id = 0;
UPDATE generic_baselineData_summary SET hifFundingAmount = '10000' WHERE id = 0;
UPDATE generic_baselineData_summary SET descriptionOfInfrastructure = 'An infrastructure' WHERE id = 0;
UPDATE generic_baselineData_summary SET descriptionOfWiderProjectDeliverables = 'Wider infrastructure' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures (
  generic_baselineData_id INT,
  id INT,
  type VARCHAR(max),
  description VARCHAR(max),
  housingSitesBenefitting VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

CREATE TABLE generic_baselineData_infrastructures_outlinePlanningStatus (
  generic_baselineData_infrastructures_id INT,
  id INT,
  granted VARCHAR(max),
  reference VARCHAR(max),
  targetSubmission VARCHAR(max),
  targetGranted VARCHAR(max),
  summaryOfCriticalPath VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_outlinePlanningStatus (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_outlinePlanningStatus SET granted = 'No' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_outlinePlanningStatus SET reference = 'Ref101' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_outlinePlanningStatus SET targetSubmission = '2020-01-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_outlinePlanningStatus SET targetGranted = '2020-02-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_outlinePlanningStatus SET summaryOfCriticalPath = 'Summary of critical path' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_fullPlanningStatus (
  generic_baselineData_infrastructures_id INT,
  id INT,
  granted VARCHAR(max),
  grantedReference VARCHAR(max),
  targetSubmission VARCHAR(max),
  targetGranted VARCHAR(max),
  summaryOfCriticalPath VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_fullPlanningStatus (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_fullPlanningStatus SET granted = 'No' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_fullPlanningStatus SET grantedReference = '1234' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_fullPlanningStatus SET targetSubmission = '2020-03-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_fullPlanningStatus SET targetGranted = '2020-04-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_fullPlanningStatus SET summaryOfCriticalPath = 'Summary of critical path' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_s106 (
  generic_baselineData_infrastructures_id INT,
  id INT,
  requirement VARCHAR(max),
  summaryOfRequirement VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_s106 (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_s106 SET requirement = 'Yes' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_s106 SET summaryOfRequirement = 'Required' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_statutoryConsents (
  generic_baselineData_infrastructures_id INT,
  id INT,
  anyConsents VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

CREATE TABLE generic_baselineData_infrastructures_statutoryConsents_consents (
  generic_baselineData_infrastructures_statutoryConsents_id INT,
  id INT,
  detailsOfConsent VARCHAR(max),
  targetDateToBeMet VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_statutoryConsents_id) REFERENCES generic_baselineData_infrastructures_statutoryConsents(id)
);

INSERT INTO generic_baselineData_infrastructures_statutoryConsents_consents (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_statutoryConsents_consents SET detailsOfConsent = 'Details of consent' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_statutoryConsents_consents SET targetDateToBeMet = '2020-01-01' WHERE id = 0;


INSERT INTO generic_baselineData_infrastructures_statutoryConsents (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_statutoryConsents SET anyConsents = 'Yes' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_landOwnership (
  generic_baselineData_infrastructures_id INT,
  id INT,
  underControlOfLA VARCHAR(max),
  ownershipOfLandOtherThanLA VARCHAR(max),
  landAcquisitionRequired VARCHAR(max),
  howManySitesToAcquire INT,
  toBeAcquiredBy VARCHAR(max),
  targetDateToAcquire VARCHAR(max),
  summaryOfCriticalPath VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_landOwnership (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_landOwnership SET underControlOfLA = 'Yes' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET ownershipOfLandOtherThanLA = 'Dave' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET landAcquisitionRequired = 'Yes' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET howManySitesToAcquire = 10 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET toBeAcquiredBy = 'LA' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET targetDateToAcquire = '2020-01-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET summaryOfCriticalPath = 'Summary of critical path' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_procurement (
  generic_baselineData_infrastructures_id INT,
  id INT,
  contractorProcured VARCHAR(max),
  nameOfContractor VARCHAR(max),
  targetDate VARCHAR(max),
  summaryOfCriticalPath VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_procurement (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_procurement SET contractorProcured = 'Yes' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_procurement SET nameOfContractor = 'Steve' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_procurement SET targetDate = '2020-01-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_procurement SET summaryOfCriticalPath = 'Summary of critical meow' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_milestones (
  generic_baselineData_infrastructures_id INT,
  id INT,
  descriptionOfMilestone VARCHAR(max),
  target VARCHAR(max),
  summaryOfCriticalPath VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_milestones (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_milestones SET descriptionOfMilestone = 'Milestone One' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_milestones SET target = '2020-01-01' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_milestones SET summaryOfCriticalPath = 'Summary of critical path' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_expectedInfrastructureStart (
  generic_baselineData_infrastructures_id INT,
  id INT,
  targetDateOfAchievingStart VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_expectedInfrastructureStart (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_expectedInfrastructureStart SET targetDateOfAchievingStart = '2020-01-01' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_expectedInfrastructureCompletion (
  generic_baselineData_infrastructures_id INT,
  id INT,
  targetDateOfAchievingCompletion VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_expectedInfrastructureCompletion (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_expectedInfrastructureCompletion SET targetDateOfAchievingCompletion = '2020-01-01' WHERE id = 0;


CREATE TABLE generic_baselineData_infrastructures_risksToAchievingTimescales (
  generic_baselineData_infrastructures_id INT,
  id INT,
  descriptionOfRisk VARCHAR(max),
  impactOfRisk VARCHAR(max),
  likelihoodOfRisk VARCHAR(max),
  mitigationOfRisk VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_infrastructures_id) REFERENCES generic_baselineData_infrastructures(id)
);

INSERT INTO generic_baselineData_infrastructures_risksToAchievingTimescales (id) VALUES (0);
UPDATE generic_baselineData_infrastructures_risksToAchievingTimescales SET descriptionOfRisk = 'Risk one' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_risksToAchievingTimescales SET impactOfRisk = 'High' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_risksToAchievingTimescales SET likelihoodOfRisk = 'High' WHERE id = 0;
UPDATE generic_baselineData_infrastructures_risksToAchievingTimescales SET mitigationOfRisk = 'Do not do the thing' WHERE id = 0;


INSERT INTO generic_baselineData_infrastructures (id) VALUES (0);
UPDATE generic_baselineData_infrastructures SET type = 'A House' WHERE id = 0;
UPDATE generic_baselineData_infrastructures SET description = 'A house of cats' WHERE id = 0;
UPDATE generic_baselineData_infrastructures SET housingSitesBenefitting = 'Housing Sites Benefitting' WHERE id = 0;


CREATE TABLE generic_baselineData_fundingProfiles (
  generic_baselineData_id INT,
  id INT,
  period VARCHAR(max),
  instalment1 VARCHAR(max),
  instalment2 VARCHAR(max),
  instalment3 VARCHAR(max),
  instalment4 VARCHAR(max),
  total VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

INSERT INTO generic_baselineData_fundingProfiles (id) VALUES (0);
UPDATE generic_baselineData_fundingProfiles SET period = '2019/2020' WHERE id = 0;
UPDATE generic_baselineData_fundingProfiles SET instalment1 = '1000' WHERE id = 0;
UPDATE generic_baselineData_fundingProfiles SET instalment2 = '1000' WHERE id = 0;
UPDATE generic_baselineData_fundingProfiles SET instalment3 = '1000' WHERE id = 0;
UPDATE generic_baselineData_fundingProfiles SET instalment4 = '1000' WHERE id = 0;
UPDATE generic_baselineData_fundingProfiles SET total = '4000' WHERE id = 0;


CREATE TABLE generic_baselineData_costs (
  generic_baselineData_id INT,
  id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

CREATE TABLE generic_baselineData_costs_infrastructure (
  generic_baselineData_costs_id INT,
  id INT,
  costOfInfrastructure VARCHAR(max),
  totalCostOfInfrastructure VARCHAR(max),
  totallyFundedThroughHIF VARCHAR(max),
  descriptionOfFundingStack VARCHAR(max),
  totalPublic VARCHAR(max),
  totalPrivate VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_costs_id) REFERENCES generic_baselineData_costs(id)
);

INSERT INTO generic_baselineData_costs_infrastructure (id) VALUES (0);
UPDATE generic_baselineData_costs_infrastructure SET costOfInfrastructure = '10000' WHERE id = 0;
UPDATE generic_baselineData_costs_infrastructure SET totalCostOfInfrastructure = '20000' WHERE id = 0;
UPDATE generic_baselineData_costs_infrastructure SET totallyFundedThroughHIF = 'No' WHERE id = 0;
UPDATE generic_baselineData_costs_infrastructure SET descriptionOfFundingStack = 'Funding stack description' WHERE id = 0;
UPDATE generic_baselineData_costs_infrastructure SET totalPublic = '5000' WHERE id = 0;
UPDATE generic_baselineData_costs_infrastructure SET totalPrivate = '5000' WHERE id = 0;


INSERT INTO generic_baselineData_costs (id) VALUES (0);


CREATE TABLE generic_baselineData_baselineCashFlow (
  generic_baselineData_id INT,
  id INT,
  summaryOfRequirement VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

INSERT INTO generic_baselineData_baselineCashFlow (id) VALUES (0);
UPDATE generic_baselineData_baselineCashFlow SET summaryOfRequirement = 'data-url' WHERE id = 0;


CREATE TABLE generic_baselineData_recovery (
  generic_baselineData_id INT,
  id INT,
  aimToRecover VARCHAR(max),
  expectedAmountToRecover VARCHAR(max),
  methodOfRecovery VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

INSERT INTO generic_baselineData_recovery (id) VALUES (0);
UPDATE generic_baselineData_recovery SET aimToRecover = 'Yes' WHERE id = 0;
UPDATE generic_baselineData_recovery SET expectedAmountToRecover = '1000' WHERE id = 0;
UPDATE generic_baselineData_recovery SET methodOfRecovery = 'Methods' WHERE id = 0;


CREATE TABLE generic_baselineData_s151 (
  generic_baselineData_id INT,
  id INT,
  s151FundingEndDate VARCHAR(max),
  s151ProjectLongstopDate VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

INSERT INTO generic_baselineData_s151 (id) VALUES (0);
UPDATE generic_baselineData_s151 SET s151FundingEndDate = '2020-01-01' WHERE id = 0;
UPDATE generic_baselineData_s151 SET s151ProjectLongstopDate = '2020-01-01' WHERE id = 0;


CREATE TABLE generic_baselineData_outputsForecast (
  generic_baselineData_id INT,
  id INT,
  totalUnits INT,
  disposalStrategy VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

CREATE TABLE generic_baselineData_outputsForecast_housingForecast (
  generic_baselineData_outputsForecast_id INT,
  id INT,
  period VARCHAR(max),
  target VARCHAR(max),
  housingCompletions VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_outputsForecast_id) REFERENCES generic_baselineData_outputsForecast(id)
);

INSERT INTO generic_baselineData_outputsForecast_housingForecast (id) VALUES (0);
UPDATE generic_baselineData_outputsForecast_housingForecast SET period = '18/19' WHERE id = 0;
UPDATE generic_baselineData_outputsForecast_housingForecast SET target = '100' WHERE id = 0;
UPDATE generic_baselineData_outputsForecast_housingForecast SET housingCompletions = '0' WHERE id = 0;


INSERT INTO generic_baselineData_outputsForecast (id) VALUES (0);
UPDATE generic_baselineData_outputsForecast SET totalUnits = 10 WHERE id = 0;
UPDATE generic_baselineData_outputsForecast SET disposalStrategy = 'Disposal strategy' WHERE id = 0;


CREATE TABLE generic_baselineData_outputsActuals (
  generic_baselineData_id INT,
  id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_id) REFERENCES generic_baselineData(id)
);

CREATE TABLE generic_baselineData_outputsActuals_siteOutputs (
  generic_baselineData_outputsActuals_id INT,
  id INT,
  siteName VARCHAR(max),
  siteLocalAuthority VARCHAR(max),
  siteNumberOfUnits VARCHAR(max),
  PRIMARY KEY (id),
  FOREIGN KEY (generic_baselineData_outputsActuals_id) REFERENCES generic_baselineData_outputsActuals(id)
);

INSERT INTO generic_baselineData_outputsActuals_siteOutputs (id) VALUES (0);
UPDATE generic_baselineData_outputsActuals_siteOutputs SET siteName = 'Site name' WHERE id = 0;
UPDATE generic_baselineData_outputsActuals_siteOutputs SET siteLocalAuthority = 'Local Authority' WHERE id = 0;
UPDATE generic_baselineData_outputsActuals_siteOutputs SET siteNumberOfUnits = '123' WHERE id = 0;


INSERT INTO generic_baselineData_outputsActuals (id) VALUES (0);


INSERT INTO generic_baselineData (id) VALUES (0);


INSERT INTO generic (id) VALUES (0);
UPDATE generic SET type = 'hif' WHERE id = 0;
UPDATE generic_baselineData_summary SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_outlinePlanningStatus SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_fullPlanningStatus SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_s106 SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_statutoryConsents_consents SET generic_baselineData_infrastructures_statutoryConsents_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_statutoryConsents SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_landOwnership SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_procurement SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_milestones SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_expectedInfrastructureStart SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_expectedInfrastructureCompletion SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures_risksToAchievingTimescales SET generic_baselineData_infrastructures_id = 0 WHERE id = 0;
UPDATE generic_baselineData_infrastructures SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_fundingProfiles SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_costs_infrastructure SET generic_baselineData_costs_id = 0 WHERE id = 0;
UPDATE generic_baselineData_costs SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_baselineCashFlow SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_recovery SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_s151 SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_outputsForecast_housingForecast SET generic_baselineData_outputsForecast_id = 0 WHERE id = 0;
UPDATE generic_baselineData_outputsForecast SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData_outputsActuals_siteOutputs SET generic_baselineData_outputsActuals_id = 0 WHERE id = 0;
UPDATE generic_baselineData_outputsActuals SET generic_baselineData_id = 0 WHERE id = 0;
UPDATE generic_baselineData SET generic_id = 0 WHERE id = 0;
