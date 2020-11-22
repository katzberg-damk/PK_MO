disp('Zdefinuj macierz A (4x4) gdzie przekatne sa podanymi liczbami')
% przyk?adowa macierz A = [13, 3, -3, 0; 1, -19, 0, 6; 0, 6, -9, 2; 1, 1, 2, 6];
A = input('A=');
if det(A) != 0
  %Wyznaczanie wartosci wlasnych
  [V,D] = eig(A);
  
  disp('Wektory wlasne');
  disp(V);
  disp('Wartosci wlasne');
  disp(D);
  
  %Sprawdzanie wynikow 
  disp('porowmnanie Macierzy  A do macierzy skonstruowanej z  V*D*(V^-1)');
  disp(round(V*D*(V^-1)));
  disp(A);
  %Sprawdzanie prostopadlosci
  disp('Sprawdzanie prostopadlosci') 
  perp = 0;
  i = 1;
  j = 1;
  
  while i< 5
    while j < 5
      index_i_1 = (i-1)*4 + 1;
      index_i_2 = index_i_1+3;
      index_j_1 = (j-1)*4 + 1;
      index_j_2 = index_j_1+3;
      if i != j
      perp = perp + dot(V(index_i_1:index_i_2), V(index_j_1:index_j_2));
    end
    j = j+1;
  end
  i = i + 1;
end

  if perp == 0
    disp('wektory sa prosopadle');
  else 
    disp('wektory nie sa prostopadle');
  end
  
  %Sprawdzanie wyznacznika i iloczynu wartosci wlasnych
  
  disp('porownanie det(A) do (iloczynu wartosci wlasnych) prod(diag(D))');
  disp(det(A));
  disp(round(prod(diag(D))));
  
  if det(A) == round(prod(diag(D)))
    disp('det A jest rowne iloczynowi wartosci wlasnych')
  else
    disp('det A nie jest rowne iloczynowi wartosci wlasnych')
  end
  
  %Sprawdzanie sumy wartosci wlasnych i diagnonalnych macierzy A
  if sum(diag(round(D))) == sum(diag(A))
    disp('Suma diagonalnych A jest równa sumie wartosci wlasnych bo')
  else
    disp('Suma diagonalnych A nie jest równa sumie wartosci wlasnych bo')
  end
  
  diag(round(D))
  diag(A)
  
  
else 
disp('Wyznacznik macierzy jest 0')
end


