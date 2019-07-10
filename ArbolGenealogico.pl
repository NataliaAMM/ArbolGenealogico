padrede('Rafael','Fabriciano').
padrede('Hortencia','Fabriciano').
padrede('Rafael','Marina').
padrede('Hortencia','Marina').
padrede('Rafael','Julio').
padrede('Hortencia','Julio').
padrede('Rafael','Laurentino').
padrede('Hortencia','Laurentino').

padrede('Tomas','Teresa').
padrede('Carmen','Teresa').
padrede('Tomas','Trancito').
padrede('Carmen','Trancito').
padrede('Tomas','Luis').
padrede('Carmen','Luis').
padrede('Tomas','Ana Victoria').
padrede('Carmen','Ana Victoria').

padrede('Fabiciano','Ana').
padrede('Teresa','Ana').
padrede('Fabiciano','Alicia').
padrede('Teresa','Alicia').
padrede('Fabiciano','Gerardo').
padrede('Teresa','Gerardo').
padrede('Fabiciano','Miriam').
padrede('Teresa','Miriam').
padrede('Fabiciano','Edilberto').
padrede('Teresa','Edilberto').


padrede('Leovigildo','Jose Maria').
padrede('Maria Elena','Jose Maria').
padrede('Leovigildo','Jose Eduardo').
padrede('Maria Elena','Jose Eduardo').
padrede('Leovigildo','Juan de Jesus').
padrede('Maria Elena','Juan de Jesus').
padrede('Leovigildo','Maria Antonia').
padrede('Maria Elena','Maria Antonia').
padrede('Leovigildo','Maria del Carmen').
padrede('Maria Elena','Maria del Carmen').
padrede('Leovigildo','Maria del Transito').
padrede('Maria Elena','Maria del Transito').
padrede('Leovigildo','Inosencio').
padrede('Maria Elena','Inosencio').
padrede('Leovigildo','Luis Antonio').
padrede('Maria Elena','Luis Antonio').

padrede('Juan Segundo','Aura Rosa').
padrede('Ascencion','Aura Rosa').
padrede('Juan Segundo','Pedro').
padrede('Ascencion','Pedro').
padrede('Juan Segundo','Aurora').
padrede('Ascencion','Aurora').
padrede('Juan Segundo','Olga').
padrede('Ascencion','Olga').
padrede('Juan Segundo','Victoria').
padrede('Ascencion','Victoria').
padrede('Juan Segundo','Alberto').
padrede('Ascencion','Alberto').
padrede('Juan Segundo','Rafael Hernando').
padrede('Ascencion','Rafael Hernando').
padrede('Juan Segundo','Carmenza').
padrede('Ascencion','Carmenza').

padrede('Jose Maria','Miguel').
padrede('Aura Rosa','Miguel').
padrede('Jose Maria','Ines').
padrede('Aura Rosa','Ines').
padrede('Jose Maria','Aura').
padrede('Aura Rosa','Aura').
padrede('Jose Maria','Clara').
padrede('Aura Rosa','Clara').
padrede('Jose Maria','Juan Alberto').
padrede('Aura Rosa','Juan Alberto').
padrede('Jose Maria','Sonia').
padrede('Jose Maria','Doris').
padrede('Jose Maria','Ruth').
padrede('Jose Maria','Amparo').
padrede('Jose Maria','Maria').
padrede('Jose Maria','Oswaldo').
padrede('Jose Maria','Francisco').



padrede('Ana','Natalia').
padrede('Miguel','Natalia').
padrede('Ana','Nancy').
padrede('Miguel','Nancy').
padrede('Ana','Wilmar').
padrede('Miguel','Wilmar').



hijode(A,B):- padrede(B,A).
hermanode(A,B):- padrede(C,A), padrede(C,B), A\==B.
tiode(A,B):- hermanode(A,C), padrede(C,B).
abuelode(A,B):- padrede(A,C), padrede(C,B).
bisabuelode(A,B):- padrede(A,C), padrede(C,D), padrede(D,B).
casadocon(A,B):- padrede(A,C), padrede(B,C).
esfeliz(A):- casadocon(A,_).
