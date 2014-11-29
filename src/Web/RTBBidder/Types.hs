module Web.RTBBidder.Types (
    Banner(..)
  , Imp(..)
  , Request(..)
  , Bid(..)
  , SeatBid(..)
  , Response(..)
  , Bidder
) where
import Web.RTBBidder.Protocol.OpenRTB22

type Bidder = Request -> IO Response
