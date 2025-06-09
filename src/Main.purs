module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  log "🍝"

newtype Complex =
  Complex {
    real :: Number
  , imaginary :: Number
  }

instance showComplex :: Show Complex where
  show (Complex { real, imaginary }) =
    case imaginary < 0.0 of
      true ->
        show real <> show imaginary <> "i"
      false ->
        show real <> "+" <> show imaginary <> "i"
