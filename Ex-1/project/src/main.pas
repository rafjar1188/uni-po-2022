program main;

uses bubble_sort;

var
  n: Integer = 50;
  x: Integer = 100;
  y: Integer = 300;
  i: Integer;
  data: Array of LongInt;

begin
  SetLength(data, n);
  WriteLn('DEBUG: n: ', n);
  WriteLn('DEBUG: Number of elements in data array: ', Length(data));

  GenerateData(data, n, x, y);
  WriteLn('DEBUG: Bottom random value: ', x);
  WriteLn('DEBUG: Top random value: ', y);

  for i := 0 to n - 1 do
    WriteLn('DEBUG: data[', i, '] = ', data[i]);
    
  BubbleSort(data, n);
    
  WriteLn('DEBUG: Sorted data: ');
  for i := 0 to n - 1 do
    WriteLn('DEBUG: data[', i, '] = ', data[i]);
  
  WriteLn;
end.
