module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Data.StrMap as SM

foo :: SM.StrMap Unit
foo = SM.delete "foo" $ SM.insert "foo" unit $ SM.empty

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log $ show $ foo
