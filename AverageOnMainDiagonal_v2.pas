program RandomArray;

var
  arraySize, i: Integer;  { ���������� ����� ��� ������ ������ �� ��������� }
  arr: array of Integer;  { ��������� ����� ��� ���������� ������� }
  
begin
  { ����� ������ ������ }
  Write('������ ����� ������: ');
  ReadLn(arraySize);
  
  { �������� ���'�� ��� ������ }
  SetLength(arr, arraySize);

  { ����������� ���������� ���������� ����� }
  Randomize;

  { ���������� ������ ����������� ������� �� -100 �� 100 }
  for i := 0 to arraySize - 1 do
  begin
    arr[i] := Random(201) - 100;  { Random(201) �� ����� �� 0 �� 200, ������� 100 ��� �������� �� -100 �� 100 }
  end;

  { ��������� ������� ������ }
  WriteLn('���������� �������� ������:');
  for i := 0 to arraySize - 1 do
  begin
    Write(arr[i], ' ');
  end;

  WriteLn;
end.
