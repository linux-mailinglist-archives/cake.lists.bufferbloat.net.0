Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6EF828A5D
	for <lists+cake@lfdr.de>; Tue,  9 Jan 2024 17:48:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3B6F93CB47;
	Tue,  9 Jan 2024 11:48:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704818881;
	bh=2Gb/PrSnBTShWSeLD+mJTRyiyYfWoo8BnMaFgrQaKy4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=EOKdIzFn1zOG20ENTnypuslENi2yNeGj/85rP4KguI+aktmMR2r2UdnC8S81JiFMy
	 n9KTTPGYrToYSDcPYDJluSRIhwdipApCbF8cvdwEeA06bOoIW6tCXMXQmN+Hu7F0kn
	 dEos11nKzQL9Ky681kyBIzmqie+HlQnkBks/GZGj40++xclaeq5dfeVIHsvgcYn8y7
	 rSEC8G8joDUGdus4uL2jhouucJUfi7XarSWGf+YDrvoJO/Uw+FG5X++D4C4Q6NfLmR
	 F0npcbOkz2g3b9KJ2YS/3ruL5rzU/qhfdidNKvAg22oTq2Xa5oZUcCnKcXz8WbRmQP
	 i6l+4p6gL9MXQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 226F33B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 11:48:00 -0500 (EST)
Received: by mail-qk1-x72f.google.com with SMTP id
 af79cd13be357-78324e302d4so138358585a.1
 for <cake@lists.bufferbloat.net>; Tue, 09 Jan 2024 08:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704818879; x=1705423679; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=m74+TyMts6hYJpxgLbdAsi1tnntuRSZp4n8BgB5CqMw=;
 b=OHoV0oKz9FcBGJZW5ig/QxEv1miPSYhR1lONKBRRzH54Y2JHqSArax2LbzVvR3y96F
 5ad2Uf2m3nRZl/kNg+gZAJKwy4qSi7iVT/yvRM6PYn6oRPll4AixHFfz+Gmu0jVdGTsq
 ql05A9gR43fqRxoV3TN+qdTVF6tf1BhZ8lmWoatJJQD4DXUnZ5dw1ao+vo78ZH4Xi2yE
 2Vm6zgKVu+0xhSxAFKPdT3e6k6XYzKlNgOdEhcUPlqBcUwPUy942CXqh9B8UOVv0fS43
 13cgMhiusUJqjUqff/BaettOTLeM12DgzQ9JPnn2JnSleHgO+OkudT4Y3wzSrgTUip6y
 yrRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704818879; x=1705423679;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m74+TyMts6hYJpxgLbdAsi1tnntuRSZp4n8BgB5CqMw=;
 b=NWchxCDWI/MzMN/ndXY4eFdkVpAWu+wZuZPWEgkusD6onJuNSD0XM/3JdJFnFl7qy9
 U9z1x+TWD/EbfJSxfvss+CL0n7jCdf8YXezC8BpqwRhcL1iZqf0eYaNJ/QfNMo4s4FC6
 VnDSNzCeThXAdTMho4SKmn5W01prZ2BAvODuecHkeKt4Edqp6xM9E/o4IO9jXX1rXNbm
 zdwrtF1WEIUCmENdky14rQmjrcupYy7+K3znG2f+2BmJrAljMxBQvviGHVnXhlNF2GTz
 gSuVP99CjTpBMmrKIzLJx6AApfn4/OfKrwfrRwmNZBQQTKJuVONnM3qN8mXcLO2QCscN
 DNtQ==
X-Gm-Message-State: AOJu0YyxqB1bWj7kIVsh6Y5vd60fxQxERf7UJNiGM2CTD0PPRmXOYpGb
 dPfBWGAK3TNp7mskk6IqH52qn6SEafmuog3J0L8=
X-Google-Smtp-Source: AGHT+IG10ZeQDwPyDq5tDmFoNQXO2B2JCxpO74yLM40hCmQ7xXc3+680W8pa9kQ67DIeGyhKGo4j/fhtMVa0aoQIcGE=
X-Received: by 2002:ad4:5c4a:0:b0:680:b231:324f with SMTP id
 a10-20020ad45c4a000000b00680b231324fmr7472411qva.119.1704818879266; Tue, 09
 Jan 2024 08:47:59 -0800 (PST)
MIME-Version: 1.0
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
In-Reply-To: <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
Date: Tue, 9 Jan 2024 08:47:47 -0800
Message-ID: <CANypexQE1v6NZetOjpsHWX0mF43Sru6NxpCfNzWuEyrL+tL3tg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] Ubiquity (Unifi ) Smart Queues
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Cc: CAKE list <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3552058553946016615=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3552058553946016615==
Content-Type: multipart/alternative; boundary="000000000000b4862a060e86130e"

--000000000000b4862a060e86130e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks to everyone for the comments.

Wow Dave.  Thanks for the links to the lawsuit.  Fascinating.  I didn't
know about this.

Since the original email, I actually downgraded from Spectrum cable 300
Mb/s to ? maybe it's 200 now ?, anyway it's $20 a month cheaper.  And
decreased the "smart queue" limits to 80/10 Mb/s.

Video streaming multiple TVs at once is all working well.  No complaints
from the family. Win!

Stats are looking pretty good after ~8 days uptime

root@USG-Pro-4:/home/daveseddon# tc -p -s -d qdisc show
qdisc fq_codel 8001: dev eth0 root refcnt 2 limit 10240p flows 1024 quantum
1514 target 5.0ms interval 100.0ms ecn
 Sent 161758598841 bytes 147108740 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
  maxpacket 1514 drop_overlimit 0 new_flow_count 299 ecn_mark 0
  new_flows_len 0 old_flows_len 4
qdisc htb 1: dev eth2 root refcnt 2 r2q 10 default 10 direct_packets_stat 0
ver 3.17
 Sent 32491619852 bytes 93191686 pkt (dropped 0, overlimits 36499993
requeues 0)                                <---- OVER ( 36499993 / 32491619=
852
~=3D 0.00112)
 backlog 0b 0p requeues 0
qdisc fq_codel 100: dev eth2 parent 1:10 limit 10240p flows 1024 quantum
1514 target 5.0ms interval 100.0ms ecn
 Sent 32491619852 bytes 93191686 pkt (dropped 37156, overlimits 0 requeues
0)                                    <------- DROPS ( 37156 / 32491619852
~=3D 0.0000011 )
 backlog 0b 0p requeues 0
  maxpacket 1514 drop_overlimit 0 new_flow_count 15549718 ecn_mark
1572           <--- some ECN
  new_flows_len 1 old_flows_len 5
qdisc ingress ffff: dev eth2 parent ffff:fff1 ----------------
 Sent 169147707173 bytes 346339031 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
qdisc pfifo_fast 0: dev imq0 root refcnt 2 bands 3 priomap  1 2 2 2 1 2 0 0
1 1 1 1 1 1 1 1
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
qdisc htb 1: dev ifb_eth2 root refcnt 2 r2q 10 default 10
direct_packets_stat 0 ver 3.17
 Sent 173801196835 bytes 346221051 pkt (dropped 0, overlimits 192974926
requeues 0)                       <------- OVER ( 192974926 / 173801196835
~=3D 0.0011 )
 backlog 0b 0p requeues 0
qdisc fq_codel 100: dev ifb_eth2 parent 1:10 limit 10240p flows 1024
quantum 1514 target 5.0ms interval 100.0ms ecn
 Sent 173801196835 bytes 346221051 pkt (dropped 140361, overlimits 0
requeues 0)                           <------- DROPS ( 37156 / 32491619852
~=3D 0.00000080 )
 backlog 0b 0p requeues 0
  maxpacket 1514 drop_overlimit 0 new_flow_count 30970803 ecn_mark
1721          <--- some ECN
  new_flows_len 1 old_flows_len 3

root@USG-Pro-4:/home/daveseddon# tc -d class show dev eth2
class htb 1:10 root leaf 100: prio 0 quantum 118750 rate 9500Kbit ceil
9500Kbit burst 1598b/1 mpu 0b overhead 0b cburst 1598b/1 mpu 0b overhead 0b
level 0
class fq_codel 100:98 parent 100:
class fq_codel 100:c7 parent 100:
class fq_codel 100:180 parent 100:
class fq_codel 100:238 parent 100:
class fq_codel 100:305 parent 100:

root@USG-Pro-4:/home/daveseddon# tc -d class show dev ifb_eth2
class htb 1:10 root leaf 100: prio 0 quantum 200000 rate 76000Kbit ceil
76000Kbit burst 1596b/1 mpu 0b overhead 0b cburst 1596b/1 mpu 0b overhead
0b level 0
class fq_codel 100:247 parent 100:
class fq_codel 100:2c8 parent 100:

root@USG-Pro-4:/home/daveseddon# uptime
 08:18:21 up 8 days, 19:02,  1 user,  load average: 0.00, 0.01, 0.05

root@USG-Pro-4:/home/daveseddon# netstat -ia
Kernel Interface table
Iface   MTU Met   RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP TX-OVR
Flg
eth0       1500 0  101353919      0      0 0      157787555      0      0
   0 BMRU
eth1       1500 0    663477      0      0 0       1090665      0      0
 0 BMRU
eth2       1500 0  377699134      0      0 0      98049876      0      0
   0 BMRU
eth3       1500 0         0      0      0 0             0      0      0
 0 BM
eth0.20    1500 0   3437713      0      0 0       2260022      0      0
 0 BMRU
eth0.40    1500 0     12524      0      0 0       1012668      0      0
 0 BMRU
ifb_eth2   1500 0  346333308      0  22391 0      346310917      0      0
   0 BORU   <--- i'm still curious about these drops, but it's a tiny
amount. 22391 / 346333308 ~=3D 0.000064
imq0      16000 0         0      0      0 0             0      0      0
 0 ORU
lo        65536 0     38330      0      0 0         38330      0      0
 0 LRU
loop0      1500 0         0      0      0 0             0      0      0
 0 BM
loop1      1500 0         0      0      0 0             0      0      0
 0 BM
loop2      1500 0         0      0      0 0             0      0      0
 0 BM
loop3      1500 0         0      0      0 0             0      0      0
 0 BM
npi0       1500 0         0      0      0 0             0      0      0
 0 BM
npi1       1500 0         0      0      0 0             0      0      0
 0 BM
npi2       1500 0         0      0      0 0             0      0      0
 0 BM
npi3       1500 0         0      0      0 0             0      0      0
 0 BM





On Tue, Jan 9, 2024 at 8:05=E2=80=AFAM Dave Taht via Cake <
cake@lists.bufferbloat.net> wrote:

> On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake
> <cake@lists.bufferbloat.net> wrote:
>
> > Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc bi=
naries
> when new firmwares are released anymore, as they don=E2=80=99t publish th=
e GPL
> archives on their webpage after the redesign, and they don=E2=80=99t resp=
ond to
> requests for them either by the looks of the forums. So if it breaks
> there=E2=80=99s not much I can do anymore.
>
> This irks me enormously. It is the direct outcome of the cambium
> elevate lawsuit, where both companies lost, the ISPs lost, open source
> practices long established about publishing sources, lost, and the
> lawyers went on to other nasty things leaving this trail of awful
> precedents  in their wake.
>
> https://www.mtin.net/blog/ubnt-vs-cambium/
>
> I do not know what to do about it. It also irks me that as a
> contributor to "smart queues" they are not maintaining it well.
>
> >
> > Best Regards,
> > Nils Andreas Svee
> >
> > On Jan 3, 2024, at 14:44, Pete Heist via Cake <
> cake@lists.bufferbloat.net> wrote:
> >
> > On Tue, 2024-01-02 at 10:59 -0800, dave seddon via Cake wrote:
> >
> > I thought people might be interested to see what Ubiquity/Unifi is
> > doing with "Smart Queues" on their devices.  The documentation on
> > their website is not very informative.
> > <snip>
> > "Smart Queue" Implementation
> >
> > Looks like they only apply tc qdiscs to the Eth2, and sadly this is
> > NOT cake, but fq_codel.
> >
> > And cake isn't available :(
> >
> > root@USG-Pro-4:~# tc qdisc replace dev eth0 cake bandwidth 100m rtt
> > 20ms
> > Unknown qdisc "cake", hence option "bandwidth" is unparsable
> >
> >
> > Hi Dave, there's a community contributed version of Cake for EdgeRouter
> > devices that I've been using for years on production ER-X's:
> >
> >
> https://community.ui.com/questions/Cake-compiled-for-the-EdgeRouter-devic=
es/fc1ff27c-f321-4344-8737-fcc755cae8a2
> >
> > I don't think that works for UniFi/USG devices, however, and one should
> > note the disclaimer and be careful when installing it. Also, it must be
> > re-installed after every upgrade.
> >
> > Cheers,
> > Pete
> >
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
> >
> >
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
>
>
>
> --
> 40 years of net history, a couple songs:
> https://www.youtube.com/watch?v=3DD9RGX6QFm5E
> Dave T=C3=A4ht CSO, LibreQos
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000b4862a060e86130e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks to everyone for the comments.</div><div><br></=
div><div>Wow Dave.=C2=A0 Thanks for the links to the lawsuit.=C2=A0 Fascina=
ting.=C2=A0 I didn&#39;t know about this.<br></div><div><br></div><div>Sinc=
e the original email, I actually downgraded from Spectrum cable 300 Mb/s to=
 ? maybe it&#39;s 200 now ?, anyway it&#39;s $20 a month cheaper.=C2=A0 And=
 decreased the &quot;smart queue&quot; limits to 80/10 Mb/s.</div><div><br>=
</div><div>Video streaming multiple TVs at once is all working well.=C2=A0 =
No complaints from the family. Win!</div><div><br></div><div>Stats are look=
ing pretty good after ~8 days uptime<br></div><div><font size=3D"2"><span s=
tyle=3D"font-family:monospace"><br></span></font></div><div><font size=3D"2=
"><span style=3D"font-family:monospace">root@USG-Pro-4:/home/daveseddon# tc=
 -p -s -d qdisc show<br>qdisc fq_codel 8001: dev <span style=3D"background-=
color:rgb(255,255,0)">eth0</span> root refcnt 2 limit 10240p flows 1024 qua=
ntum 1514 target 5.0ms interval 100.0ms ecn <br>=C2=A0Sent 161758598841 byt=
es 147108740 pkt (dropped 0, overlimits 0 requeues 0) <br>=C2=A0backlog 0b =
0p requeues 0 <br>=C2=A0 maxpacket 1514 drop_overlimit 0 new_flow_count 299=
 ecn_mark 0<br>=C2=A0 new_flows_len 0 old_flows_len 4<br>qdisc htb 1: dev e=
th2 root refcnt 2 r2q 10 default 10 direct_packets_stat 0 ver 3.17=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0Sent 32491619852 bytes 93=
191686 pkt (dropped 0, overlimits 36499993 requeues 0)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
---- OVER ( <span style=3D"font-weight:normal;font-style:normal;text-align:=
right">36499993 / </span><span style=3D"font-weight:normal;font-style:norma=
l;text-align:right">32491619852 ~=3D </span>0.00112)<br>=C2=A0backlog 0b 0p=
 requeues 0 <br>qdisc fq_codel 100: dev eth2 parent 1:10 limit 10240p flows=
 1024 quantum 1514 target 5.0ms interval 100.0ms ecn <br>=C2=A0Sent 3249161=
9852 bytes 93191686 pkt (dropped 37156, overlimits 0 requeues 0) =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;------- DROPS ( 3715=
6 / 32491619852 ~=3D 0.0000011 )=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 <br>=C2=A0backlog 0b 0p requeues 0 <br>=C2=A0 maxpacket 1514 drop_overlimi=
t 0 new_flow_count 15549718 ecn_mark 1572=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;--- some ECN<br>=C2=A0 new_flows_len 1 old_=
flows_len 5<br>qdisc ingress ffff: dev eth2 parent</span></font><span style=
=3D"font-family:monospace"><font size=3D"2"> ffff:fff1 ---------------- <br=
>=C2=A0Sent 169147707173 bytes 346339031 pkt (dropped 0, overlimits 0 reque=
ues 0) <br>=C2=A0backlog 0b 0p requeues 0 <br>qdisc pfifo_fast 0: dev imq0 =
root refcnt 2 bands 3 priomap =C2=A01 2 2 2 1 2 0 0 1 1 1 1 1 1 1 1<br>=C2=
=A0Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0) <br>=C2=A0backlo=
g 0b 0p requeues 0 <br>qdisc htb 1: dev ifb_eth2 root refcnt 2 r2q 10 defau=
lt 10 direct_packets_stat 0 ver 3.17<br>=C2=A0Sent 173801196835 bytes 34622=
1051 pkt (dropped 0, overlimits 192974926 requeues 0)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;------- OVER (=C2=A0192974926 /=C2=
=A0173801196835 ~=3D=C2=A00.0011 ) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <=
br>=C2=A0backlog 0b 0p requeues 0 <br>qdisc fq_codel 100: dev ifb_eth2 pare=
nt 1:10 limit 10240p flows 1024 quantum 1514 target 5.0ms interval 100.0ms =
ecn <br>=C2=A0Sent 173801196835 bytes 346221051 pkt (dropped 140361, overli=
mits 0 requeues 0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 &lt;------- DROPS ( 37156 / 32491619852 ~=3D=C2=A0=
0.00000080 )</font><font size=3D"2"> </font></span><br><span style=3D"font-=
family:monospace">=C2=A0backlog 0b 0p requeues 0 <br>=C2=A0 maxpacket 1514 =
drop_overlimit 0 new_flow_count 30970803 ecn_mark 1721=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font-family:monospa=
ce"> &lt;--- some ECN</span><br><span style=3D"font-family:monospace">=C2=
=A0 new_flows_len 1 old_flows_len 3<br></span></div><div><span style=3D"fon=
t-family:monospace"><br></span></div><div><span style=3D"font-family:monosp=
ace">root@USG-Pro-4:/home/daveseddon# tc -d class show dev eth2<br>class ht=
b 1:10 root leaf 100: prio 0 quantum 118750 rate 9500Kbit ceil 9500Kbit bur=
st 1598b/1 mpu 0b overhead 0b cburst 1598b/1 mpu 0b overhead 0b level 0 <br=
>class fq_codel 100:98 parent 100: <br>class fq_codel 100:c7 parent 100: <b=
r>class fq_codel 100:180 parent 100: <br>class fq_codel 100:238 parent 100:=
 <br>class fq_codel 100:305 parent 100: <br></span></div><div><span style=
=3D"font-family:monospace"><br></span></div><div><span style=3D"font-family=
:monospace">root@USG-Pro-4:/home/daveseddon# tc -d class show dev ifb_eth2<=
br>class htb 1:10 root leaf 100: prio 0 quantum 200000 rate 76000Kbit ceil =
76000Kbit burst 1596b/1 mpu 0b overhead 0b cburst 1596b/1 mpu 0b overhead 0=
b level 0 <br>class fq_codel 100:247 parent 100: <br>class fq_codel 100:2c8=
 parent 100: </span><span style=3D"font-family:monospace"><br></span></div>=
<div><span style=3D"font-family:monospace"><br></span></div><div><span styl=
e=3D"font-family:monospace">root@USG-Pro-4:/home/daveseddon# uptime<br>=C2=
=A008:18:21 up 8 days, 19:02, =C2=A01 user, =C2=A0load average: 0.00, 0.01,=
 0.05</span></div><div><span style=3D"font-family:monospace"><br></span></d=
iv><div><span style=3D"font-family:monospace">root@USG-Pro-4:/home/davesedd=
on# netstat -ia<br>Kernel Interface table<br>Iface =C2=A0 MTU Met =C2=A0 RX=
-OK RX-ERR RX-DRP RX-OVR =C2=A0 =C2=A0TX-OK TX-ERR TX-DRP TX-OVR Flg<br>eth=
0 =C2=A0 =C2=A0 =C2=A0 1500 0 =C2=A0101353919 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0157787555 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BMRU<br>eth1 =C2=A0 =C2=A0 =C2=A0 150=
0 0 =C2=A0 =C2=A0663477 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 0 =C2=
=A0 =C2=A0 =C2=A0 1090665 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A00 BMRU<br>eth2 =C2=A0 =C2=A0 =C2=A0 1500 0 =C2=A0377699134=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A098049876=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BMRU<br>=
<font size=3D"2">eth3 =C2=A0 =C2=A0 =C2=A0 1500 0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A00 BM<br>eth0.20 =C2=A0 =C2=A01500 0 =C2=A0 3437713 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 2260022 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BMRU<br>eth0.40 =C2=
=A0 =C2=A01500 0 =C2=A0 =C2=A0 12524 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A00 0 =C2=A0 =C2=A0 =C2=A0 1012668 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 =C2=A00 BMRU<br>ifb_eth2 =C2=A0 1500 0 =C2=A034633330=
8 =C2=A0 =C2=A0 =C2=A00 =C2=A022391 0 =C2=A0 =C2=A0 =C2=A0346310917 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BORU=C2=A0=C2=A0=
 &lt;--- i&#39;m still curious about these drops, but it&#39;s a tiny amoun=
t. </font><font size=3D"2">22391 / 346333308 ~=3D 0.000064<br></font><font =
size=3D"2">imq0 =C2=A0 =C2=A0 =C2=A016000 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A00 ORU<br>lo =C2=A0 =C2=A0 =C2=A0 =C2=A065536 0 =C2=A0 =C2=A0 38330 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3=
8330 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 LRU<=
/font></span><span style=3D"font-family:monospace"><br>loop0 =C2=A0 =C2=A0 =
=C2=A01500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>loop1 =C2=A0 =C2=A0 =
=C2=A01500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>loop2 =C2=A0 =C2=A0 =
=C2=A01500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>loop3 =C2=A0 =C2=A0 =
=C2=A01500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>npi0 =C2=A0 =C2=A0 =
=C2=A0 1500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>npi1 =C2=A0 =C2=
=A0 =C2=A0 1500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>npi2 =C2=A0 =
=C2=A0 =C2=A0 1500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM<br>npi3 =C2=
=A0 =C2=A0 =C2=A0 1500 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A00 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 BM</span></d=
iv><div><span style=3D"font-family:monospace"><br></span></div><div><span s=
tyle=3D"font-family:monospace"><br></span></div><br><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Jan 9, 2024 at 8:05=E2=80=AFAM Dave Taht via Cake &lt;<a href=3D"mailto:cak=
e@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue=
, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake<br>
&lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake@li=
sts.bufferbloat.net</a>&gt; wrote:<br>
<br>
&gt; Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc b=
inaries when new firmwares are released anymore, as they don=E2=80=99t publ=
ish the GPL archives on their webpage after the redesign, and they don=E2=
=80=99t respond to requests for them either by the looks of the forums. So =
if it breaks there=E2=80=99s not much I can do anymore.<br>
<br>
This irks me enormously. It is the direct outcome of the cambium<br>
elevate lawsuit, where both companies lost, the ISPs lost, open source<br>
practices long established about publishing sources, lost, and the<br>
lawyers went on to other nasty things leaving this trail of awful<br>
precedents=C2=A0 in their wake.<br>
<br>
<a href=3D"https://www.mtin.net/blog/ubnt-vs-cambium/" rel=3D"noreferrer" t=
arget=3D"_blank">https://www.mtin.net/blog/ubnt-vs-cambium/</a><br>
<br>
I do not know what to do about it. It also irks me that as a<br>
contributor to &quot;smart queues&quot; they are not maintaining it well.<b=
r>
<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Nils Andreas Svee<br>
&gt;<br>
&gt; On Jan 3, 2024, at 14:44, Pete Heist via Cake &lt;<a href=3D"mailto:ca=
ke@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&=
gt; wrote:<br>
&gt;<br>
&gt; On Tue, 2024-01-02 at 10:59 -0800, dave seddon via Cake wrote:<br>
&gt;<br>
&gt; I thought people might be interested to see what Ubiquity/Unifi is<br>
&gt; doing with &quot;Smart Queues&quot; on their devices.=C2=A0 The docume=
ntation on<br>
&gt; their website is not very informative.<br>
&gt; &lt;snip&gt;<br>
&gt; &quot;Smart Queue&quot; Implementation<br>
&gt;<br>
&gt; Looks like they only apply tc qdiscs to the Eth2, and sadly this is<br=
>
&gt; NOT cake, but fq_codel.<br>
&gt;<br>
&gt; And cake isn&#39;t available :(<br>
&gt;<br>
&gt; root@USG-Pro-4:~# tc qdisc replace dev eth0 cake bandwidth 100m rtt<br=
>
&gt; 20ms<br>
&gt; Unknown qdisc &quot;cake&quot;, hence option &quot;bandwidth&quot; is =
unparsable<br>
&gt;<br>
&gt;<br>
&gt; Hi Dave, there&#39;s a community contributed version of Cake for EdgeR=
outer<br>
&gt; devices that I&#39;ve been using for years on production ER-X&#39;s:<b=
r>
&gt;<br>
&gt; <a href=3D"https://community.ui.com/questions/Cake-compiled-for-the-Ed=
geRouter-devices/fc1ff27c-f321-4344-8737-fcc755cae8a2" rel=3D"noreferrer" t=
arget=3D"_blank">https://community.ui.com/questions/Cake-compiled-for-the-E=
dgeRouter-devices/fc1ff27c-f321-4344-8737-fcc755cae8a2</a><br>
&gt;<br>
&gt; I don&#39;t think that works for UniFi/USG devices, however, and one s=
hould<br>
&gt; note the disclaimer and be careful when installing it. Also, it must b=
e<br>
&gt; re-installed after every upgrade.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Pete<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
<br>
<br>
<br>
-- <br>
40 years of net history, a couple songs:<br>
<a href=3D"https://www.youtube.com/watch?v=3DD9RGX6QFm5E" rel=3D"noreferrer=
" target=3D"_blank">https://www.youtube.com/watch?v=3DD9RGX6QFm5E</a><br>
Dave T=C3=A4ht CSO, LibreQos<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--000000000000b4862a060e86130e--

--===============3552058553946016615==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3552058553946016615==--
