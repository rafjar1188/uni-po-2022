unit test_bubble_sort;

{$mode objfpc}{$H+}

interface

procedure TestGenerateDataSize;
procedure TestGenerateDataRange;
procedure TestBubbleSort;
procedure TestBubbleSortSorted;
procedure TestBubbleSortNegativeValues;


implementation

uses
  bubble_sort;


procedure TestGenerateDataSize;
  var
    n: Integer = 50;
    data: Array of LongInt;

  begin
    SetLength(data, n);
    
    if Length(data) <> n then
      begin
        WriteLn('TestGenerateDataSize: FAIL: Array size is not equal to n!');
        Exit;
      end;
    
    WriteLn('TestGenerateDataSize: SUCCESS');
  end;

procedure TestGenerateDataRange;
  var
    n: Integer = 50;
    x: Integer = 100;
    y: Integer = 200;
    data: Array of Integer;
    i: Integer;
  
  begin
    SetLength(data, n);
    
    GenerateData(data, n, x, y);

    for i := 0 to n - 1 do 
      begin
        if (data[i] < x) or (data[i] > y) then
          begin
            WriteLn('TestGenerateDataRange: FAIL: Array element is not in range!');
            Exit;
          end;
      end;
    
    WriteLn('TestGenerateDataRange: SUCCESS');
  end;

procedure TestBubbleSort;
  var
    data: array of Integer = (5, 2, 8, 4, 1, 3);
    i: Integer;
  
  begin
    BubbleSort(data, Length(data));
    
    for i := 0 to Length(data) - 2 do
      begin
        if data[i] > data[i + 1] then
          begin
            WriteLn('TestBubbleSort: FAIL: BubbleSort did not correctly sort the array');
            Exit;
          end;
      end;
      
    WriteLn('TestBubbleSort: SUCCESS');
  end;

procedure TestBubbleSortSorted;
  var
    data: array of Integer = (1, 2, 3, 4, 5);
    i: Integer;
  begin
    BubbleSort(data, Length(data));
    
    for i := 0 to Length(data) - 2 do
      begin
        if data[i] > data[i + 1] then
          begin
            WriteLn('TestBubbleSortSorted: FAIL: BubbleSort did not correctly sort the array');
            Exit;
          end;
      end;
      
    WriteLn('TestBubbleSortSorted: SUCCESS');
  end;

procedure TestBubbleSortNegativeValues;
  var
    data: array of Integer = (-8, -10, -7, -11, -9);
    i: Integer;
  begin
    BubbleSort(data, Length(data));
    
    for i := 0 to Length(data) - 2 do
      begin
        if data[i] > data[i + 1] then
          begin
            WriteLn('TestBubbleSortNegativeValues: FAIL: BubbleSort did not correctly sort the array');
            Exit;
          end;
      end;
      
    WriteLn('TestBubbleSortNegativeValues: SUCCESS');
  end;

end.
