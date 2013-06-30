-- Custom XMonad.hs file
-- This file should be present in ~/.xmonad/xmonad.hs
-- Anoop

import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.WindowNavigation

import qualified Data.Map as M

main = xmonad $ defaultConfig
    { borderWidth       = 5
    , modMask           = mod4Mask     --Super / Windows :( Key
    , normalBorderColor = "#FFFFFF"   
    , focusedBorderColor= "#FF0000"    
    , focusFollowsMouse = True
    --, layoutHook=avoidStruts
    --, manageHook=manageHook defaultConfig <+> manageDocks
      --, keys              = myKeyConfig  --Custom Key Config defined below
    }

-- My Custom Key Configurations
customKeyConfig conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
    [ ((modMask, xK_Right), sendMessage $ Go R)
    , ((modMask, xK_Left), sendMessage $ Go L)
    , ((modMask, xK_Up), sendMessage $ Go U)
    , ((modMask, xK_Down), sendMessage $ Go D)
    , ((modMask, xK_l), sendMessage $ Go R)
    , ((modMask, xK_h), sendMessage $ Go L)
    , ((modMask, xK_k), sendMessage $ Go U)
    , ((modMask, xK_j), sendMessage $ Go D)
    ]
--Union of custom Key Config with default key config
myKeys x = customKeyConfig x `M.union` keys defaultConfig x
