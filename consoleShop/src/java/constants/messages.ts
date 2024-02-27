export const USERS_MESSAGES = {
  VALIDATION_ERROR: 'Validation error',
  //name
  NAME_IS_REQUIRED: 'Name is required',
  NAME_MUST_BE_A_STRING: 'Name must be a string',
  NAME_LENGTH_MUST_BE_FROM_1_TO_100: 'Name length must be from 1 to 100',
  //email
  EMAIL_ALREADY_EXISTS: 'Email already exists',
  EMAIL_IS_REQUIRED: 'Email is required',
  EMAIL_IS_INVALID: 'Email is invalid',
  EMAIL_VERIFY_SUCCESS: 'Email verify success',
  RESEND_EMAIL_VERIFY_SUCCESS: 'RESEND_EMAIL_VERIFY_SUCCESS',
  //password
  PASSWORD_IS_REQUIRED: 'Password is required',
  PASSWORD_MUST_BE_A_STRING: 'Password must be a string',
  PASSWORD_LENGTH_MUST_BE_FROM_8_TO_50: 'Password length must be from 8 to 50',
  PASSWORD_MUST_BE_STRONG:
    'Password must be at least 8 characters long and contain at least 1 lowercase letter, 1 uppercase letter, 1 number, and 1 symbol',
  //confirmPassword
  CONFIRM_PASSWORD_IS_REQUIRED: 'Confirm password is required',
  CONFIRM_PASSWORD_MUST_BE_A_STRING: 'Confirm password must be a string',
  CONFIRM_PASSWORD_LENGTH_MUST_BE_FROM_8_TO_50: 'Confirm length must be from 8 to 50',
  CONFIRM_PASSWORD_MUST_BE_STRONG:
    'Confirm password must be at least 8 characters long and contain at least 1 lowercase letter, 1 uppercase letter, 1 number, and 1 symbol',
  CONFIRM_PASSWORD_MUST_BE_THE_SAME_AS_PASSWORD: 'Confirm password must be the same as password',
  //dateOfBirth
  DATE_OF_BIRTH_BE_ISO8601: 'Date of birth must be ISO8601',
  //user
  EMAIL_OR_PASSWORD_IS_INCORRECT: 'Email or password is incorrect',
  EMAIL_VERIFY_TOKEN_IS_REQUIRED: 'Email verify token is required',
  EMAIL_ALREADY_VERIFIED_BEFORE: 'Email already verified before',
  LOGIN_SUCCESS: 'login successfully',
  REGISTER_SUCCESS: 'Register successfullys',
  ACCESS_TOKEN_IS_REQUIRED: 'Access token is required',
  REFRESH_TOKEN_IS_REQUIRED: 'Refresh token is required',
  REFRESH_TOKEN_IS_INVALID: 'Refresh token is invalid',
  USED_REFRESH_TOKEN_OR_NOT_EXIST: ' Used refresh token or not exist',
  USER_NOT_FOUND: 'User not found',
  LOGOUT_SUCCESS: 'Logout successfully',
  FORGOT_PASSWORD_SUCCESS: 'forgot password success',
  CHECK_EMAIL_TORESET_PASSWORD: 'Check email to reset password',
  FOTGOT_PASSWORD_TOKEN_IS_REQUIRED: 'FOTGOT_PASSWORD_TOKEN_IS_REQUIRED',
  FORGOT_PASSWORD_TOKEN_IS_INVALID: 'FORGOT_PASSWORD_TOKEN_IS_INVALID',
  VERIFY_FORGOT_PASSWORD_TOKEN_SUCCESS: 'VERIFY_FORGOT_PASSWORD_TOKEN_SUCCESS',
  RESET_PASSWORD_SUCCESS: 'RESET_PASSWORD_SUCCESS',
  GET_ME_SUCCESS: 'GET_ME_SUCCESS',
  USER_IS_NOT_VERIRIED: 'USER_IS_NOT_VERIRIED',
  IMAGE_MUST_BE_A_STRING: 'IMAGE_MUST_BE_A_STRING',
  _IMAGE_LENGTH_MUST_BE_FROM_1_TO_400: '_IMAGE_LENGTH_MUST_BE_FROM_1_TO_400',
  BIO_MUST_BE_A_STRING: 'BIO_MUST_BE_A_STRING',
  BIO_LENGTH_MUST_BE_LESS_THAN_200: 'BIO_LENGTH_MUST_BE_LESS_THAN_200',
  LOCATION_MUST_BE_A_STRING: 'LOCATION_MUST_BE_A_STRING',
  LOCATION_LENGTH_MUST_BE_LESS_THAN_200: 'LOCATION_LENGTH_MUST_BE_LESS_THAN_200',
  WEBSITE_MUST_BE_A_STRING: 'WEBSITE_MUST_BE_A_STRING',
  WEBSITE_LENGTH_MUST_BE_LESS_THAN_200: 'WEBSITE_LENGTH_MUST_BE_LESS_THAN_200',
  USERNAME_MUST_BE_A_STRING: 'USERNAME_MUST_BE_A_STRING',
  USERNAME_LENGTH_MUST_BE_LESS_THAN_50: 'USERNAME_LENGTH_MUST_BE_LESS_THAN_50',
  UPDATE_ME_SUCCESS: 'UPDATE_ME_SUCCESS',
  GET_PROFILE_SUCCESS: 'GET_PROFILE_SUCCESS',
  INVALID_FOLLOWED_USER_ID: 'INVALID_FOLLOWED_USER_ID',
  FOLLOWED_USER_NOT_FOUND: 'FOLLOWED_USER_NOT_FOUND',
  FOLLOWED: 'FOLLOWED',
  FOLLOW_SUCCESS: 'FOLLOW_SUCCESS',
  INVALID_USER_ID: 'INVALID_USER_ID',
  ALREADY_UNFOLLOWED: 'ALREADY_UNFOLLOWED',
  UNFOLLOW_SUCCESS: 'UNFOLLOW_SUCCESS',
  USERNAME_ALREADY_EXIST: 'USERNAME_ALREADY_EXIST',
  OLD_PASSWORD_NOT_MATCH: 'OLD_PASSWORD_NOT_MATCH',
  CHANGE_PASSWORD_SUCCESS: 'CHANGE_PASSWORD_SUCCESS',
  REFRESH_TOKEN_SUCCESS: 'REFRESH_TOKEN_SUCCESS',
  EMAIL_NOT_VERIFIED: 'EMAIL_NOT_VERIFIED',
  UPLOAD_SUCCESS: ' UPLOAD_SUCCESS'
} as const

export const TWEETS_MESSAGES = {
  INVALID_TYPE: 'Invalid type',
  INVALID_AUDIENCE: 'Invalid audience',
  PARENT_ID_MUST_BE_A_VALID_TWEET_ID: 'Parent id must be a valid tweet id',
  PARENT_ID_MUST_BE_NULL: 'Parent id must be null',
  CONTENT_MUST_BE_NULL: 'Content must be null',
  CONTENT_MUST_BE_A_NON_EMPTY_STRING: 'Content must be a non-empty string',
  HASHTAGS_MUST_BE_AN_ARRAY_OF_STRING: 'Hashtags must be an array of string',
  MENTIONS_MUST_BE_AN_ARRAY_OF_user_id: 'Mentions must be an array of user id',
  MEDIAS_MUST_BE_AN_ARRAY_OF_MEDIA_OBJECT: 'Medias must be an array of media object',
  CONTENT_MUST_BE_EMPTY_STRING: 'CONTENT_MUST_BE_EMPTY_STRING',
  TWEET_CREATED_SUCCESSFULLY: 'TWEET_CREATED_SUCCESSFULLY'
} as const