module SortSpec where
import Util.Sort
import Test.Hspec
spec :: Spec

spec = do
 describe "quicksort" $ do
   it "sorts []" $
     quicksort ([] :: [Int]) `shouldBe` []
   it "sorts [1,0,2]" $
     quicksort [1,0,2] `shouldBe` [0,1,2]