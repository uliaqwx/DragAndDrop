program RandomArrayCustomRange;

var
  arraySize, i, minVal, maxVal: Integer;  { Змінні для розміру масиву, мінімального та максимального значення }
  arr: array of Integer;  { Динамічний масив для збереження значень }
  
begin
  { Запит розміру масиву та діапазону значень }
  Write('Введіть розмір масиву: ');
  ReadLn(arraySize);
  Write('Введіть мінімальне значення діапазону: ');
  ReadLn(minVal);
  Write('Введіть максимальне значення діапазону: ');
  ReadLn(maxVal);

  { Виділення пам'яті для масиву }
  SetLength(arr, arraySize);

  { Ініціалізація генератора випадкових чисел }
  Randomize;

  { Заповнення масиву випадковими числами у заданому діапазоні }
  for i := 0 to arraySize - 1 do
  begin
    arr[i] := Random(maxVal - minVal + 1) + minVal;
  end;

  { Виведення значень масиву }
  WriteLn('Згенеровані значення масиву (від ', minVal, ' до ', maxVal, '):');
  for i := 0 to arraySize - 1 do
  begin
    Write(arr[i], ' ');
  end;

  WriteLn;
end.
