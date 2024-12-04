program RandomArrayCustomRange;

var
  arraySize, i, minVal, maxVal: Integer;  { ���� ��� ������ ������, ���������� �� ������������� �������� }
  arr: array of Integer;  { ��������� ����� ��� ���������� ������� }
  
begin
  { ����� ������ ������ �� �������� ������� }
  Write('������ ����� ������: ');
  ReadLn(arraySize);
  Write('������ �������� �������� ��������: ');
  ReadLn(minVal);
  Write('������ ����������� �������� ��������: ');
  ReadLn(maxVal);

  { �������� ���'�� ��� ������ }
  SetLength(arr, arraySize);

  { ����������� ���������� ���������� ����� }
  Randomize;

  { ���������� ������ ����������� ������� � �������� ������� }
  for i := 0 to arraySize - 1 do
  begin
    arr[i] := Random(maxVal - minVal + 1) + minVal;
  end;

  { ��������� ������� ������ }
  WriteLn('���������� �������� ������ (�� ', minVal, ' �� ', maxVal, '):');
  for i := 0 to arraySize - 1 do
  begin
    Write(arr[i], ' ');
  end;

  WriteLn;
end.
