module Hw1 where

data Cell = H | P | O | X deriving (Read,Show,Eq)
data Result = Fail | Caught (Int,Int) deriving (Read,Show,Eq)
data Direction = N | S | E | W deriving (Read,Show,Eq)

simulate :: [[Cell]] -> [(Direction, Direction)] -> Result
-- DO NOT CHANGE ABOVE THIS LINE, WRITE YOUR CODE BELOW --
simulate picture movement = fun (indexH picture) (indexP picture) (movementsOfHunter' movement) (movementsOfPrey' movement) (lengthH' picture) (lengthV' picture) (indicesOfObstacles' (listThem picture))
--------------------------------------------------------------------------------------------
convertToOneList xxs = [ x | xs <- xxs, x <- xs ]
findIndices xs = [ (x, i) | (x, i) <- zip xs [0..] ]
listThem xs = findIndices $ convertToOneList xs


indexOfHunter' b = [snd xs | xs <- b, fst xs == H ] !! 0
indexH xs = indexOfHunter' $ (listThem xs) 


indexOfPrey' b = [snd xs | xs <- b, fst xs == P] !! 0
indexP xs = indexOfPrey' $ (listThem xs)

movementsOfHunter' xxs 	= [fst xs | xs <- xxs]
movementsOfPrey' xxs 	= [snd xs | xs <- xxs]

lengthH' picture = sum [1|_ <- x ] where (x:_) = picture
lengthV' picture = sum [1|_ <- picture ]

indicesOfObstacles' picture = [snd xs | xs <- picture, fst xs == X]  
--------------------------------------------------------------------------------------------
fun indexOfHunter indexOfPrey [] [] hor_length ver_length obstacles
	| indexOfHunter == indexOfPrey 		= Caught (indexOfHunter `mod` hor_length, quot indexOfHunter hor_length)
	| otherwise 	= Fail
fun indexOfHunter indexOfPrey (x:xs) (y:ys) hor_length ver_length obstacles
    | indexOfHunter == indexOfPrey 		= Caught (indexOfHunter `mod` hor_length, quot indexOfHunter hor_length)
    | (x:xs) 		== [] 				= Fail
 	| otherwise 	= fun (coordinateOfCreature indexOfHunter x hor_length ver_length obstacles) (coordinateOfCreature indexOfPrey y hor_length ver_length obstacles) xs ys hor_length ver_length obstacles


coordinateOfCreature coordinate direction hor_length ver_length obstacles
	| (direction == E) && not 	((coordinate + 1) `elem` obstacles) && (((coordinate + 1) `mod` hor_length) /= 0) 	= coordinate + 1
	| (direction == W) && not	((coordinate - 1) `elem` obstacles) && ((coordinate `mod` hor_length) /= 0) 	= coordinate - 1
	| (direction == S) && not	((coordinate + hor_length) `elem` obstacles) && ((coordinate + hor_length) < hor_length*ver_length ) = coordinate + hor_length
	| (direction == N) && not	((coordinate - hor_length) `elem` obstacles) && ((coordinate - hor_length) >= 0)	= coordinate - hor_length
	| otherwise 																									= coordinate
--------------------------------------------------------------------------------------------

