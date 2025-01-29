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

   -- Correct way to handle potential out-of-bounds access
   begin
      Ada.Text_IO.Put_Line("Attempting to access element at index 11...");
      Ada.Text_IO.Put_Line("Value: " & Integer'Image(Arr(11)));
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Exception caught: Index out of bounds");
   end;

end Example;
```