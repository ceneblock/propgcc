--  Copyright 2007, 2008, 2009, 2010, 2011 Free Software Foundation, Inc.
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.

with System;

package Pck is

   type Struct is record
      A : Integer;
      B : Integer;
   end record;

   type Arr is array (1 .. 3) of Integer;


   procedure Call_Me (Int : Integer;
                      Flt : Float;
                      Bln : Boolean;
                      Ary : Arr;   -- Non scalar
                      Chr : Character;
                      Sad : System.Address;
                      Rec : Struct);  -- Non scalar

end Pck;

