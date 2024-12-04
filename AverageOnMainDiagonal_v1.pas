program DiagonalAverage;

var
  matrix: array[1..10, 1..10] of Integer;  { Матриця 10x10 }
  n, i, j: Integer;  { Оголошення змінної j }
  sum: Integer;
  average: Real;

begin
  { Введення розміру матриці }
  Write('Введіть розмір матриці (n): ');
  ReadLn(n);

  { Введення елементів матриці }
  WriteLn('Введіть елементи матриці:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      Write('matrix[', i, ',', j, ']: ');
      ReadLn(matrix[i, j]);
    end;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i];

  { Обчислення середнього арифметичного }
  average := sum / n;

  { Виведення результату }
  WriteLn('Середнє арифметичне елементів головної діагоналі: ', average:0:2);
end.
