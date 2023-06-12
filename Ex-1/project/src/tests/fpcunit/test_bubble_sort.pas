unit test_bubble_sort;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, bubble_sort;

type
  TTestBubbleSort = class(TTestCase)
  published
    procedure TestGenerateDataSize;
    procedure TestGenerateDataRange;
    procedure TestBubbleSort;
    procedure TestBubbleSortSorted;
    procedure TestBubbleSortNegativeValues;
  end;


implementation


procedure TTestBubbleSort.TestGenerateDataSize;
  var
    n: Integer = 50;
    data: Array of LongInt;

  begin
    SetLength(data, n);
    
    CheckEquals(n, Length(data), 'Array size is not equal to n!');
  end;

procedure TTestBubbleSort.TestGenerateDataRange;
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
            Fail('Array element is not in range!');
          end;
      end;
  end;

procedure TTestBubbleSort.TestBubbleSort;
  var
    data: array of Integer = (5, 2, 8, 4, 1, 3);
    i: Integer;
  
  begin
    BubbleSort(data, Length(data));
    
    for i := 0 to Length(data) - 2 do
      CheckTrue(data[i] <= data[i + 1], 'BubbleSort did not correctly sort the array');
  end;

procedure TTestBubbleSort.TestBubbleSortSorted;
  var
    data: array of Integer = (1, 2, 3, 4, 5);
    i: Integer;
  begin
    BubbleSort(data, Length(data));
    
    for i := 0 to Length(data) - 2 do
      CheckTrue(data[i] <= data[i + 1], 'BubbleSort did not correctly maintain sorted array');
  end;

procedure TTestBubbleSort.TestBubbleSortNegativeValues;
  var
    data: array of Integer = (-8, -10, -7, -11, -9);
    i: Integer;
  begin
    BubbleSort(data, Length(data));
    
    for i := 0 to Length(data) - 2 do
      CheckTrue(data[i] <= data[i + 1], 'BubbleSort did not sort negative values');
  end;

initialization
  RegisterTest(TTestBubbleSort);
end.
