program list;

type

    pointerXType = ^x;
    x = record
        data: integer;
        nextX, previousX: pointerXType;
    end;

var
    n,nX: integer;
    first, last, curr: pointerXType;  

begin
    readln(n);
    If n = 1 then
    begin
        
        last:= nil;
    
        while n > 0 do {Ввод значений списка}
        begin
            readln(nX);
            if nX = 0 then
            begin
                n := 0;
                continue;
                last^.nextX := nil;
            end;
                new(curr);
                curr^.data := nX;
                curr^.previousX := last;
                last := curr;
                curr := curr^.nextX;
                
             n:= n + 1;
            writeln('Итерация № ',n)
        end;
        
        writeln('-----------');
        writeln(n);
        writeln('-----------');
        
        repeat {вывот списка}
        begin
            curr := last;
            write(curr^.data, ' ');
            last := curr^.previousX;
            
            if last = nil then n := 1;
        end;
        until n <> 0;
        
    end;
    write('Выход');
end.
