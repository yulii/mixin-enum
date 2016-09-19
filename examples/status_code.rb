module StatusCode
  include Mixin::Enum

  enumerated do
    set(:REQUESTED,    1)
    set(:IN_PROGRESS,  2)
    set(:UNDER_REVIEW, 3)
    set(:APPROVED,     4)
    set(:REJECTED,     5)
    set(:CANCELLED,    6)
  end
end
