Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB9F34D907
	for <lists+cake@lfdr.de>; Mon, 29 Mar 2021 22:28:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1DB813CB60;
	Mon, 29 Mar 2021 16:28:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617049694;
	bh=I7HHwi2JeJKt9Ab6Owr9HKh/cRd7l1bC/+06xG75lmg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J9u+k2Hf3VYgrgAvkNUDjLSqu6UYujVtUiPtuzZCrZCYbdjclSkXXTgPvFqPXf3Z2
	 gQ/N/Zl3DRFSr7mqpSvFgB/mW/paMVLXpePOhrCS2zXDVH67PXZHx6WN/h1+aOpfKt
	 5ZvfPORckN8KVOO0U35nKG3ztTOr+bbSyOERILtRVuKW6nKckwxWj3RADz7C4OeXL/
	 +BsvzQAFEXfK3Oud61xfT338pZJPXFT7nZ/iUhbzUckLyJectfd42NSh/8wdbobUe3
	 gAZDorTVSCpN9YFGod0zSrdy+pBsku/QPOFu66QXk3exDKlnFyJsyLn/zT5vPnZqdM
	 9NK3y/Hu0pPUQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp98.iad3a.emailsrvr.com (smtp98.iad3a.emailsrvr.com
 [173.203.187.98])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ADC113B2A4
 for <cake@lists.bufferbloat.net>; Mon, 29 Mar 2021 16:28:11 -0400 (EDT)
Received: from app33.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp37.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 4242F5A82;
 Mon, 29 Mar 2021 16:28:11 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app33.wa-webapps.iad3a (Postfix) with ESMTP id 2E855E1B15;
 Mon, 29 Mar 2021 16:28:11 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 29 Mar 2021 16:28:11 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Mon, 29 Mar 2021 16:28:11 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
References: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1617049691.187521510@apps.rackspace.com>
X-Mailer: webmail/18.1.23-RC
X-Classification-ID: d95aa609-13c7-4db2-8e69-b263bfb27f7e-1-1
Subject: Re: [Cake] [Cerowrt-devel] wireguard almost takes a bullet
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4478320183358388835=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4478320183358388835==
Content-Type: multipart/alternative;boundary="----=_20210329162811000000_40463"

------=_20210329162811000000_40463
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0ADave -=0A =0AI've spent a fair amount of time orbiting the FreeBSD commu=
nity over the past few years. It's not as sad as you might think.=0AHowever=
, the networking portion of FreeBSD community is quite differently organize=
d than it is in Linux.=0A =0AWhat tends to shape Linux and FreeBSD, etc. ar=
e the money sources that flow into the communities. Of course Linux is quit=
e independently wealthy now. The senior executives of the Linux Foundation =
are paid nearly a million dollars a year, each.  Which just indicates that =
major corporations are seriously interested in controlling the evolution of=
 Linux (not the Gnu part, the part that has Linus Torvalds at its center).=
=0A =0AFreeBSD, in contrast, is a loose alliance of what you might call "em=
bedded hardware vendors" like NetApp as an example. They value an open, por=
table, efficient operating environment, but not for servers, laptops or sma=
rtphones.=0A =0AThey overlap at the intersection of network routing and sto=
rage platforms, where Linux doesn't seem to fit well, except in the case of=
 "home routers".=0A =0AAt least that's my view. The major controllers of ar=
chitectural elements are not terribly interested in FreeBSD's positive qual=
ities. FreeBSD is not very visible at Intel and ARM at all, interms of thei=
r product planning. IBM has no "Power" FreeBSD.=0A =0ATake for example, buf=
ferbloat as an issue that routing and switching hardware ought to address. =
This is a serious weakness in the FreeBSD community (where it should matter=
!) There's not been much demand by the major corporate spenders on FreeBSD =
in fixing bufferbloat. But then again, there's not been much visibility reg=
arding bufferbloat in the IETF, either. I'm not sure Torvalds has ever even=
 heard of it (and I suspect he would try to argue it isn't a problem at all=
, given his tendency to not think clearly about systems scale issues, so wh=
at's caused Linux to even bother is the fringes in OpenWRT land and mesh ne=
tworking land, plus Jim Gettys).=0A =0AAnyway, FreeBSD and FreeRTOS and a f=
ew other very strong but small communities have solutions that are far bett=
er for their actual needs than the behemoth mess that Linux has become. And=
 for those communities, they work very well. They are disentangled from Gnu=
, which is both a good and a bad thing depending on your perspective.=0A =
=0AI just spent 9 months trying to get a very tiny fix to the Linux kernel =
into the mainline kernel. I actually gave up, because it seemed utterly poi=
ntless, even though it was clearly a design error that I was fixing, and I =
was trying to meet all the constraints on patches. No one was fighting me, =
no one said it was wrong. I found the problem in a personal research projec=
t where it was a blocking bug, so I had to maintain it as an add-on private=
 patch (and I still do) that I needed to verify every release of the Linux =
kernel. Why is this? Well, it shows how Linux excludes ideas by the very bu=
reaucracy of its management structure. (and I'd suggest that the mess that =
"init" has turned into in the OS, which the kernel actually requires in ord=
er to be useful, called "systemd", is an example of how not to modularize a=
 portable OS kernel).=0A =0ASo FreeBSD, compared to Linux, in some ways, is=
 far more pleasant to deal with. The community doesn't have rude and cluele=
ss and entitled members like Torvalds and Alan Cox have been. It isn't bein=
g driven by a consortium of F100 companies in a near-cartel.=0A =0ASo there=
 are pluses and minuses. I suspect this is why many, many Linux developers =
actually use macOS as their personal computer for development. A paradox, g=
iven that macOS is completely proprietary.=0A =0A =0A =0AOn Sunday, March 2=
8, 2021 11:56am, "Dave Taht" <dave.taht@gmail.com> said:=0A=0A=0A=0A> I am =
sad about the state of freebsd today, and of companies=0A> contracting outs=
ide the authors of the code to get crappy things=0A> committed without revi=
ew and testing.=0A> =0A> https://lwn.net/Articles/850757/=0A> =0A> (long ra=
nt of mine in the comments).=0A> =0A> My hat is off to jason for sinking a =
frantic week into vastly=0A> improving that wireguard implementation, and I=
 hope he and his team=0A> gets caught up on sleep now.=0A> =0A> --=0A> "For=
 a successful technology, reality must take precedence over public=0A> rela=
tions, for Mother Nature cannot be fooled" - Richard Feynman=0A> =0A> dave@=
taht.net <Dave T=C3=A4ht> CTO, TekLibre, LLC Tel: 1-831-435-0729=0A> ______=
_________________________________________=0A> Cerowrt-devel mailing list=0A=
> Cerowrt-devel@lists.bufferbloat.net=0A> https://lists.bufferbloat.net/lis=
tinfo/cerowrt-devel=0A> 
------=_20210329162811000000_40463
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Dave -</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">I've spent a fair amount of =
time orbiting the FreeBSD community over the past few years. It's not as sa=
d as you might think.</p>=0A<p style=3D"margin:0;padding:0;font-family: ari=
al; font-size: 10pt; overflow-wrap: break-word;">However, the networking po=
rtion of FreeBSD community is quite differently organized than it is in Lin=
ux.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10p=
t; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 10pt; overflow-wrap: break-word;">What tends=
 to shape Linux and FreeBSD, etc. are the money sources that flow into the =
communities. Of course Linux is quite independently wealthy now. The senior=
 executives of the Linux Foundation are paid nearly a million dollars a yea=
r, each.&nbsp; Which just indicates that major corporations are seriously i=
nterested in controlling the evolution of Linux (not the Gnu part, the part=
 that has Linus Torvalds at its center).</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; o=
verflow-wrap: break-word;">FreeBSD, in contrast, is a loose alliance of wha=
t you might call "embedded hardware vendors" like NetApp as an example. The=
y value an open, portable, efficient operating environment, but not for ser=
vers, laptops or smartphones.</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">They overlap at the intersection of network routing and sto=
rage platforms, where Linux doesn't seem to fit well, except in the case of=
 "home routers".</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word=
;">At least that's my view. The major controllers of architectural elements=
 are not terribly interested in FreeBSD's positive qualities. FreeBSD is no=
t very visible at Intel and ARM at all, interms of their product planning. =
IBM has no "Power" FreeBSD.</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap:=
 break-word;">Take for example, bufferbloat as an issue that routing and sw=
itching hardware ought to address. This is a serious weakness in the FreeBS=
D community (where it should matter!) There's not been much demand by the m=
ajor corporate spenders on FreeBSD in fixing bufferbloat. But then again, t=
here's not been much visibility regarding bufferbloat in the IETF, either. =
I'm not sure Torvalds has ever even heard of it (and I suspect he would try=
 to argue it isn't a problem at all, given his tendency to not think clearl=
y about systems scale issues, so what's caused Linux to even bother is the =
fringes in OpenWRT land and mesh networking land, plus Jim Gettys).</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family=
: arial; font-size: 10pt; overflow-wrap: break-word;">Anyway, FreeBSD and F=
reeRTOS and a few other very strong but small communities have solutions th=
at are far better for their actual needs than the behemoth mess that Linux =
has become. And for those communities, they work very well. They are disent=
angled from Gnu, which is both a good and a bad thing depending on your per=
spective.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">I ju=
st spent 9 months trying to get a very tiny fix to the Linux kernel into th=
e mainline kernel. I actually gave up, because it seemed utterly pointless,=
 even though it was clearly a design error that I was fixing, and I was try=
ing to meet all the constraints on patches. No one was fighting me, no one =
said it was wrong. I found the problem in a personal research project where=
 it was a blocking bug, so I had to maintain it as an add-on private patch =
(and I still do) that I needed to verify every release of the Linux kernel.=
 Why is this? Well, it shows how Linux excludes ideas by the very bureaucra=
cy of its management structure. (and I'd suggest that the mess that "init" =
has turned into in the OS, which the kernel actually requires in order to b=
e useful, called "systemd", is an example of how not to modularize a portab=
le OS kernel).</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fon=
t-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>So FreeBSD, compared to Linux, in some ways, is far more pleasant to deal =
with. The community doesn't have rude and clueless and entitled members lik=
e Torvalds and Alan Cox have been. It isn't being driven by a consortium of=
 F100 companies in a near-cartel.</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">So there are pluses and minuses. I suspect this is why =
many, many Linux developers actually use macOS as their personal computer f=
or development. A paradox, given that macOS is completely proprietary.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">On Sunday, March 28, 202=
1 11:56am, "Dave Taht" &lt;dave.taht@gmail.com&gt; said:<br /><br /></p>=0A=
<div id=3D"SafeStyles1617047856">=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&gt; I am sad abou=
t the state of freebsd today, and of companies<br />&gt; contracting outsid=
e the authors of the code to get crappy things<br />&gt; committed without =
review and testing.<br />&gt; <br />&gt; https://lwn.net/Articles/850757/<b=
r />&gt; <br />&gt; (long rant of mine in the comments).<br />&gt; <br />&g=
t; My hat is off to jason for sinking a frantic week into vastly<br />&gt; =
improving that wireguard implementation, and I hope he and his team<br />&g=
t; gets caught up on sleep now.<br />&gt; <br />&gt; --<br />&gt; "For a su=
ccessful technology, reality must take precedence over public<br />&gt; rel=
ations, for Mother Nature cannot be fooled" - Richard Feynman<br />&gt; <br=
 />&gt; dave@taht.net &lt;Dave T=C3=A4ht&gt; CTO, TekLibre, LLC Tel: 1-831-=
435-0729<br />&gt; _______________________________________________<br />&gt=
; Cerowrt-devel mailing list<br />&gt; Cerowrt-devel@lists.bufferbloat.net<=
br />&gt; https://lists.bufferbloat.net/listinfo/cerowrt-devel<br />&gt; </=
p>=0A</div></font>
------=_20210329162811000000_40463--


--===============4478320183358388835==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4478320183358388835==--

