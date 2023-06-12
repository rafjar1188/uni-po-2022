unit bubble_sort;

interface

procedure GenerateData(var data: Array of LongInt; n: Integer; x: Integer; y: Integer);
procedure BubbleSort(var data: Array of LongInt; n: Integer);

implementation

procedure GenerateData(var data: Array of LongInt; n: Integer; x: Integer; y: Integer);
  var
    i: Integer;
    random_value: Integer;

  begin
    Randomize;

    for i := 0 to n - 1 do 
      begin
        random_value := Random(y - x + 1) + x;

        // WriteLn('DEBUG: random_value: ', random_value);
        data[i] := random_value;
      end;
  end;


procedure BubbleSort(var data: Array of LongInt; n: Integer);
  var
    i: Integer;
    j: Integer;
    temp: Integer;

  begin
    for i := 0 to n - 1 do
      begin
        for j := 0 to n - i - 2 do
          begin
            if data[j] > data[j + 1] then
              begin
                temp := data[j];
                data[j] := data[j + 1];
                data[j + 1] := temp;
              end;
          end;
      end;
  end;

end.
