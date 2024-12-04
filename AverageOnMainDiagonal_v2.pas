program RandomArray;

var
  arraySize, i: Integer;  { Оголошення змінної для розміру масиву та лічильника }
  arr: array of Integer;  { Динамічний масив для збереження значень }
  
begin
  { Запит розміру масиву }
  Write('Введіть розмір масиву: ');
  ReadLn(arraySize);
  
  { Виділення пам'яті для масиву }
  SetLength(arr, arraySize);

  { Ініціалізація генератора випадкових чисел }
  Randomize;

  { Заповнення масиву випадковими числами від -100 до 100 }
  for i := 0 to arraySize - 1 do
  begin
    arr[i] := Random(201) - 100;  { Random(201) дає числа від 0 до 200, віднімаємо 100 для діапазону від -100 до 100 }
  end;

  { Виведення значень масиву }
  WriteLn('Згенеровані значення масиву:');
  for i := 0 to arraySize - 1 do
  begin
    Write(arr[i], ' ');
  end;

  WriteLn;
end.
