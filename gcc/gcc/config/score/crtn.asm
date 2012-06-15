# crtn.asm for Sunplus S+CORE

#   Copyright (C) 2005, 2009, 2010 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; either version 3, or (at your option) any
# later version.
#
# This file is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# Under Section 7 of GPL version 3, you are granted additional
# permissions described in the GCC Runtime Library Exception, version
# 3.1, as published by the Free Software Foundation.
#
# You should have received a copy of the GNU General Public License and
# a copy of the GCC Runtime Library Exception along with this program;
# see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
# <http://www.gnu.org/licenses/>.

# This file makes sure that the .init and .fini sections do in
# fact return.

#ifndef __pic__
.section .init, "ax", @progbits
        lw      r3, [r0, 20]
        addi    r0, 32
        br      r3

.section .fini, "ax", @progbits
        lw      r3, [r0, 20]
        addi    r0, 32
        br      r3
#else
        .set    pic
.section .init, "ax", @progbits
        lw      r3, [r0, 20]
        addi    r0, 32
        br      r3

        .set    pic
.section .fini, "ax", @progbits
        lw      r3, [r0, 20]
        addi    r0, 32
        br      r3
#endif

