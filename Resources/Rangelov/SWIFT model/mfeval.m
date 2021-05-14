function [forces]=mfeval(input,typarr,use_mode)
%MFEVAL evaluate Magic Formula for series of input variables.
%   FORCES = MFEVAL(INPUTS,TYPARR,USE_MODE) calculates tyre forces using
%   the Magic Formula coefficients specified in TYPARR.
%
%   The inputs to the tyre model should be specified columnwise:
%   INPUTS=[FZ ALPHA KAPPA CAMBER], where
%     FZ     = normal load on the tyre  (N)
%     ALPHA  = side slip angle          (radians)
%     KAPPA  = longitudinal slip        (dimensionless, -1: locked wheel)
%     CAMBER = camber angle             (radians)
%
%   TYPARR contains the Magic Formula coefficients. Use MFREAD 
%   to read in this data from a standard tyre property file.
%   Data is accepted for MF-Tyre 5.2, MF-MCTyre 1.1 and SWIFT 1.1
%   (and older versions)
%
%   USE_MODE specifies the type of calculation performed:
%      0: Fz only, no Magic Formula evaluation
%      1: Fx,My only
%      2: Fy,Mx,Mz only
%      3: Fx,Fy,Mx,My,Mz uncombined force/moment calculation
%      4: combined force/moment calculation
%
%   FORCES contains the forces in the contact point; there will be six columns:
%   [Fx Fy Fz Mx My Mz]  where:
%      Fx: longitudinal force
%      Fy: lateral force
%      Fz: normal force (straight copy of the input)
%      Mx: overturning moment
%      My: rolling resistance moment
%      Mz: self aligning moment
%
%   NOTE: all calculations are made using the ISO sign convention; the 
%   units will be SI (N,m,s,rad,kg).
%
%   See also MFREAD
%
%   (C) Copyright 1999-2003 TNO Automotive
%
