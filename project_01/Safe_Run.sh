# !/bin/bash
"""
--------------------------------------------------------------------------
RUN: Create a 3 layer security system with various password locks
--------------------------------------------------------------------------
License:   
Copyright 2019 - John Perez

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, 
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation 
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors 
may be used to endorse or promote products derived from this software without 
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE 
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------

Code Structure
- Set pin functions
- Run python code

--------------------------------------------------------------------------

"""

cd /var/lib/cloud9/ENGI301/python

config-pin P1_29 gpio
config-pin P1_31 gpio
config-pin P1_33 gpio
config-pin P1_35 gpio

config-pin P1_30 gpio
config-pin P1_32 gpio
config-pin P1_34 gpio
config-pin P1_36 gpio

config-pin P1_6 gpio
config-pin P1_8 gpio

python3 Project_Dials_v8.py

@reboot sleep 30 && sh /var/lib/cloud9/ENGI301/python/Project_Dials_v8.py > /var/lib/cloud9/cronlog 2>&1
