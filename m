Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 172BA7B0B4D
	for <lists+cake@lfdr.de>; Wed, 27 Sep 2023 19:48:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 551C73CB40;
	Wed, 27 Sep 2023 13:48:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695836890;
	bh=H+ox57CT6ruu6yxP8tMPBjoTdyuhnxGVq0xc5OECbW0=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=kE0txkXkN8UZbZzuyYU9gMiAOIWfwmsyfl6fbD6eBib+rZgpPEABQNSMltOwb8csx
	 n49i3jVegXS3BYuZIwhWivsfOQ9m/gvU532C1F7Frpyk6YNPteuiy1lB9piUhXq+dl
	 bUg7+mF7ASXQXn7QNLPU7bLz1Rskle+bWoTUOZO4D5+26p0nM/6LylxJNMhDV8RcGH
	 xLB5NWuTKXfz0igc93fZEIyvlEDGaciPaEi3swCfd7XKAKuXtMZPcvYEeCuUrWMDFo
	 D77TQwy2XvzyQnCRjhH148jrIyrZk1/adsT1J1w/ebAm5yuj+PA1k37e9ujAKHDW7d
	 z+3FCrZHv1m2g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from exchange.diadema.cz (exchange.diadema.cz [188.94.233.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BA77C3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 27 Sep 2023 13:48:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=diadema.cz;
 s=dkimsel1; t=1695836887; h=From:Subject:Date:Message-ID:To:MIME-Version
 :Content-Type; bh=WC+4g4wnOJOGBrtl+oz5EY/Htea2nuCOESUbulHZxKQ=; b=W4xM1Zx
 BsrM1rdVFeUpGlhCBdMo6ZKca3AL3lASjUBZqLFcQUY9ROgyKlbHkvskUa7IX8YnNUYh1XWvy
 RCQsFlmvbT3lZ5lxjd7ZDKjmDin55WuhkKv9wU3L0eYXL7L1osIYSV3zdXBK3nKrzbe+vphtk
 MBrFR3jSs1kNw3aVcg+4sLzKJmPIAoYiBtnW+hWTnCmDFOWIH5M2uMxfxGgJ6m+qmcSXgbKYG
 zMKok3ea0DlVqDV173QCFUvGF/ovqNLOVgYYUxaUQE/drToiKfrDrdMb6Uz9KCj+RxeJh71i+
 7OCBo+v6fn+0sT+FoiyYDLZ3ODdNzYVKy2q4oTgtAig==;
Received: from Exchange2016.diademasw.inkubator.cz (192.168.111.251) by
 Exchange2016.diademasw.inkubator.cz (192.168.111.251) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.2507.32; Wed, 27 Sep 2023 19:48:07 +0200
Received: from Exchange2016.diademasw.inkubator.cz
 ([fe80::7941:9b98:9ec9:b5b7]) by Exchange2016.diademasw.inkubator.cz
 ([fe80::7941:9b98:9ec9:b5b7%14]) with mapi id 15.01.2507.032; Wed, 27 Sep
 2023 19:48:07 +0200
To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
Thread-Topic: Cake - flow (or host) weight request - how to implement
Thread-Index: AdnxaMgopSygI56yR+yAvaoKprqmQA==
Date: Wed, 27 Sep 2023 17:48:06 +0000
Message-ID: <e6464f0d9e7e4c91b26f2d08d72b1a0c@diadema.cz>
Accept-Language: en-US, cs-CZ
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.111.205]
MIME-Version: 1.0
X-DKIM-Signer: DkimX (v3.51.351)
Subject: [Cake] Cake - flow (or host) weight request - how to implement
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Jan Rovner via Cake <cake@lists.bufferbloat.net>
Reply-To: Jan Rovner <jan.rovner@diadema.cz>
Content-Type: multipart/mixed; boundary="===============0639277268761060133=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0639277268761060133==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_";
	type="multipart/alternative"

--_004_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_
Content-Type: multipart/alternative;
	boundary="_000_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_"

--_000_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to experiment with sch_cake.c, my goal is to ad-hoc prioritize =
/ deprioritize traffic served to specified a host(s). The prioritization wo=
uld be controlled by an external system and it should handle well the situa=
tion where a host has active flow(s).

I've experimented with traffic shifting from tin to tin via fwmarks, it wor=
ked somehow, but there are issues related to losing flow's (cobalt) state.

Could you please propose a way how this could be done?

Each flow refences cake_host_table, which could be in theory modified (for =
example) like

struct cake_host {
    u32 srchost_tag;
    u32 dsthost_tag;
    u16 srchost_bulk_flow_count;
    u16 dsthost_bulk_flow_count;

    ??? srchost_weight;  // default value =3D 1.0
    ??? dsthost_weight;  // default value =3D 1.0
};

The weight fields could be then used in cobalt rate scheduling... weight co=
uld be an integer, enum, or decimal - but anything that could distinguish t=
he traffic.

Thank you for any ideas.


Jan Rovner
Ing. Jan Rovner, Ph.D., jednatel spole=E8nosti

[cid:image001.jpg@01D9F17A.0DAF59C0]
e-mail:   internet@diadema.cz<mailto:internet@diadema.cz>
www:     http://internet.diadema.cz<http://internet.diadema.cz/>
telefon:  +420 377 421 863, +420 603 484 742




Diadema Internet s.r.o.
zapsan=E1 v obchodn=EDm rejst=F8=EDku veden=E9m u Krajsk=E9ho soudu v Plzni=
, odd=EDl C, vlo=BEka 24294
se s=EDdlem Morseova 1126/5, 301 00 Plze=F2

I=C8O: 29093961,  DI=C8 CZ29093961



Koresponden=E8n=ED a dodac=ED adresa
Diadema Internet s.r.o.
Provozovna Plze=F2-Lochot=EDn
Alej Svobody 56, 323 00 Plze=F2







--_000_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Courier New";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"CS" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">I am trying to experiment with sch_cake.c, my goal is to a=
d-hoc prioritize / deprioritize traffic served to specified a host(s). The =
prioritization would be controlled by an external
 system and it should handle well the situation where a host has active flo=
w(s).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">I've experimented with traffic shifting from tin to tin vi=
a fwmarks, it worked somehow, but there are issues related to losing flow's=
 (cobalt) state.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Could you please propose a way how this could be done?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Each flow refences cake_host_table, which could be in theo=
ry modified (for example) like<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:blue;mso-ligatures:no=
ne;mso-fareast-language:CS">struct</span><span style=3D"font-size:10.5pt;fo=
nt-family:Consolas;color:black;mso-ligatures:none;mso-fareast-language:CS">
 cake_host {<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">&nbsp; &nbsp; u32 srchost_tag;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">&nbsp; &nbsp; u32 dsthost_tag;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">&nbsp; &nbsp; u16 srchost_bulk_flow_count;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">&nbsp; &nbsp; u16 dsthost_bulk_flow_count;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">&nbsp;&nbsp;&nbsp; ??? srchost_weight;&nbsp; /=
/ default value =3D 1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">&nbsp;&nbsp;&nbsp; ??? dsthost_weight;&nbsp; /=
/ default value =3D 1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:white"><span=
 style=3D"font-size:10.5pt;font-family:Consolas;color:black;mso-ligatures:n=
one;mso-fareast-language:CS">};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">The weight fields could be then used in cobalt rate schedu=
ling... weight could be an integer, enum, or decimal - but anything that co=
uld distinguish the traffic.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Thank you for any ideas.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Courier New&quot;;color:black;mso-ligatures:no=
ne;mso-fareast-language:CS">Jan Rovner<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;mso-l=
igatures:none;mso-fareast-language:CS">Ing. Jan Rovner, Ph.D., jednatel spo=
le=E8nosti<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:CS"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr>
<td width=3D"272" valign=3D"top" style=3D"width:204.3pt;border-top:dashed #=
BFBFBF 1.0pt;border-left:none;border-bottom:dashed #BFBFBF 1.0pt;border-rig=
ht:none;padding:0cm 5.4pt 0cm 5.4pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Courier New&quot;;color:#1F497=
D;mso-fareast-language:CS"><img width=3D"159" height=3D"36" style=3D"width:=
1.6562in;height:.375in" id=3D"Picture_x0020_1" src=3D"cid:image001.jpg@01D9=
F17A.0DAF59C0"><span style=3D"mso-ligatures:none"><o:p></o:p></span></span>=
</b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#1F497D;mso-ligatures:none;mso-fareast-langua=
ge:CS">e-mail:&nbsp;&nbsp;
</span><span style=3D"color:#1F497D;mso-ligatures:none;mso-fareast-language=
:CS"><a href=3D"mailto:internet@diadema.cz"><span style=3D"font-size:10.0pt=
;line-height:115%;color:blue">internet@diadema.cz</span></a></span><span st=
yle=3D"font-size:10.0pt;line-height:115%;color:#1F497D;mso-ligatures:none;m=
so-fareast-language:CS"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#1F497D;mso-ligatures:none;mso-fareast-langua=
ge:CS">www:&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"color:#1F497D;mso-ligatures:none;mso-fareast-language=
:CS"><a href=3D"http://internet.diadema.cz/"><span style=3D"font-size:10.0p=
t;line-height:115%;color:blue">http://internet.diadema.cz</span></a></span>=
<span style=3D"font-size:10.0pt;line-height:115%;color:#1F497D;mso-ligature=
s:none;mso-fareast-language:CS">
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#1F497D;mso-ligatures:none;mso-fareast-langua=
ge:CS">telefon: &nbsp;&#43;420 377 421&nbsp;863, &#43;420&nbsp;603&nbsp;484=
&nbsp;742</span><span style=3D"font-family:&quot;Arial&quot;,sans-serif;col=
or:#1F497D;mso-ligatures:none;mso-fareast-language:CS"><o:p></o:p></span></=
p>
</td>
<td width=3D"198" colspan=3D"2" style=3D"width:148.4pt;border-top:dashed #B=
FBFBF 1.0pt;border-left:none;border-bottom:dashed #BFBFBF 1.0pt;border-righ=
t:none;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:#1F4=
97D;mso-ligatures:none;mso-fareast-language:CS">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td width=3D"286" colspan=3D"2" valign=3D"top" style=3D"width:214.25pt;padd=
ing:0cm 5.4pt 0cm 5.4pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-lan=
guage:CS"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-lan=
guage:CS">Diadema Internet s.r.o.</span></b><span style=3D"font-size:10.0pt=
;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-language:CS"=
><br>
zapsan=E1 v obchodn=EDm rejst=F8=EDku veden=E9m u Krajsk=E9ho soudu v Plzni=
, odd=EDl C, vlo=BEka 24294<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-langua=
ge:CS">se s=EDdlem Morseova 1126/5, 301 00 Plze=F2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-langua=
ge:CS"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-langua=
ge:CS">I=C8O: 29093961,&nbsp; DI=C8 CZ29093961<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Courier New&quot;;color:#1F497D;m=
so-ligatures:none;mso-fareast-language:CS"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"185" valign=3D"top" style=3D"width:138.45pt;padding:0cm 0cm 0c=
m 0cm">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-lan=
guage:CS"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-lan=
guage:CS">Koresponden=E8n=ED a dodac=ED adresa<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-langua=
ge:CS">Diadema Internet s.r.o.<br>
Provozovna Plze=F2-Lochot=EDn<br>
Alej Svobody 56, 323 00 Plze=F2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;color:#7F7F7F;mso-ligatures:none;mso-fareast-langua=
ge:CS"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Courier New&quot;;color:#1F497D;m=
so-ligatures:none;mso-fareast-language:CS"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"272" style=3D"width:204.0pt;padding:0cm 0cm 0cm 0cm"></td>
<td width=3D"13" style=3D"width:9.75pt;padding:0cm 0cm 0cm 0cm"></td>
<td width=3D"185" style=3D"width:138.75pt;padding:0cm 0cm 0cm 0cm"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none;mso-fareast-langua=
ge:CS"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_--

--_004_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=2206;
	creation-date="Wed, 27 Sep 2023 17:48:06 GMT";
	modification-date="Wed, 27 Sep 2023 17:48:06 GMT"
Content-ID: <image001.jpg@01D9F17A.0DAF59C0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAAkAJ8DASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiub
fxnbLPNFHY30phcoxjjyMipLfxlp8k6w3CXNoznCm4jKg/jQB0FFUm1W2TUorAuftEqGRFA4Kj3q
5uFAC0UmaCaACk3VRs9XhvdSvLKNZBJaEBywGDn0rmNF1m8d7u5iaW5its+bATkld7jcvuMdO4oA
7bNGeK5HTpU1D+xpPPuWW+jlkbErDO3kcdutZ8WsxNo8s5vYTcbHIAvWMuQSMbO1AHfZpMiuLv7i
8srmK3dpbQXCptK3BlyfMUZ5HGM/jmmatr80WoraXbG2mi2LLukMcTAuQHDDoD+nSgDuKM1yUk1t
Jpizw3e9vtUcLfZrx5FAZgOvrg11MUKwRLGhYqvQscn86AHkisbVPFOmaY5jllMsw/5ZxDc3/wBa
sjXNcuNT1htD0l2TYP8ASZkOGH+yp7H3rX0fw/aaVGGWJGn7uRnH0rTlUVeRk5OTtEzx4m1a5G6y
8O3BjPRpX2ZqGTxtc6ey/wBsaLc2sZOPMU7gK6DU9Us9Is3u9QnEMK/xHufQDuawR42sL2Bg2l6j
JayDG94BtcfQnOKSlHsPll3Oj07UrXVbVbizmWWM917H0I7GrdeYeFL6Ox8bSW2ns5sbosAjAjHG
RwehHIr05elFSHK9B058yOU8DXAnm1wD+C/da3tZsYdQ0u4huEVlMbEEj7px1FeaeG/E7+FNR16G
70bVrj7RqEksbQW5Zducda1dQ8T+IfFdrJpvh7QbyxW4Bjkvb4eWsanrgetQWZ+j+M2tRp091Lug
hspSRxlypIUZ688D8K6Swj8T6zZR351OGxWZd8VusO7Cnpk1x2teBZDrum6BZiYwppEkYuSp2GXJ
bLHoMn+dbWl/EGXRdLi07X9E1WPUbWMREQ25dJdowCCPWgAHjXU9JvtYTWGR5bKBQkSgBS5YAEex
BzW1a6N4gvrRLq51yS3uZFDCGNBsTPQGuA/snW/GmteInubCewuLm1jktklUgDawKKW6ZIH611Nr
8THsrBLbVdA1ZNViUI0MdvlXYcZDehoAp2HiefQ7jxBcagqyX6Sxw7RwGkOcfhgZrXibWDbef/wk
mmQzsN32dQgQH+6TmuEj0DXvE48SzXNhLBqBnhukgkUqr4zlAe/ynFXlufB62+ybwNqS6kODbCB8
bv8Aez0oA2ZfHV/cwWMNmsMWoi6a1kRQCjtxgj0HXpV3XZNa8K2aalcXdpdqXEbxtbhQGbpg9etc
tbeG9Q0+68M3U+mLaS3Gp+a8FvGSIIgBtDnnmuy+LME9z4NCWsMk0n2uI7Y1LHGfQUAN1L/hJNL0
V9YuNSglMKCWS3MI2heOAaT/AISG88TahFp+jLBDi2Se5uJUD7NwyFANanjWKWb4e6pHDG7ytaYV
EXLE8dBXEaINS8D3VtrLabd3emajYwrcCFMy28ijuvX/APXQBt+I5/EHhXS2uPt0E9qzKrSLAqNG
exx0xXZSXbRaOlyeXMSnPuR/jXmHjzxddeLPD8tlomi6mbUMrzzy25XoeFA69cV6fBbC50KG3lVh
ut1U9iPlH6ihAzzTwVrMWn69JLevhbkFWkP8LE5yfxr1RGV1DIdynkEcg15Br+gXuh38jTQsYHJK
yoMqf8PpUdjq89su23u5oh2CSED8q7pUVW96LOBVnRupI6j4qQyCx026KM9tbz5mXHY4x/Ij8a0t
S8W6bZacDpYjmllQMm0fKmR/Efb0rj31qafK3E8l0rAq0UzFlYHtiqM/hzVbG2W60+2neykOfs83
yyL64Pce/X2rJ0VTkvabGka8q0X7PRmr4Y0CfXru7u/PmgMQJjnQ4Pmnng+1dt4T1+bVYbqy1AKu
p6dJ5NxtGA/GVcDtkdvWuRtviQmkacllbeFtQjljGFjxwW9ScZNXvhvZarPqus+INXj8iW/KqsJG
CAM9u3pWVSfPK5vShyRsegZxn2p2OaKKzNBppRwM0UUAJ0IHrS0UUAB6UCiigAooooAUjHNJ3ooo
AG4H0pcUUUARuiyDa4BB6g1ny+HNInYtJp1sWPfywKKKabRDSYsfh3TIDuhtI4yO6jFWksIEBwpw
eoJJz+dFFDbbKSRGdLspCGNug9hkD8qtRxJEmyNQijoFGBRRSGf/2Q==

--_004_e6464f0d9e7e4c91b26f2d08d72b1a0cdiademacz_--

--===============0639277268761060133==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0639277268761060133==--
