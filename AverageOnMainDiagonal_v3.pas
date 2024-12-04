program RandomArraySort;

var
  arraySize, i, j, temp: Integer;  { Змінні для розміру масиву, лічильників та тимчасової змінної для сортування }
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
    arr[i] := Random(201) - 100;
  end;

  { Сортування масиву за зростанням (метод бульбашки) }
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

  { Виведення відсортованих значень масиву }
  WriteLn('Відсортовані значення масиву (від -100 до 100):');
  for i := 0 to arraySize - 1 do
  begin
    Write(arr[i], ' ');
  end;

  WriteLn;
end.
