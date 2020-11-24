<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1894.6">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 14.0px Menlo; color: #9700f7; -webkit-text-stroke: #9700f7}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 14.0px Menlo; color: #000000; -webkit-text-stroke: #000000; min-height: 16.0px}
    p.p3 {margin: 0.0px 0.0px 0.0px 0.0px; font: 14.0px Menlo; color: #000000; -webkit-text-stroke: #000000}
    span.s1 {font-kerning: none; color: #000000; background-color: #f5f5f5; -webkit-text-stroke: 0px #000000}
    span.s2 {font-kerning: none; background-color: #f5f5f5}
    span.s3 {font-kerning: none}
    span.s4 {font-kerning: none; color: #9700f7; background-color: #f5f5f5; -webkit-text-stroke: 0px #9700f7}
  </style>
</head>
<body>
<p class="p1"><span class="s1">syms </span><span class="s2">S0(t) S1(t)</span></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p3"><span class="s2">k = 0.1</span></p>
<p class="p3"><span class="s2">l = 0.1</span></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p3"><span class="s2">ode1 = diff(S0) == -k*S0 + l*S1;</span></p>
<p class="p3"><span class="s2">ode2 = diff(S1) == k*S0 - l*S1;</span></p>
<p class="p3"><span class="s2">odes = [ode1; ode2]</span></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p3"><span class="s2">cond1 = S0(0) == 10;</span></p>
<p class="p3"><span class="s2">cond2 = S1(0) == 0;</span></p>
<p class="p3"><span class="s2">conds = [cond1; cond2];</span></p>
<p class="p3"><span class="s2">[B_n(t), B_e(t)] = dsolve(odes,conds)</span></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p2"><span class="s3"></span><br></p>
<p class="p3"><span class="s2">fplot(B_n)</span></p>
<p class="p3"><span class="s2">xlim([0 40])</span></p>
<p class="p3"><span class="s2">ylim([-5 15])</span></p>
<p class="p3"><span class="s2">hold </span><span class="s4">on</span></p>
<p class="p3"><span class="s2">fplot(B_e)</span></p>
<p class="p3"><span class="s2">xlim([0 40])</span></p>
<p class="p3"><span class="s2">ylim([-5 15])</span></p>
<p class="p3"><span class="s2">grid </span><span class="s4">on</span></p>
<p class="p1"><span class="s1">legend(</span><span class="s2">'B_n(t)'</span><span class="s1">,</span><span class="s2">'B_e(t)'</span><span class="s1">,</span><span class="s2">'Location'</span><span class="s1">,</span><span class="s2">'best'</span><span class="s1">)</span></p>
<p class="p1"><span class="s1">xlabel(</span><span class="s2">'Time t (secs)'</span><span class="s1">)<span class="Apple-converted-space"> </span></span></p>
<p class="p1"><span class="s1">ylabel(</span><span class="s2">'Concentration (a.u.)'</span><span class="s1">)<span class="Apple-converted-space"> </span></span></p>
</body>
</html>
