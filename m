Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5F81C27E8
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 21:01:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8C9493CB47;
	Sat,  2 May 2020 15:01:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588446084;
	bh=22xgKx4Sc5Sqndpj7HFa94TIHC7Kl+X7xg94y7/GPMg=;
	h=References:In-Reply-To:To:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=HgLHijMXzgpCaoIiZK73DihTWuXnyWjw/55oLOxcoO3TeVfxU7gcM3sezglLm61fk
	 EO0G5QQE8mDvwbGDI/Nmu8iocFVk0zU7RJyZQjg42D1DzNM7G4oYN45qnh3TgOIr7n
	 ML6wThZi1NX5N0oJJUGdRY1bTKTAe5hf+Ekfda9s8sTf+rzs4U5lCZ44ZhO28sODbE
	 oDKlmfj/IRLAH/H0iQwZMIPmF2/TywRDvDt7z6JwlbvFG4FudhoTiozH+xh53hrJ+5
	 BbZlk6UCyW/7fckB71qxfri13jmxM+53VjL9973fwUxZ+f2M7eWs0jt0oQJbGDp/yD
	 Gib1yc9SsfhXQ==
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost> <013601d6201f$04c7db50$0e5791f0$@hanekom.net>
 <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com>
 <CAA93jw72bkssn2CJkrn5XiKhFapSfGDMPN0hF5wOP0z0jX0yzg@mail.gmail.com>
 <1588441128.39172345@apps.rackspace.com>
In-Reply-To: <1588441128.39172345@apps.rackspace.com>
To: "David P. Reed" <dpreed@deepplum.com>
MIME-Version: 1.0
Message-ID: <mailman.220.1588446084.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Sergey Fedorov via Cake <cake@lists.bufferbloat.net>
Precedence: list
Cc: Michael Richardson <mcr@sandelman.ca>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Jannie Hanekom <jannie@hanekom.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Sergey Fedorov <sfedorov@netflix.com>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
Content-Type: multipart/mixed; boundary="===============4537529255830772381=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4537529255830772381==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <sfedorov@netflix.com>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id EC8353CB38
	for <cake@lists.bufferbloat.net>; Sat,  2 May 2020 15:01:22 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id k18so8131914ion.0
        for <cake@lists.bufferbloat.net>; Sat, 02 May 2020 12:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netflix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KaZxBE/HrJEvLXPV6r92pF0fykwY/5qIG1znDxnHOww=;
        b=U1UdKkjP8+gQOL5NJmqWhiLgDTP63rp2RddNRUo/Ry0kDeAMNPNX/rkXN1qRDNlTuM
         0p0sfiVgD3CmSvBmVyYPwb3PCN0niRDkNOLwCHJMcW3tSwvmZEwdSFWPPLJ3NyKlQuWz
         Y6vgjsm0Z/m6JeSJkbIxwaqys2Yict6DcZh7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KaZxBE/HrJEvLXPV6r92pF0fykwY/5qIG1znDxnHOww=;
        b=eQgFzXTnKtSjkDFQb7eaimjJLEVF91iv9zWziwTWLVk2A/bEQNPzoNAba0nrH+6ix5
         nL2NIslWAqQth665BsWadWdnX+DRIk8t2iHMAz4U/ApmdwP1opJxkIfUzBESrAOJHtp2
         kJeozpzlpyLCNT1RuyEVaodMBAJTNZUek0Eo3b+D4Qey6FHX7aKciA4AMcYFx0/S8YYj
         Q95LWzeifn/uzx5roWAuiFG/1pu+aO68u45gPmFlPV7gGyBGEZXqS3qJltpYaxtjqG1D
         gsqJM3AUcN3PYOmNw3SFD3Jd10ul34QEbNy3U3pEwtA+NXn0rxNEUdFF/pR8m8OHdTb9
         a7fw==
X-Gm-Message-State: AGi0PubsqF14CSIMp15yfyxzi+x/72BHssJGey36vca+SeDYJCC4NfFk
	35BlUQKk/5umX698JidvD8kpC33Xabnio5J/nlmjTg==
X-Google-Smtp-Source: APiQypLNiaGiouj0twrbERht93ADf1FdQvywpXKCuCf50C2Dra2Jv87ovdNJS3MFbUncB2Jny6ydYDAKu69pigcdH+s=
X-Received: by 2002:a5d:9604:: with SMTP id w4mr9289313iol.105.1588446082229;
 Sat, 02 May 2020 12:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de> <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost> <013601d6201f$04c7db50$0e5791f0$@hanekom.net>
 <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com>
 <CAA93jw72bkssn2CJkrn5XiKhFapSfGDMPN0hF5wOP0z0jX0yzg@mail.gmail.com> <1588441128.39172345@apps.rackspace.com>
In-Reply-To: <1588441128.39172345@apps.rackspace.com>
From: Sergey Fedorov <sfedorov@netflix.com>
Date: Sat, 2 May 2020 12:00:45 -0700
Message-ID: <CADN=VJ=M2Mm5yVBy8m62LPHa+8FpEF5z-8cosADcShiSoTGD+Q@mail.gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
To: "David P. Reed" <dpreed@deepplum.com>
Cc: Dave Taht <dave.taht@gmail.com>, Benjamin Cronce <bcronce@gmail.com>, 
	Michael Richardson <mcr@sandelman.ca>, Jannie Hanekom <jannie@hanekom.net>, 
	bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>, 
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: multipart/alternative; boundary="0000000000007a295b05a4aeec89"

--0000000000007a295b05a4aeec89
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dave, thanks for sharing interesting thoughts and context.

> I am still a bit worried about properly defining "latency under load" for
> a NAT routed situation. If the test is based on ICMP Ping packets *from t=
he
> server*,  it will NOT be measuring the full path latency, and if the
> potential congestion is in the uplink path from the access provider's
> residential box to the access provider's router/switch, it will NOT measu=
re
> congestion caused by bufferbloat reliably on either side, since the
> bufferbloat will be outside the ICMP Ping path.
>
> I realize that a browser based speed test has to be basically run from th=
e
> "server" end, because browsers are not that good at time measurement on a
> packet basis. However, there are ways to solve this and avoid the ICMP Pi=
ng
> issue, with a cooperative server.

This erroneously assumes that fast.com measures latency from the server
side. It does not. The measurements are done from the client, over http,
with a parallel connection(s) to the same or similar set of servers, by
sending empty requests over a previously established connection (you can
see that in the browser web inspector).
It should be noted that the value is not precisely the "RTT on a
TCP/UDP flow that is loaded with traffic", but "user delay given the
presence of heavy parallel flows". With that, some of the challenges you
mentioned do not apply.
In line with another point I've shared earlier - the goal is to measure and
explain the user experience, not to be a diagnostic tool showing internal
transport metrics.

SERGEY FEDOROV

Director of Engineering

sfedorov@netflix.com

121 Albright Way | Los Gatos, CA 95032



On Sat, May 2, 2020 at 10:38 AM David P. Reed <dpreed@deepplum.com> wrote:

> I am still a bit worried about properly defining "latency under load" for
> a NAT routed situation. If the test is based on ICMP Ping packets *from t=
he
> server*,  it will NOT be measuring the full path latency, and if the
> potential congestion is in the uplink path from the access provider's
> residential box to the access provider's router/switch, it will NOT measu=
re
> congestion caused by bufferbloat reliably on either side, since the
> bufferbloat will be outside the ICMP Ping path.
>
>
>
> I realize that a browser based speed test has to be basically run from th=
e
> "server" end, because browsers are not that good at time measurement on a
> packet basis. However, there are ways to solve this and avoid the ICMP Pi=
ng
> issue, with a cooperative server.
>
>
>
> I once built a test that fixed this issue reasonably well. It carefully
> created a TCP based RTT measurement channel (over HTTP) that made the ech=
o
> have to traverse the whole end-to-end path, which is the best and only wa=
y
> to accurately define lag under load from the user's perspective. The clie=
nt
> end of an unloaded TCP connection can depend on TCP (properly prepared by
> getting it past slowstart) to generate a single packet response.
>
>
>
> This "TCP ping" is thus compatible with getting the end-to-end measuremen=
t
> on the server end of a true RTT.
>
>
>
> It's like tcp-traceroute tool, in that it tricks anyone in the middle
> boxes into thinking this is a real, serious packet, not an optional low
> priority packet.
>
>
>
> The same issue comes up with non-browser-based techniques for measuring
> true lag-under-load.
>
>
>
> Now as we move HTTP to QUIC, this actually gets easier to do.
>
>
>
> One other opportunity I haven't explored, but which is pregnant with
> potential is the use of WebRTC, which runs over UDP internally. Since
> JavaScript has direct access to create WebRTC connections (multiple ones)=
,
> this makes detailed testing in the browser quite reasonable.
>
>
>
> And the time measurements can resolve well below 100 microseconds, if the
> JS is based on modern JIT compilation (Chrome, Firefox, Edge all compile =
to
> machine code speed if the code is restricted and in a loop). Then again,
> there is Web Assembly if you want to write C code that runs in the brower
> fast. WebAssembly is a low level language that compiles to machine code i=
n
> the browser execution, and still has access to all the browser networking
> facilities.
>
>
>
> On Saturday, May 2, 2020 12:52pm, "Dave Taht" <dave.taht@gmail.com> said:
>
> > On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce <bcronce@gmail.com>
> wrote:
> > >
> > > > Fast.com reports my unloaded latency as 4ms, my loaded latency as
> ~7ms
> >
> > I guess one of my questions is that with a switch to BBR netflix is
> > going to do pretty well. If fast.com is using bbr, well... that
> > excludes much of the current side of the internet.
> >
> > > For download, I show 6ms unloaded and 6-7 loaded. But for upload the
> loaded
> > shows as 7-8 and I see it blip upwards of 12ms. But I am no longer usin=
g
> any
> > traffic shaping. Any anti-bufferbloat is from my ISP. A graph of the
> bloat would
> > be nice.
> >
> > The tests do need to last a fairly long time.
> >
> > > On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom <jannie@hanekom.net>
> > wrote:
> > >>
> > >> Michael Richardson <mcr@sandelman.ca>:
> > >> > Does it find/use my nearest Netflix cache?
> > >>
> > >> Thankfully, it appears so. The DSLReports bloat test was interesting=
,
> > but
> > >> the jitter on the ~240ms base latency from South Africa (and other
> parts
> > of
> > >> the world) was significant enough that the figures returned were oft=
en
> > >> unreliable and largely unusable - at least in my experience.
> > >>
> > >> Fast.com reports my unloaded latency as 4ms, my loaded latency as ~7=
ms
> > and
> > >> mentions servers located in local cities. I finally have a test I ca=
n
> > share
> > >> with local non-technical people!
> > >>
> > >> (Agreed, upload test would be nice, but this is a huge step forward
> from
> > >> what I had access to before.)
> > >>
> > >> Jannie Hanekom
> > >>
> > >> _______________________________________________
> > >> Cake mailing list
> > >> Cake@lists.bufferbloat.net
> > >> https://lists.bufferbloat.net/listinfo/cake
> > >
> > > _______________________________________________
> > > Cake mailing list
> > > Cake@lists.bufferbloat.net
> > > https://lists.bufferbloat.net/listinfo/cake
> >
> >
> >
> > --
> > Make Music, Not War
> >
> > Dave T=C3=A4ht
> > CTO, TekLibre, LLC
> > http://www.teklibre.com
> > Tel: 1-831-435-0729
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
> >
>

--0000000000007a295b05a4aeec89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Dave, thanks for sharing interesting thoughts an=
d context.=C2=A0</div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote">I a=
m still a bit worried about properly defining &quot;latency under load&quot=
; for a NAT routed situation. If the test is based on ICMP Ping packets *fr=
om the server*,=C2=A0 it will NOT be measuring the full path latency, and i=
f the potential congestion is in the uplink path from the access provider&#=
39;s residential box to the access provider&#39;s router/switch, it will NO=
T measure congestion caused by bufferbloat reliably on either side, since t=
he bufferbloat will be outside the ICMP Ping path.<br>=C2=A0<br>I realize t=
hat a browser based speed test has to be basically run from the &quot;serve=
r&quot; end, because browsers are not that good at time measurement on a pa=
cket basis. However, there are ways to solve this and avoid the ICMP Ping i=
ssue, with a cooperative server.</blockquote></div><div></div><div>This err=
oneously assumes that <a href=3D"http://fast.com">fast.com</a> measures lat=
ency from the server side. It does not. The measurements are done from the =
client, over http, with a parallel connection(s) to the same or similar set=
 of servers,=C2=A0by sending empty requests over a previously established=
=C2=A0connection (you can see that in the browser web inspector).</div><div=
>It should be noted that the value is not precisely the &quot;RTT on a TCP/=
UDP=C2=A0flow that is loaded with traffic&quot;, but &quot;user delay=C2=A0=
given the presence of heavy parallel flows&quot;. With that, some of the ch=
allenges=C2=A0you mentioned do not apply.</div><div>In line with another po=
int I&#39;ve=C2=A0shared earlier - the goal is to measure and explain the u=
ser experience, not to be a diagnostic tool showing internal transport metr=
ics.</div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">=
<span><font size=3D"1"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt"><span style=3D"font-family:Arial;color:rgb(67,67,67)=
;vertical-align:baseline;white-space:pre-wrap">SERGEY FEDOROV</span></p><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><sp=
an style=3D"font-family:Arial;color:rgb(102,102,102);vertical-align:baselin=
e;white-space:pre-wrap">Director of Engineering</span></p><p style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Ar=
ial;color:rgb(102,102,102);vertical-align:baseline;white-space:pre-wrap"><a=
 href=3D"mailto:sfedorov@netflix.com" target=3D"_blank">sfedorov@netflix.co=
m</a></span></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt"><span style=3D"font-family:Arial;color:rgb(102,102,102);vertical-align:=
baseline;white-space:pre-wrap">121 Albright Way  |  Los Gatos, CA 95032</sp=
an></p><span style=3D"font-family:Arial;color:rgb(136,136,136);vertical-ali=
gn:baseline;white-space:pre-wrap"><img src=3D"https://lh6.googleusercontent=
.com/sXyXTYq5vF1C3sJhRzJIQ0iYROwE8E1e0R6RY9hhgBZDVe6fLjmy_Y0F6RsQskALepS5t1=
zXm9JcQg-HXYQDbLZ6NS0YBjA3oh7IlhrUnR38ttr667EWpXydNk6U1I7FLO3civYI" width=
=3D"73" height=3D"44" style=3D"border:none"></span></font></span><br></div>=
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, May 2, 2020 at 10:38 AM David P. Reed=
 &lt;<a href=3D"mailto:dpreed@deepplum.com">dpreed@deepplum.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><font face=
=3D"arial" size=3D"3"><p style=3D"margin:0px;padding:0px;font-family:arial;=
font-size:12pt">I am still a bit worried about properly defining &quot;late=
ncy under load&quot; for a NAT routed situation. If the test is based on IC=
MP Ping packets *from the server*,=C2=A0 it will NOT be measuring the full =
path latency, and if the potential congestion is in the uplink path from th=
e access provider&#39;s residential box to the access provider&#39;s router=
/switch, it will NOT measure congestion caused by bufferbloat reliably on e=
ither side, since the bufferbloat will be outside the ICMP Ping path.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">I real=
ize that a browser based speed test has to be basically run from the &quot;=
server&quot; end, because browsers are not that good at time measurement on=
 a packet basis. However, there are ways to solve this and avoid the ICMP P=
ing issue, with a cooperative server.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">I once=
 built a test that fixed this issue reasonably well. It carefully created a=
 TCP based RTT measurement channel (over HTTP) that made the echo have to t=
raverse the whole end-to-end path, which is the best and only way to accura=
tely define lag under load from the user&#39;s perspective. The client end =
of an unloaded TCP connection can depend on TCP (properly prepared by getti=
ng it past slowstart) to generate a single packet response.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">This &=
quot;TCP ping&quot; is thus compatible with getting the end-to-end measurem=
ent on the server end of a true RTT.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">It&#39=
;s like tcp-traceroute tool, in that it tricks anyone in the middle boxes i=
nto thinking this is a real, serious packet, not an optional low priority p=
acket.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">The sa=
me issue comes up with non-browser-based techniques for measuring true lag-=
under-load.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">Now as=
 we move HTTP to QUIC, this actually gets easier to do.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">One ot=
her opportunity I haven&#39;t explored, but which is pregnant with potentia=
l is the use of WebRTC, which runs over UDP internally. Since JavaScript ha=
s direct access to create WebRTC connections (multiple ones), this makes de=
tailed testing in the browser quite reasonable.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">And th=
e time measurements can resolve well below 100 microseconds, if the JS is b=
ased on modern JIT compilation (Chrome, Firefox, Edge all compile to machin=
e code speed if the code is restricted and in a loop). Then again, there is=
 Web Assembly if you want to write C code that runs in the brower fast. Web=
Assembly is a low level language that compiles to machine code in the brows=
er execution, and still has access to all the browser networking facilities=
.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">On Sat=
urday, May 2, 2020 12:52pm, &quot;Dave Taht&quot; &lt;<a href=3D"mailto:dav=
e.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; said:<br><b=
r></p>
<div id=3D"gmail-m_-5707858911278770127SafeStyles1588440044">
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">&gt; O=
n Sat, May 2, 2020 at 9:37 AM Benjamin Cronce &lt;<a href=3D"mailto:bcronce=
@gmail.com" target=3D"_blank">bcronce@gmail.com</a>&gt; wrote:<br>&gt; &gt;=
<br>&gt; &gt; &gt; Fast.com reports my unloaded latency as 4ms, my loaded l=
atency as ~7ms<br>&gt; <br>&gt; I guess one of my questions is that with a =
switch to BBR netflix is<br>&gt; going to do pretty well. If <a href=3D"htt=
p://fast.com" target=3D"_blank">fast.com</a> is using bbr, well... that<br>=
&gt; excludes much of the current side of the internet.<br>&gt; <br>&gt; &g=
t; For download, I show 6ms unloaded and 6-7 loaded. But for upload the loa=
ded<br>&gt; shows as 7-8 and I see it blip upwards of 12ms. But I am no lon=
ger using any<br>&gt; traffic shaping. Any anti-bufferbloat is from my ISP.=
 A graph of the bloat would<br>&gt; be nice.<br>&gt; <br>&gt; The tests do =
need to last a fairly long time.<br>&gt; <br>&gt; &gt; On Sat, May 2, 2020 =
at 9:51 AM Jannie Hanekom &lt;<a href=3D"mailto:jannie@hanekom.net" target=
=3D"_blank">jannie@hanekom.net</a>&gt;<br>&gt; wrote:<br>&gt; &gt;&gt;<br>&=
gt; &gt;&gt; Michael Richardson &lt;<a href=3D"mailto:mcr@sandelman.ca" tar=
get=3D"_blank">mcr@sandelman.ca</a>&gt;:<br>&gt; &gt;&gt; &gt; Does it find=
/use my nearest Netflix cache?<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; Thankfully=
, it appears so. The DSLReports bloat test was interesting,<br>&gt; but<br>=
&gt; &gt;&gt; the jitter on the ~240ms base latency from South Africa (and =
other parts<br>&gt; of<br>&gt; &gt;&gt; the world) was significant enough t=
hat the figures returned were often<br>&gt; &gt;&gt; unreliable and largely=
 unusable - at least in my experience.<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; Fa=
st.com reports my unloaded latency as 4ms, my loaded latency as ~7ms<br>&gt=
; and<br>&gt; &gt;&gt; mentions servers located in local cities. I finally =
have a test I can<br>&gt; share<br>&gt; &gt;&gt; with local non-technical p=
eople!<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; (Agreed, upload test would be nice=
, but this is a huge step forward from<br>&gt; &gt;&gt; what I had access t=
o before.)<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; Jannie Hanekom<br>&gt; &gt;&gt=
;<br>&gt; &gt;&gt; _______________________________________________<br>&gt; =
&gt;&gt; Cake mailing list<br>&gt; &gt;&gt; <a href=3D"mailto:Cake@lists.bu=
fferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a><br>&gt; &gt=
;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_bl=
ank">https://lists.bufferbloat.net/listinfo/cake</a><br>&gt; &gt;<br>&gt; &=
gt; _______________________________________________<br>&gt; &gt; Cake maili=
ng list<br>&gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=
=3D"_blank">Cake@lists.bufferbloat.net</a><br>&gt; &gt; <a href=3D"https://=
lists.bufferbloat.net/listinfo/cake" target=3D"_blank">https://lists.buffer=
bloat.net/listinfo/cake</a><br>&gt; <br>&gt; <br>&gt; <br>&gt; --<br>&gt; M=
ake Music, Not War<br>&gt; <br>&gt; Dave T=C3=A4ht<br>&gt; CTO, TekLibre, L=
LC<br>&gt; <a href=3D"http://www.teklibre.com" target=3D"_blank">http://www=
.teklibre.com</a><br>&gt; Tel: 1-831-435-0729<br>&gt; _____________________=
__________________________<br>&gt; Cake mailing list<br>&gt; <a href=3D"mai=
lto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.ne=
t</a><br>&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" targe=
t=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>&gt; </p>
</div></font></blockquote></div>

--0000000000007a295b05a4aeec89--

--===============4537529255830772381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4537529255830772381==--
