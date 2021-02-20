import Control.Applicative
import Control.Monad
import Data.Array.ST
import Data.Functor
import Data.Maybe
import Data.STRef
import qualified Data.Vector as V

-- IO
getLineAsList :: (Read a) => IO [a]
getLineAsList = map read . words <$> getLine

-- main
main :: IO ()
main = do
  -- n <- readLn  :: IO Int
  _ <- getLineAsList :: IO [Int]

  putStrLn "Hello World"
