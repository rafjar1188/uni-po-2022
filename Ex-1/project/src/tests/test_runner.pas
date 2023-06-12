program test_runner;

{$mode objfpc}{$H+}

uses
  test_bubble_sort;

begin
  WriteLn('DEBUG: TestRunner');

  TestGenerateDataSize;
  TestGenerateDataRange;
  TestBubbleSort;
  TestBubbleSortSorted;
  TestBubbleSortNegativeValues;

end.
