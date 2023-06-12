program test_runner;

{$mode objfpc}{$H+}

uses
  fpcunit, testreport, testregistry, test_bubble_sort;

var
  Writer : TPlainResultsWriter;
  TestResult : TTestResult;
  Test : TTest;

begin
  WriteLn('DEBUG: TestRunner');

  Writer := TPlainResultsWriter.Create;
  TestResult := TTestResult.Create;
  Test := GetTestRegistry;
  
  TestResult.AddListener(Writer);
  Test.Run(TestResult);
  Writer.WriteResult(TestResult);

end.
