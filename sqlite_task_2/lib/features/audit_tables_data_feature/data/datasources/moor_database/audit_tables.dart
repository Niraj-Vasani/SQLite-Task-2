import 'package:moor_flutter/moor_flutter.dart';

class AuditDetailsTables extends Table {
  // IntColumn get userId => integer()();
  // TextColumn get auditName => text().withLength(min: 1, max: 50)();
  IntColumn get auditId => integer().autoIncrement()();
  // BoolColumn get failureReason => boolean()();
  // BoolColumn get correctiveAction => boolean()();
  // BoolColumn get auditorSignOff => boolean()();
  // BoolColumn get secondarySignOff => boolean()();
  // BoolColumn get entityMustAddress => boolean()();
  // IntColumn get scoringFormulaId => integer()();
  // IntColumn get auditMasterId => integer()();
  // BoolColumn get autoSyncInMobile => boolean()();
  // IntColumn get versionId => integer().nullable()();
  // IntColumn get isFailureText => integer()();
  // IntColumn get isFailureList => integer()();
  // IntColumn get isCorrectiveActionText => integer()();
  // IntColumn get isCorrectiveActionList => integer()();
  // IntColumn get defaultTaskDueDateDays => integer()();
  // BoolColumn get task => boolean()();
  // BoolColumn get allowDueDate => boolean()();
  // BoolColumn get sendTaskAlertEmail => boolean()();
  // IntColumn get barcodeOrNFC => integer()();
  // BoolColumn get canEdit => boolean()();
  // BoolColumn get showScoreInMobile => boolean()();
  // BoolColumn get isRecheck => boolean()();
  // BoolColumn get isRandomization => boolean()();
  // BoolColumn get isQuestionCategory => boolean()();
  // BoolColumn get isNotifyAuditor => boolean()();
  // TextColumn get auditorDeclarationText =>
  //     text().withLength(min: 1, max: 50).nullable()();
  // TextColumn get secondaryDeclarationText =>
  //     text().withLength(min: 1, max: 50).nullable()();
  // BoolColumn get isScheduling => boolean()();
  // BoolColumn get isFormerData => boolean()();
  // BoolColumn get isAuditQuestions => boolean()();
  // BoolColumn get isEntitiesAuditable => boolean()();
  // BoolColumn get isEnforceFormerAudit => boolean()();
  // BoolColumn get isFlipScore => boolean()();
  // BoolColumn get auditTracking => boolean()();
  // BoolColumn get isMultipleLevelTeam => boolean()();
  // BoolColumn get isTaskDistribution => boolean()();
  // BoolColumn get approveProcessEntitiesMandatory => boolean()();
  // BoolColumn get approvalProcess => boolean()();
  // BoolColumn get submissionPasswordRequired => boolean()();
  // BoolColumn get isViewOnlyFormerData => boolean()();
  // IntColumn get auditGroupId => integer()();
  // DateTimeColumn get auditEndDate => dateTime().nullable()();
  // IntColumn get lastAuditResponseId => integer().nullable()();
}

class ScoringTypesTables extends Table {
  IntColumn get scoringTypeId => integer().autoIncrement()();
  // TextColumn get scoringTypeName => text().withLength(min: 1, max: 50)();
  // IntColumn get applicationLanguageId => integer()();
}

class ScoringFormulaInfoTables extends Table {
  // IntColumn get scoringFormulaId => integer()();
  IntColumn get scoringFormulaDetailId => integer().autoIncrement()();
  // IntColumn get scoringtypeid => integer()();
  // TextColumn get shortCode => text().withLength(min: 1, max: 50)();
  // IntColumn get sortOrder => integer()();
  // TextColumn get title => text().withLength(min: 1, max: 50)();
  // IntColumn get weight => integer().nullable()();
  // BoolColumn get isDefault => boolean()();
  // TextColumn get hexCode => text().withLength(min: 1, max: 50)();
  // TextColumn get fontHexCode => text().withLength(min: 1, max: 50)();
  // BoolColumn get isAuditQuestions => boolean()();
  // IntColumn get initialAuditScore => integer().nullable()();
}

class AuditScoringTables extends Table {
  IntColumn get auditScoringId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // IntColumn get minScore => integer()();
  // RealColumn get maxScore => real().nullable()();
  // TextColumn get color => text().withLength(min: 1, max: 50)();
}

class AuditEntityTables extends Table {
  IntColumn get auditEntityId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // TextColumn get auditEntityName => text().withLength(min: 1, max: 50)();
  // IntColumn get auditEntityTypeId => integer()();
  // IntColumn get auditParentEntityId => integer()();
  // IntColumn get sequenceNo => integer()();
  // TextColumn get entityEndDate => text().nullable()();
  // BoolColumn get isLeafNode => boolean()();
  // TextColumn get barcodeNFC => text().nullable()();
  // IntColumn get entityLevel => integer()();
  // BoolColumn get entityException => boolean().nullable()();
  // TextColumn get scheduleOccurrenceIds => text().nullable()();
}

class AuditQuestionTables extends Table {
  IntColumn get auditQuestionId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // TextColumn get questionTitle => text().withLength(min: 1, max: 50)();
  // IntColumn get sequenceNo => integer()();
  // TextColumn get description => text()();
  // IntColumn get weight => integer()();
  // IntColumn get statusId => integer()();
  // TextColumn get questionCategory => text().withLength(min: 1, max: 50)();
  // IntColumn get questionCategoryId => integer().nullable()();
  // IntColumn get questionImageId => integer().nullable()();
  // TextColumn get imageUrl => text().nullable()();
}

class AuditEntityTypesTables extends Table {
  // IntColumn get auditId => integer()();
  IntColumn get auditEntityTypeId => integer().autoIncrement()();
  // TextColumn get auditEntityTypeName => text().withLength(min: 1, max: 50)();
  // IntColumn get entityTypeWeight => integer().nullable()();
}

class AuditEntityTypeQuestionsTables extends Table {
  // IntColumn get auditEntityTypeId => integer()();
  IntColumn get auditEntityTypeQuestionId => integer().autoIncrement()();
  // IntColumn get auditQuestionId => integer().nullable()();
}

class AuditCorrectiveActionsTables extends Table {
  IntColumn get auditCorrectiveActionId => integer()();
  // IntColumn get auditEntityTypeQuestionId => integer()();
  // IntColumn get auditQuestionCorrectiveActionId => integer()();
  // TextColumn get correctiveActionTitle => text().withLength(min: 1, max: 50)();
  // IntColumn get auditId => integer()();
}

class AuditFailureReasonTables extends Table {
  // IntColumn get auditQuestionFailureReasonId => integer()();
  // IntColumn get auditEntityTypeQuestionId => integer()();
  IntColumn get auditFailureReasonId => integer()();
  // TextColumn get failureReasonTitle => text().withLength(min: 1, max: 50)();
  // IntColumn get auditId => integer()();
}

class AuditAdditionalFieldsTables extends Table {
  IntColumn get additionalFieldId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // TextColumn get fieldName => text().withLength(min: 1, max: 50)();
  // IntColumn get fieldTypeId => integer()();
  // IntColumn get displayPosition => integer().nullable()();
  // BoolColumn get isMandatory => boolean()();
  // BoolColumn get isPreDisplay => boolean().nullable()();
  // IntColumn get levelTypeId => integer()();
  // IntColumn get auditQuestionId => integer().nullable()();
  // IntColumn get sequenceNo => integer()();
  // BoolColumn get isMask => boolean()();
  // TextColumn get maskPattent => text().nullable()();
  // TextColumn get maskPlaceholder => text().nullable()();
}

class AuditAdditionalFieldTypeValuesTables extends Table {
  IntColumn get additionalFieldTypeValueId => integer().autoIncrement()();
  // IntColumn get additionalFieldId => integer()();
  // TextColumn get additionalFieldValue => text()();
}

class AuditAdditionalFieldEntityTypesTables extends Table {
  IntColumn get additionalFieldEntityTypeId => integer().autoIncrement()();
  // IntColumn get additionalFieldId => integer()();
  // IntColumn get entityTypeId => integer()();
  // IntColumn get entityLevel => integer()();
}

class SizeTables extends Table {
  IntColumn get androidMaxUploadFileSize => integer()();
  // IntColumn get iosMaxUploadFileSize => integer()();
  // IntColumn get htmL5MaxUploadFileSize => integer()();
  // IntColumn get additionalFieldEmail => integer()();
  // IntColumn get additionalFieldTextArea => integer()();
  // IntColumn get additionalFieldTextBox => integer()();
  // IntColumn get additionalFieldLocation => integer()();
  // IntColumn get comment => integer()();
  // IntColumn get failureNote => integer()();
  // IntColumn get correctiveNote => integer()();
  // IntColumn get barcode => integer()();
  // IntColumn get taskComment => integer()();
  // IntColumn get sessionTimeOut => integer()();
  // IntColumn get signDeclarationTextSize => integer()();
  // IntColumn get nfcComment => integer()();
  // IntColumn get captureImageNote => integer()();
  // IntColumn get nonAuditableComment => integer()();
  // IntColumn get flipScoreTime => integer()();
  // IntColumn get eventNumber => integer()();
  // IntColumn get eventTitle => integer()();
  // IntColumn get eventDescription => integer()();
  // IntColumn get eventRiskAssociated => integer()();
  // IntColumn get eventImmediateActionTaken => integer()();
  // IntColumn get eventCorrectiveActions => integer()();
  // IntColumn get eventSituationTitle => integer()();
  // IntColumn get eventSituationDetails => integer()();
  // IntColumn get eventKeyIssueTitle => integer()();
  // IntColumn get eventKeyIssueActionTitle => integer()();
  // IntColumn get injuryPersonName => integer()();
  // IntColumn get injurySupervisiorName => integer()();
  // IntColumn get eventInjuryComment => integer()();
  // IntColumn get eventScheduleTitle => integer()();
  // IntColumn get keyIssueActionComment => integer()();
  // IntColumn get situationTitle => integer()();
  // IntColumn get situationDetail => integer()();
  // IntColumn get lostHours => integer()();
  // IntColumn get initialRootCauses => integer()();
  // IntColumn get finalClosureNotes => integer()();
  // IntColumn get maxEventAttachment => integer()();
  // IntColumn get maxEventInvestigationAttachment => integer()();
  // IntColumn get defaultTaskDueDateDays => integer()();
}

class AuditTeamTaskTables extends Table {
  IntColumn get auditTeamMappingId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // IntColumn get auditEntityId => integer()();
  // IntColumn get teamId => integer()();
  // IntColumn get memberId => integer()();
}

class TeamDetailsTables extends Table {
  IntColumn get teamId => integer().autoIncrement()();
  // TextColumn get teamName => text().withLength(min: 1, max: 50)();
}

class UserDetailsTables extends Table {
  // TextColumn get firstName => text().withLength(min: 1, max: 50)();
  // TextColumn get lastName => text().withLength(min: 1, max: 50)();
  IntColumn get memberId => integer().autoIncrement()();
}

class UserPermissionTables extends Table {
  BoolColumn get userTaskPermission => boolean()();
}

class OccurrenceScheduleDatesTables extends Table {
  IntColumn get occurrenceScheduleDateId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // IntColumn get auditScheduleRuleId => integer()();
  // IntColumn get scheduleOccurrenceId => integer()();
  // TextColumn get scheduleRuleTitle => text().withLength(min: 1, max: 50)();
  // TextColumn get occurrenceTitle => text().withLength(min: 1, max: 50)();
  // IntColumn get occurrenceCycle => integer()();
  // TextColumn get startDate => text().withLength(min: 1, max: 50)();
  // TextColumn get endDate => text().withLength(min: 1, max: 50)();
  // IntColumn get auditStatusId => integer()();
  // IntColumn get userId => integer()();
  // BoolColumn get isEntityRule => boolean()();
}

class AuditEnforceTimeDataTables extends Table {
  IntColumn get enforceTimeId => integer().autoIncrement()();
  // IntColumn get auditId => integer()();
  // TextColumn get fromTime => text().withLength(min: 1, max: 50)();
  // TextColumn get toTime => text().withLength(min: 1, max: 50)();
}

class AuditGroupsTables extends Table {
  IntColumn get auditGroupId => integer().autoIncrement()();
  // IntColumn get auditGroupParentId => integer().nullable()();
  // TextColumn get auditGroupName => text().withLength(min: 1, max: 50)();
  // IntColumn get auditGroupLevel => integer()();
  // IntColumn get auditCount => integer()();
}
