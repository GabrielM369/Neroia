import 'process_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ProcessLocalizationsEn extends ProcessLocalizations {
  ProcessLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get endTitle => 'End';

  @override
  String get endSubtitle => 'What\'s next?';

  @override
  String get endCopy => 'Here you can check off your process and review your results.';

  @override
  String get endButton => 'Overview';

  @override
  String get active => 'Active';

  @override
  String get openToDos => 'Open ToDo\'s';

  @override
  String get completed => 'Completed';

  @override
  String created(String date) {
    return 'Created on $date';
  }

  @override
  String author(String id) {
    return 'Author: $id';
  }

  @override
  String get noProcessFound => 'No process found';

  @override
  String get noNeedQuestion => 'No decision question';

  @override
  String get needQuestion => 'Decision Question';

  @override
  String get goals => 'Goals';

  @override
  String get limitations => 'General Conditions';

  @override
  String get options => 'Options for action';

  @override
  String get rating => 'Rating';

  @override
  String get resistance => 'Resistance';

  @override
  String get fits => 'fits';

  @override
  String get notApplicable => 'N.A.';

  @override
  String useInPoints(int value) {
    return '$value Benefit';
  }

  @override
  String acceptanceInPercent(int value) {
    return '$value% Acceptance';
  }

  @override
  String step(int step) {
    return 'Step $step';
  }

  @override
  String get ratingResult => 'Rating Result';

  @override
  String get use => 'Benefit';

  @override
  String get ratingResultExplanation => 'Alternatives in descending order of total benefit in the goals [in %].';

  @override
  String get singularRating => 'Singular Rating';

  @override
  String get fulfillment => 'Fulfillment';

  @override
  String get rateYourSuggestions => 'Rate your suggestions!';

  @override
  String get ratingLimitationExplanation => 'Rate the alternatives individually regarding the fulfillment of the general conditions.';

  @override
  String get ratingGoalExplanation => 'Rate the alternatives individually from -5 to +5 according to the goal fulfillment.';

  @override
  String get yourRatings => 'Your Ratings';

  @override
  String get defineDesiredEffect => 'Define the desired effect!';

  @override
  String get whatDoIWantToAchieve => 'What do I want to achieve?';

  @override
  String get myGoals => 'My Goals';

  @override
  String get addGoal => 'Add Goal';

  @override
  String get homePageTitle => 'Home Page';

  @override
  String get defineYourFrame => 'Define your frame!';

  @override
  String get whatAreTheConditions => 'What are the general conditions?';

  @override
  String get myLimitations => 'My General Conditions';

  @override
  String get addLimitation => 'Add General Condition';

  @override
  String get whatDoYouWantToDecide => 'What do you want to decide?';

  @override
  String get exampleQuestion => 'Example Question';

  @override
  String get findSuggestions => 'Find suitable suggestions!';

  @override
  String get whatAreYourOptions => 'What are the alternatives?';

  @override
  String get myOptions => 'My Options for Action';

  @override
  String get addOption => 'Add Option for Action';

  @override
  String get createProcess => 'Create Process';

  @override
  String get processTitle => 'Create a new process';

  @override
  String get minimumBenefit => 'Minimum Benefit';

  @override
  String get benefitRating => 'BenefitRating';

  @override
  String get benefitRatingBold => 'Benefit';

  @override
  String get makeYourChoice => 'Make your decision';

  @override
  String get resistanceMeasurement => 'Resistance Measurement';

  @override
  String get resistanceMeasurementBold => 'Resistance';

  @override
  String get resistanceMeasurementExplanation => 'Rate the action options individually from 0-10 according to your resistance to them.';

  @override
  String get yourRating => 'Your Rating';

  @override
  String get belowTheThreshold => 'Below the threshold';

  @override
  String get decisionResult => 'Decision Result';

  @override
  String get acceptance => 'Acceptance Decision';

  @override
  String get acceptanceBold => 'Acceptance';

  @override
  String get resistanceResultExplanation => 'Alternatives in descending order of your measured acceptance [in %].';

  @override
  String get editRating => 'Edit Rating';

  @override
  String get finishProcess => 'Finish Process';

  @override
  String get chooseAGoalForThisOption => 'Choose a goal for this option to pay into:';

  @override
  String get noGoalsFound => 'No goals found';

  @override
  String get processListTitle => 'Processes';

  @override
  String get emptyProcessList => 'No processes available';

  @override
  String get addProcess => 'Add Process';

  @override
  String get resultGroup => 'Result Group';

  @override
  String get abstract => 'Abstraction';

  @override
  String get moreGeneral => 'More General';

  @override
  String get inputLevel => 'Input Level';

  @override
  String get moreSpecific => 'More Specific';

  @override
  String get focus => 'Focus';

  @override
  String get suggestions => 'Suggestions';

  @override
  String get decisionOn => 'Decision on';

  @override
  String get exitConfirmation => 'Discard Changes?';

  @override
  String get exitConfirmationMessage => 'You have unsaved changes. Are you sure you want to go back?';

  @override
  String get exit => 'Discard Changes';

  @override
  String get keep => 'Keep';

  @override
  String get suggestGoals => 'Ziele vorschlagen';
}
