program DiagonalAverage;

var
  matrix: array[1..10, 1..10] of Integer;  { ������� 10x10 }
  n, i, j: Integer;  { ���������� ����� j }
  sum: Integer;
  average: Real;

begin
  { �������� ������ ������� }
  Write('������ ����� ������� (n): ');
  ReadLn(n);

  { �������� �������� ������� }
  WriteLn('������ �������� �������:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      Write('matrix[', i, ',', j, ']: ');
      ReadLn(matrix[i, j]);
    end;

  { ���������� ���� �������� ������� ������� }
  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i];

  { ���������� ���������� ������������� }
  average := sum / n;

  { ��������� ���������� }
  WriteLn('������� ����������� �������� ������� �������: ', average:0:2);
end.
