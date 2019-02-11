isRigidInit n = [((read :: String -> Int)(x:[])) | y <-[0..((length(show n))-1)], x <- ([(show n) !! y])]
isRigid n = (sum (isRigidInit n) == product (isRigidInit n)

allRigids n = [x:[] | x <- [1..(n-1)], (sum (isRigidInit x) == product (isRigidInit x)]
