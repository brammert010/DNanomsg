program Example_Program;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Interop in '..\DNanomsg\src\Interop.pas';

begin
  try
    with TInterop.Create do
    try
      Initialize;

      nn_socket(1, 1);   
    finally
      Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
