-- | Network uri lenses
module Network.Uri.Lens
  ( regNameLens
  , userInfoLens
  , portLens
  , uriAuthLens
  , uriSchemeLens
  , uriPathLens
  , uriQueryLens
  , uriFragmentLens
  ) where

import           Control.Lens
import           Network.URI

regNameLens :: Lens' URIAuth String
regNameLens = lens uriRegName (\parent newVal -> parent {uriRegName = newVal})

userInfoLens :: Lens' URIAuth String
userInfoLens =
  lens uriUserInfo (\parent newVal -> parent {uriUserInfo = newVal})

portLens :: Lens' URIAuth String
portLens = lens uriPort (\parent newVal -> parent {uriPort = newVal})

uriAuthLens :: Lens' URI (Maybe URIAuth)
uriAuthLens =
  lens uriAuthority (\parent newVal -> parent {uriAuthority = newVal})

uriSchemeLens :: Lens' URI String
uriSchemeLens = lens uriScheme (\parent newVal -> parent {uriScheme = newVal})

uriPathLens :: Lens' URI String
uriPathLens = lens uriPath (\parent newVal -> parent {uriPath = newVal})

uriQueryLens :: Lens' URI String
uriQueryLens = lens uriQuery (\parent newVal -> parent {uriQuery = newVal})

uriFragmentLens :: Lens' URI String
uriFragmentLens =
  lens uriFragment (\parent newVal -> parent {uriFragment = newVal})
