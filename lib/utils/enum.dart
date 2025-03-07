enum AppTheme {
  dark,
  purple,
}

enum FundWalletOption {
  transfer,
  online,
}

enum PlanStatus {
  active,
  inActive,
  expired,
}

enum ClaimStatus {
  pending,
  inspectionSubmitted,
  approved,
  declined,
  repairEstimateSubmitted,
  offerSent,
  offerAccepted,
  offerRejected,
  paid,
  settled,
}

enum ClaimQueryStatus {
  paid,
  inProgress,
  rejected,
}

String getClaimStatusDescription(ClaimStatus type) {
  switch (type) {
    case ClaimStatus.pending:
      return "Pending";
    case ClaimStatus.inspectionSubmitted:
      return "Inspection Submitted";
    case ClaimStatus.approved:
      return "Approved";
    case ClaimStatus.declined:
      return "Declined";
    case ClaimStatus.repairEstimateSubmitted:
      return "Repair Estimate Submitted";
    case ClaimStatus.offerSent:
      return "Offer Sent";
    case ClaimStatus.offerAccepted:
      return "Offer Accepted";

    case ClaimStatus.offerRejected:
      // return "Offer Rejected";
      return "Declined";

    case ClaimStatus.paid:
      return "Paid";
    case ClaimStatus.settled:
      return "Settled";

    default:
      return "assets/animations/success_animation.json";
  }
}

String getClaimStatusQuery(ClaimStatus status) {
  switch (status) {
    case ClaimStatus.pending:
      return "Pending&status=${"Inspection submitted"}&status=${"Approved"}&status=${"Repair Estimate Submitted"}&status=${"Offer Sent"}&status=${"Offer accepted"}";

    case ClaimStatus.paid:
      return "Paid&status=${"Settled"}";

    case ClaimStatus.offerRejected:
      return "Declined&status=${"Offer Rejected"}";

    default:
      return "assets/animations/success_animation.json";
  }
}

enum ToastStatus {
  success,
  pending,
  failed,
}

enum NotificationType {
  purchase,
  purchaseRefund,
  renewal,
  funding,
  withdrawal,
  accountCreation,
  accountActivation,
  passwordReset,
  inspection,
  claim,
  inspectionAsService,
  claimAsService,
  all,
  reminder,
  accountOnboarding,
  accountCompletion,
  weeklyReport,
}

extension NotificationTypeExtension on NotificationType {
  String get name {
    switch (this) {
      case NotificationType.purchase:
        return 'Purchase successful';
      case NotificationType.purchaseRefund:
        return 'Purchase refund successful';
      case NotificationType.renewal:
        return 'Renewal successful';
      case NotificationType.funding:
        return 'Funding successful';
      case NotificationType.withdrawal:
        return 'Withdrawal successful';
      case NotificationType.accountCreation:
        return 'Account creation successful';
      case NotificationType.accountActivation:
        return 'Account activated';
      case NotificationType.passwordReset:
        return 'Password reset successful';
      case NotificationType.inspection:
        return 'Inspection successful';
      case NotificationType.claim:
        return 'Claim successful';
      case NotificationType.inspectionAsService:
        return 'Inspection as a service successful';
      case NotificationType.claimAsService:
        return 'Claim as a service successful';
      case NotificationType.all:
        return 'All notifications';
      case NotificationType.reminder:
        return 'Reminder';
      case NotificationType.accountOnboarding:
        return 'Account onboarding completed';
      case NotificationType.accountCompletion:
        return 'Account completion successful';
      case NotificationType.weeklyReport:
        return 'Weekly report available';
      default:
        return '';
    }
  }
}

NotificationType? notificationTypeFromString(String name) {
  switch (name) {
    case 'purchase':
      return NotificationType.purchase;
    case 'purchase refund':
      return NotificationType.purchaseRefund;
    case 'renewal':
      return NotificationType.renewal;
    case 'funding':
      return NotificationType.funding;
    case 'withdrawal':
      return NotificationType.withdrawal;
    case 'account creation':
      return NotificationType.accountCreation;
    case 'account activation':
      return NotificationType.accountActivation;
    case 'password reset':
      return NotificationType.passwordReset;
    case 'inspection':
      return NotificationType.inspection;
    case 'claim':
      return NotificationType.claim;
    case 'inspection as service':
      return NotificationType.inspectionAsService;
    case 'claim as service':
      return NotificationType.claimAsService;
    case 'all':
      return NotificationType.all;
    case 'reminder':
      return NotificationType.reminder;
    case 'account onboarding':
      return NotificationType.accountOnboarding;
    case 'account completion':
      return NotificationType.accountCompletion;
    case 'Weekly report':
      return NotificationType.weeklyReport;
    default:
      return null;
  }
}
