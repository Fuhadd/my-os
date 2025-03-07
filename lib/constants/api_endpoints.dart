class ApiEndpoints {
  //MATCHES
  static const initialiseSdk = "sdk/initialize";
  static const login = "auth/login";
  static const updatePassword = "auth/change-password";
  static const resetPassword = "auth/reset-password";
  static const uploadFile = "upload-file";
  static const confirmResetPassword = "auth/update-password";
  static const createPin = "auth/create-pin";
  static const updateProfile = 'customers/update-profile';
  static const getUserDetails = "users/me";
  static const getBusinessPublicKey = "distributors/get-public-key";

  static const getUserPlans = "policies";
  static const searchPlans = "policies/search";
  static const getAllNotifications = "notification/get-all";
  static const getHospitalList = "products/bastion/get-hospital-list";

  // products/bastion/get-hospital-list?state=Lagos&plan=ZenCare%20Plus

  static const getUserClaims = "claims/as-customer";
  static const getClaimablePolicies = "policies/my-active-claimable-policies";

  // static const searchClaims = "claims/search";

  //PRODUCTS
  static const getAllProducts = "products/get-all-products";
  static const getProductCategories = "products/get-product-categories";

  //BANK
  static const getVirtualAccount = "bank/get-accounts";
  static const initializePaystackTransaction = "bank/initialize-transaction";

  //WALLET
  static const getWalletBalance = "wallet/balance";
  static const fundWallet = "wallet/fund";

  static const requestVirtualAccount = "distributors/request-virtual-account";

  static const verifyTransaction = "sdk/verify-transaction";
}
