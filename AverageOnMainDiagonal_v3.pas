program RandomArraySort;

var
  arraySize, i, j, temp: Integer;  { ���� ��� ������ ������, ��������� �� ��������� ����� ��� ���������� }
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
    arr[i] := Random(201) - 100;
  end;

  { ���������� ������ �� ���������� (����� ���������) }
  for i := 0 to arraySize - 2 do
  begin
    for j := 0 to arraySize - 2 - i do
    begin
      if arr[j] > arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
    end;
  end;

  { ��������� ������������ ������� ������ }
  WriteLn('³��������� �������� ������ (�� -100 �� 100):');
  for i := 0 to arraySize - 1 do
  begin
    Write(arr[i], ' ');
  end;

  WriteLn;
end.
