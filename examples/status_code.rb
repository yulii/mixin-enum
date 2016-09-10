module StatusCode
  include Mixin::Enum

  REQUESTED    = 1
  IN_PROGRESS  = 2
  UNDER_REVIEW = 3
  APPROVED     = 4
  REJECTED     = 5
  CANCELLED    = 6
end
