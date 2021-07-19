--Defina uma função compareSets :: (Eq a) => [a] -> [a] -> String que responda

-- (1) o primeiro conjunto A contém o segundo conjunto B, 
--(2) se B contém A, 
--(3) se há interseção entre eles, 
--(4) se eles são disjuntos ou 
--(5) se eles são iguais. 

--Caso A contenha B, a saída deve ser "B c A"; 
--caso B contenha A, a saída deve ser "A c B";
--caso haja interseção, mas nenhum conjunto contenha o outro, a saída deve ser
--"Intersection";
-- caso não haja nenhum elemento em comum, a saída deve "Disjoint";
--caso os conjuntos sejam iguais, a saída deve ser "A = B". Nos conjuntos, a ordem e a
--quantidade de vezes que os elementos estão listados na coleção não é relevante.

igual :: (Eq a) => a -> [a] -> [a]
igual n (x:xs) | n == x = xs 
               | otherwise = x:(igual n xs)


aCb :: (Eq a) => a -> [a] -> Bool
aCb n (x:[])= if (n==x) == True then True else False
aCb n (x:xs) = if (n==x) == True then True else aCb n xs

--- verifica quantos numeros conjunto A tem em  comum com conjunto B
deleteN :: (Eq a) => [a] -> [a] -> Int
deleteN  _ [] = 0
deleteN [] _ = 0
deleteN (a:as) bs = if aCb a bs == True then 1 + (deleteN as(igual a bs)) else deleteN as bs

---funcao comp responsavel por comparar saida da deleteN em forma de Int
comp :: Int -> Int -> Int -> String
comp a b c | (a-c) == 0 && (b-c) == 0 = "A = B"
           | (a-c) /= 0 && (b-c) == 0 = "B c A"
           | (a-c) == 0 && (b-c) > 0 = "A c B"
           | (a-c) /= 0 && (b-c) >= 0 = "Intersection"
           | c == 0 = "Disjoint"




--funcao principal
compareSets :: (Eq a) => [a] -> [a] -> String
compareSets (a:as)(b:bs) = comp(length(a:as)) (length(b:bs))(deleteN(a:as)(b:bs))
