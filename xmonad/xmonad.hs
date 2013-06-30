-- Custom XMonad.hs file
-- This file should be present in ~/.xmonad/xmonad.hs
-- Anoop

import XMonad

main = xmonad $ defaultConfig
    { borderWidth        = 5
    , modMask = mod4Mask
    , normalBorderColor  = "#cccccc" }
