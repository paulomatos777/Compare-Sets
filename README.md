# Compare-Sets

function compareSets :: (Eq a) => [a] -> [a] -> String responds if

-- (1) the first set A contains the second set B,
--(2) if B contains A,
--(3) if there is an intersection between them,
--(4) if they are disjoint or
---(5) if they are the same.

--If A contains B, the output must be "B c A";
--if B contains A, the output must be "A c B";
--if there is an intersection, but neither set contains the other, the output is
--"Intersection";
-- if there is no common element, the output is "Disjoint";
--if the sets are equal, the output is "A = B". In sets, the order and the
--the number of times the elements are listed in the collection is not relevant.



# Compare-Sets

função compareSets :: (Eq a) => [a] -> [a] -> String  responde se 

-- (1) o primeiro conjunto A contém o segundo conjunto B, 
--(2) se B contém A, 
--(3) se há interseção entre eles, 
--(4) se eles são disjuntos ou 
--(5) se eles são iguais. 

--Caso A contenha B, a saída deve é "B c A"; 
--caso B contenha A, a saída deve é "A c B";
--caso haja interseção, mas nenhum conjunto contenha o outro, a saída é
--"Intersection";
-- caso não haja nenhum elemento em comum, a saída é "Disjoint";
--caso os conjuntos sejam iguais, a saída é "A = B". Nos conjuntos, a ordem e a
--quantidade de vezes que os elementos estão listados na coleção não é relevante.
