```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Sum : Integer := 0;
begin
   for I in Arr'Range loop
      Sum := Sum + Arr(I);
   end loop;
   Ada.Text_IO.Put_Line("Sum: " & Integer'Image(Sum));
   -- Incorrect way to access array elements beyond the bounds
   Ada.Text_IO.Put_Line("Incorrect access: " & Integer'Image(Arr(11)));
   -- exception raised at runtime
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint Error: Array index out of bounds");
end Example;
```