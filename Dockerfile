FROM ubuntu

RUN apt-get update && apt-get -y install haskell-platform
RUN cabal update && cabal install cabal-install && cabal install yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals
