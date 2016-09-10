#    |- CANCELLED <-|
#    |              |
# REQUESTED -> IN PROGRESS -> UNDER REVIEW -> APPROVED
#                   ^                 |
#                   |-   REJECTED   <-|

# module Statusflow
#   include Mixin::Enum
#
#   enumerated(:code, :text) do
#     set(:REQUESTED,    1, 'Requested')
#     set(:IN_PROGRESS,  2, 'In progress')
#     set(:UNDER_REVIEW, 3, 'Under review')
#     set(:APPROVED,     4, 'Approved')
#     set(:REJECTED,     5, 'Rejected')
#     set(:CANCELLED,    6, 'Cancelled')
#   end
# end
