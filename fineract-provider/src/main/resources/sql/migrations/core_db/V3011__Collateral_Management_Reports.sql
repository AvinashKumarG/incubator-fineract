INSERT INTO `stretchy_report` (`report_name`, `report_type`, `report_subtype`, `report_category`, `report_sql`, `description`, `core_report`, `use_report`) VALUES ('Collateral Stock Report', 'Pentaho', NULL, 'Collateral Management', NULL, NULL, 0, 0);
INSERT INTO `stretchy_report` (`report_name`, `report_type`, `report_subtype`, `report_category`, `report_sql`, `description`, `core_report`, `use_report`) VALUES ('Collateral Value And Coverage Report', 'Pentaho', NULL, 'Collateral Management', NULL, NULL, 0, 0);
INSERT INTO `stretchy_report` (`report_name`, `report_type`, `report_subtype`, `report_category`, `report_sql`, `description`, `core_report`, `use_report`) VALUES ('Loan Transaction Collateral Management', 'Pentaho', NULL, 'Collateral Management', NULL, NULL, 0, 0);
INSERT INTO `stretchy_report` (`report_name`, `report_type`, `report_subtype`, `report_category`, `report_sql`, `description`, `core_report`, `use_report`) VALUES ('Pledge Acceptance Report', 'Pentaho', NULL, NULL, 'Collateral Management', NULL, 0, 0);
INSERT INTO `stretchy_parameter` (`parameter_name`, `parameter_variable`, `parameter_label`, `parameter_displayType`, `parameter_FormatType`, `parameter_default`, `special`, `selectOne`, `selectAll`, `parameter_sql`, `parent_id`) VALUES ('pledgeSeal', 'Pledge/Seal No', 'Pledge/Seal No', 'text', 'string', 'n/a', NULL, NULL, NULL, NULL, NULL);

INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Collateral Stock Report'), (select id from stretchy_parameter where parameter_name='startDateSelect'), 'fromDate');
INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Collateral Stock Report'), (select id from stretchy_parameter where parameter_name='endDateSelect'), 'toDate');
INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Collateral Stock Report'), (select id from stretchy_parameter where parameter_name='OfficeIdSelectOne'), 'branch');

INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Collateral Value And Coverage Report'), (select id from stretchy_parameter where parameter_name='startDateSelect'), 'fromDate');
INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Collateral Value And Coverage Report'), (select id from stretchy_parameter where parameter_name='endDateSelect'), 'toDate');
INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Collateral Value And Coverage Report'), (select id from stretchy_parameter where parameter_name='OfficeIdSelectOne'), 'branch');

INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Loan Transaction Collateral Management'), (select id from stretchy_parameter where parameter_name='OfficeIdSelectOne'), 'branch');
INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Loan Transaction Collateral Management'), (select id from stretchy_parameter where parameter_name='pledgeSeal'), 'pledgeSeal');

INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Pledge Acceptance Report'), (select id from stretchy_parameter where parameter_name='OfficeIdSelectOne'), 'branch');
INSERT INTO `stretchy_report_parameter` (`report_id`, `parameter_id`, `report_parameter_name`) VALUES ((select id from stretchy_report where report_name='Pledge Acceptance Report'), (select id from stretchy_parameter where parameter_name='pledgeSeal'), 'pledgeSeal');
