local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v={"/init.lua","/boot.lua","/OS.lua"},{},{},unicode,computer,component,component.invoke;local function w(x)local y={e.pullSignal(x)}y[1]=y[1]or""if#y>0 and j.n>0 and(y[1]:match"ey"and not j[y[5]]or y[1]:match"cl"and not j[y[4]])then return table.unpack(y)end;c[y[4]or""]=y[1]:match"do"and 1;if c[29]and(c[56]and c[46]or c[32])and y[1]:match"do"then return"F"end;return table.unpack(y)end;local function z(A,B,C)local D,E=load("return "..A,B,F,C)if not D then D,E=load(A,B,F,C)end;if D then return xpcall(D,debug.traceback)else return F,E end end;local function G(H)return f.list(H)()and f.proxy(f.list(H)())end;local function I(J,K)o={}for L in J:gmatch"[^\r\n]+"do o[#o+1]=L:gsub("\t",K and"    "or"")end end;local function M(N,...)if N and type(N):match("f")then return N(...)end end;local function O(x,P,Q)local R,S,A,T=e.uptime()+(x or math.huge)::U::S,T,T,A=w(R-e.uptime())if S=="F"or S:match"do"and(A==P or P==0)then M(Q)return 1 elseif e.uptime()<=R then goto U end end;local function V()r,q,t,p=G"gp",G"in",f.list"pr"(),f.list"sc"()u=t and g(t,"getData")or u;if r and p then r.bind(p)r.setPaletteColor(9,0x002b36)r.setPaletteColor(11,0x8cb9c5)m,n=r.maxResolution()s=r.address;i=n/2;return 1 end end;V()j=select(2,z(u:match"#(.+)#"or"{}"))k=u:match"*"j.n=#j;for W=1,#j do j[j[W]],j[W]=1,F;j.n=j.n+1 end;function f.invoke(X,Y,...)if X==t then if Y=="setData"then u=not({...})[2]and u:match"(.+)#{"and u:gsub("(.+)#{",...)or...return t and g(t,Y,u)elseif Y=="getData"then return not...and u:match"(.+)#{"or u end elseif Y=="set"and h and X==s then h=F;r.setPaletteColor(9,0x969696)r.setPaletteColor(11,0xb4b4b4)end;return g(X,Y,...)end;e.setBootAddress=function(...)return f.invoke(t,"setData",...)end;e.getBootAddress=function(...)return f.invoke(t,"getData",...)end;local function Z(_,a0,a1,a2,a3)r.setBackground(a2 or 0x002b36)r.setForeground(a3 or 0x8cb9c5)r.set(_,a0,a1)end;local function a4(_,a0,a5,a6,a2,a3)r.setBackground(a2 or 0x002b36)r.setForeground(a3 or 0x8cb9c5)r.fill(_,a0,a5,a6," ")end;local function a7()a4(1,1,m,n)end;local function a8(a9)return math.ceil(m/2-a9/2)end;local function aa(a0,J,a2,a3)Z(a8(d.len(J)),a0,J,a2,a3)end;local function ab(J,ac,ad,P,Q)if r and p then I(J)a7()local a0=math.ceil(i-#o/2)if ac then aa(a0-1,ac,0x002b36,0xFFFFFF)a0=a0+1 end;for W=1,#o do aa(a0,o[W])a0=a0+1 end;return O(ad or 0,P,Q)end end;local function ae(J,af)return d.len(J)>af and d.sub(J,1,af).."…"or J end;local function ag(ah,ai,a0,aj,ak)local ag,al,am,an,_,ao,S,ap,A,T="",d.len(ah),1,1::U::S,T,ap,A=w(.5)if S:match"do"then if ap>=32 and d.len(al..ag)<m-al-1 then ag=d.sub(ag,1,am-1)..d.char(ap)..d.sub(ag,am,-1)am=am+1 elseif ap==8 and#ag>0 then ag=d.sub(d.sub(ag,1,am-1),1,-2)..d.sub(ag,am,-1)am=am-1 elseif ap==13 then a4(1,a0,m,1)return ag elseif A==203 and am>1 then am=am-1 elseif A==205 and am<=d.len(ag)then am=am+1 elseif A==200 and ak then ag=ak;am=d.len(ak)+1 elseif A==208 and ak then ag=""am=1 end;an=1 elseif S:match"cl"then ag=d.sub(ag,1,am-1)..ap..d.sub(ag,am,-1)am=am+d.len(ap)elseif S:match"mp"or S=="F"then v=S:match"mp"and 1;return elseif not S:match"up"then an=not an end;_=aj and a8(d.len(ag)+al)or ai;ao=_+al+am-1;a4(1,a0,m,1)Z(_,a0,ah..ag,0x002b36,0xFFFFFF)if ao<=m then Z(ao,a0,r.get(ao,a0),an and 0xFFFFFF or 0x002b36,an and 0x002b36 or 0xFFFFFF)end;goto U end;local function aq(...)local J=table.pack(...)for W=1,J.n do J[W]=tostring(J[W])end;I(table.concat(J,"    "),1)for W=1,#o do r.copy(1,1,m,n-1,0,-1)a4(1,n-1,m,1)Z(1,n-1,o[W])end end;local function ar(as,at,a0,a3)aa(a0,as[6]and("Boot%s %s from %s (%s)"):format(at and"ing"or"",as[6],as[2],ae(as[3],at and 36 or 6))or("Boot from %s (%s) is not available"):format(as[2],ae(as[3],at and 36 or 6)),F,a3)end;local function au(X)local G=f.proxy(X)if G and G.spaceTotal and X~=e.tmpAddress()then b[#b+1]={G,G.getLabel()or"N/A",X,ae(G.getLabel()or"N/A",6),("Disk usage %s%% / %s / %s"):format(math.floor(G.spaceUsed()/(G.spaceTotal()/100)),G.isReadOnly()and"Read only"or"Read & Write",G.spaceTotal()<2^20 and"FDD"or G.spaceTotal()<2^20*12 and"HDD"or"RAID")}for W=1,#a do if G.exists(a[W])then b[#b][6]=a[W]break end end end end;local function av()b={}au(e.getBootAddress())for X in next,f.list"f"do au(X~=e.getBootAddress()and X or"")end end;local function aw(as)if as[6]then local ax,ay,D,az,E=as[1].open(as[6],"r"),""::U::D=as[1].read(ax,math.huge)if D then ay=ay..D;goto U end;as[1].close(ax)local function aA()a7()ar(as,1,i)if e.getBootAddress()~=as[3]then e.setBootAddress(as[3])end;h=1;az,E=z(ay,"="..as[6])h=V()and ab(E,[[¯\_(ツ)_/¯]],math.huge,0,e.shutdown)or error(E)end;ay=k and not l and ab("Hold any button to boot",F,math.huge,0,aA)or aA()end end;local function aB()l=1::aC::v=F;V()av()local C,aD,S,A,aE,aF,ay,aG,T;local function aH(aI,aJ,aK,a0,aL,aM)table.insert(aI.e,{s=1,y=a0,e=aJ,o=aK,d=function(aN,aO)local aP,_=0;for W=1,#aN.e do aN.e[W][3]=M(aN.e[W][1])or aN.e[W][1]aP=aP+d.len(aN.e[W][3])+aL end;aP=aP-aL;_=a8(aP)for W=1,#aN.e do if aN.s==W and aO then a4(_-aL/2,aN.y-math.floor(aM/2),d.len(aN.e[W][3])+aL,aM,0x8cb9c5)Z(_,aN.y,aN.e[W][3],0x8cb9c5,0x002b36)else Z(_,aN.y,aN.e[W][3],0x002b36,0x8cb9c5)end;_=_+d.len(aN.e[W][3])+aL end end})return#aJ end;local function aQ(aK)return{s=1,e={},o=aK,d=function(aN)if r and p and not v then M(aN.o,aN)for W=1,#aN.e do aN.e[W]:d(aN.s==W)end end end,l=function(aN)::U::S,T,T,A=w(0)if S:match"mp"or v or S=="F"then return S elseif S:match"do"then if A==200 then aN.s=aN.s>1 and aN.s-1 or#aN.e elseif A==208 then aN.s=aN.s<#aN.e and aN.s+1 or 1 elseif A==203 then aN.e[aN.s].s=aN.e[aN.s].s>1 and aN.e[aN.s].s-1 or#aN.e[aN.s].e elseif A==205 then aN.e[aN.s].s=aN.e[aN.s].s<#aN.e[aN.s].e and aN.e[aN.s].s+1 or 1 elseif A==28 then aN.e[aN.s].e[aN.e[aN.s].s][2]()end;aN:d()end;goto U end}end;aD=aQ()if#b>0 then aH(aD,{},F,i-3,8,3)for W=1,#b do aD.e[1].e[W]={function()return b[W][4]end,function()aw(b[W])end}end end;aE=aH(aD,{{"Power off",e.shutdown},{"Lua",function()a7()C=setmetatable({print=aq,proxy=G,os={sleep=function(x)O(x)end},read=function(ak)aq(" ")ay=ag("",1,n-1,F,ak)Z(1,n-1,ay or"")return ay end},{__index=_G})::U::ay=ag("> ",1,n,F,ay)if ay then aq("> "..ay)Z(1,n,">")aq(select(2,z(ay,"=stdin",C)))goto U end end},q and{"Internet boot",function()aG=ag("URL: ",F,i+6,1)if aG and#aG>0 then local ax,ay,D=q.request(aG,F,F,{["user-agent"]="Cyan"}),""if ax then ab"Downloading..."::U::D=ax.read()if D then ay=ay..D;goto U end;ab(select(2,z(ay,"=Internet boot"))or"is empty","Internet boot",math.huge,0)else ab("Invalid URL","Internet boot",math.huge,0)end end end}or F},F,i+(#b>0 and 1 or 0),#b>0 and 6 or 8,#b>0 and 1 or 3)+1;aD.o=function(aN)a7()if#b>0 then ar(b[aN.e[1].s],F,i+4,0xFFFFFF)aa(i+6,b[aN.e[1].s][5])for aR=aE,#aN.e[2].e do aN.e[2].e[aR]=F end;if not b[aN.e[1].s][7]then if b[aN.e[1].s][1].isReadOnly()then aN.e[2].s=aN.e[2].s>#aN.e[2].e and#aN.e[2].e or aN.e[2].s else aN.e[2].e[aE]={"Rename",function()aF=ag("New label: ",F,i+6,1)if aF and#aF>0 then b[aN.e[1].s][1].setLabel(aF)av()end end}aN.e[2].e[aE+1]={"Format",function()b[aN.e[1].s][1].remove("/")av()end}end end else aa(i+3,"No drives available",F,0xFFFFFF)end end;aD:d()if aD:l()~="F"then goto aC end;e.shutdown()end;av()ab("Hold CTRL to stay in bootloader",F,.9,29,aB)for W=1,#b do aw(b[W])end;r=V()and aB()or error"No drives available"