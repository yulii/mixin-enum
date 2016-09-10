module Map
  include Mixin::Enum
  enum_struct(:code, :text)

  REQUESTED    = EnumStruct.new(1, 'Requested')
  IN_PROGRESS  = EnumStruct.new(2, 'In progress')
  UNDER_REVIEW = EnumStruct.new(3, 'Under review')
  APPROVED     = EnumStruct.new(4, 'Approved')
  REJECTED     = EnumStruct.new(5, 'Rejected')
  CANCELLED    = EnumStruct.new(6, 'Cancelled')
end
