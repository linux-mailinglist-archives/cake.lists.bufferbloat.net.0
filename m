Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8197E1C537A
	for <lists+cake@lfdr.de>; Tue,  5 May 2020 12:43:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EACFA3CB45;
	Tue,  5 May 2020 06:43:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588675406;
	bh=/I1H2ykgu+4GK2GNaN1YEy/YZvsWx5vRoR74u+4O26g=;
	h=References:In-Reply-To:To:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=eVz/4JflDx+EP46xMaPRV7NRvCGfMGPCc8UEMcJg85/mu8XTBNYZhKBbiaIhxx+Kj
	 sPC3M4XnE6SzWGFh0x4nsRuF64l1QP3vPXC3IgKJArJtVY038XWo34BlFIAl2rNV5k
	 ok7fNh+7PM0TYzVrADl3ZbUQCGTIAb6wDEnyYNdafiaUfBj9NShi9oyI5ZQiOUiJkn
	 BLsmNBBPLe6F/T4zCNlLN3rFOK2zlVHsMnuRNWYq08kANKSyvmyV8L0aNnMmSQ5bzG
	 vLGV73TaexD56mm63rWNzhmorfU+JJFIDtgYwWq0qSivcVrb/f/GBKh5TPr1/MfCnK
	 Wc9kbWZFXlWoQ==
References: <1588518416.66682155@apps.rackspace.com>
 <mailman.253.1588611897.24343.make-wifi-fast@lists.bufferbloat.net>
In-Reply-To: <mailman.253.1588611897.24343.make-wifi-fast@lists.bufferbloat.net>
To: Sergey Fedorov <sfedorov@netflix.com>
X-Mailman-Approved-At: Tue, 05 May 2020 06:43:25 -0400
MIME-Version: 1.0
Message-ID: <mailman.271.1588675406.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Precedence: list
Cc: Michael Richardson <mcr@sandelman.ca>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Jannie Hanekom <jannie@hanekom.net>
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [Make-wifi-fast]  [Bloat] dslreports is no longer free
Content-Type: multipart/mixed; boundary="===============8587741899041073297=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8587741899041073297==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <bob.mcmahon@broadcom.com>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 2E6B93CB38
	for <cake@lists.bufferbloat.net>; Mon,  4 May 2020 20:03:15 -0400 (EDT)
Received: by mail-ej1-x62e.google.com with SMTP id k8so106970ejv.3
        for <cake@lists.bufferbloat.net>; Mon, 04 May 2020 17:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dIRMlBLioyC++yzX1h7kPa7SIKti2BySHu0eNrBu2ao=;
        b=YYce1HDiU9dbZOLE3QlMXuvOeJtJ7wXA+XIhJ8XWVJTapaSb1SDiKBDrxXpZQRXFFb
         67qkre4tRqxeMzSWDJ4XK0ZTN/nSSR0VQrbLgGoz/Mm9eiG6p05xbfkCs7DCSNf23UXL
         3tmrfoDYnzWvrT517SQDFFPiM3JIbL5W9Pyqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dIRMlBLioyC++yzX1h7kPa7SIKti2BySHu0eNrBu2ao=;
        b=RghOrq0REcupaMHwWycCgQVAadykcqztVoNwdKaJxpOItfSnCzeDbtC09+SWGdSFMd
         3Gf46o9m15O9Y0l2RdVLc6hroB83/pu30ROysTLk8qFKOXcDal5/L+w70h87IwHAMyWE
         vJr3O/NodHTlta8FbskkZ2/PyPZchxlws3P8eTrEx8nuA9nrRvzmBm5DnBSCyUjzI8Tp
         AKZp2IQ5gBEjRuz4BURQ7P51dgj5gZ298ZBd5qztVpUxXiYopp17q541hWrIWjWDgU7Y
         hvUU/AmzFrbctF68sDulK4GGWbng6fBG28uxm2n86a7NzLe3Wa8RfkBmw2SW8WmEeOEY
         rQCg==
X-Gm-Message-State: AGi0PuYSWFJrUUdBks0ZM2SixvA0naXF2QnwVA0NWvt3uQ57NkByXA0d
	/ILVnWkujoR2BSHlMEuKPQYBbG5oy//V/2epSvEfXw==
X-Google-Smtp-Source: APiQypLs+FgmJ+VzOnHw4oiNCfaq7/NCHTglO+0QU8WwyTHSRX9paegIg1V3hb6o52hxeZvRicHjaBKDVKj9KOGR3KY=
X-Received: by 2002:a17:906:4ed6:: with SMTP id i22mr341460ejv.146.1588636993961;
 Mon, 04 May 2020 17:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <1588518416.66682155@apps.rackspace.com> <mailman.253.1588611897.24343.make-wifi-fast@lists.bufferbloat.net>
In-Reply-To: <mailman.253.1588611897.24343.make-wifi-fast@lists.bufferbloat.net>
From: Bob McMahon <bob.mcmahon@broadcom.com>
Date: Mon, 4 May 2020 17:03:02 -0700
Message-ID: <CAHb6LvpQoVStGrCddAaR739SPoixpWpU=aifShyO4b-riOD82A@mail.gmail.com>
Subject: Re: [Make-wifi-fast] [Cake] [Bloat] dslreports is no longer free
To: Sergey Fedorov <sfedorov@netflix.com>
Cc: "David P. Reed" <dpreed@deepplum.com>, Michael Richardson <mcr@sandelman.ca>, 
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>, 
	Cake List <cake@lists.bufferbloat.net>, Jannie Hanekom <jannie@hanekom.net>
Content-Type: multipart/alternative; boundary="000000000000b424e005a4db5fe1"
X-Mailman-Approved-At: Tue, 05 May 2020 06:43:25 -0400

--000000000000b424e005a4db5fe1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry for being a bit off topic but we find average latency not all that
useful.  A full CDF is.  The next best is a box plot with outliers which
can be presented parametrically as a few numbers. Most customers want
visibility into the PDF tail.

Also, we're moving to socket write() to read() latencies for our end/end
measurements (using the iperf 2.0.14 --trip-times option assumes
synchronized clocks.). We also now measure TCP connects (3WHS) as well.
Finally, since we have trip times and the application write rates we can
compute the amount of "end/end bytes in queue" per Little's law.

For fault isolation, in-band network telemetry (or something similar) can
be useful. https://p4.org/assets/INT-current-spec.pdf

Bob

On Mon, May 4, 2020 at 10:05 AM Sergey Fedorov via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

>
>
>
> ---------- Forwarded message ----------
> From: Sergey Fedorov <sfedorov@netflix.com>
> To: "David P. Reed" <dpreed@deepplum.com>
> Cc: Sebastian Moeller <moeller0@gmx.de>, "Dave T=C3=A4ht" <dave.taht@gmai=
l.com>,
> Michael Richardson <mcr@sandelman.ca>, Make-Wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>, Jannie Hanekom <jannie@hanekom.net=
>,
> Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.ne=
t
> >
> Bcc:
> Date: Mon, 4 May 2020 10:04:19 -0700
> Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
>
>> Sergey - I wasn't assuming anything about fast.com. The document you
>> shared wasn't clear about the methodology's details here. Others sadly,
>> have actually used ICMP pings in the way I described. I was making a
>> generic comment of concern.
>>
>> That said, it sounds like what you are doing is really helpful (esp.
>> given that your measure is aimed at end user experiential qualities).
>
> David - my apologies, I incorrectly interpreted your statement as being
> said in context of fast.com measurements. The blog post linked indeed
> doesn't provide the latency measurement details - was written before we
> added the extra metrics. We'll see if we can publish an update.
>
> 1) a clear definition of lag under load that is from end-to-end in
>> latency, and involves, ideally, independent traffic from multiple source=
s
>> through the bottleneck.
>
>  Curious if by multiple sources you mean multiple clients (devices) or
> multiple connections sending data?
>
>
> SERGEY FEDOROV
>
> Director of Engineering
>
> sfedorov@netflix.com
>
> 121 Albright Way | Los Gatos, CA 95032
>
>
>
>
> On Sun, May 3, 2020 at 8:07 AM David P. Reed <dpreed@deepplum.com> wrote:
>
>> Thanks Sebastian. I do agree that in many cases, reflecting the ICMP off
>> the entry device that has the external IP address for the NAT gets most =
of
>> the RTT measure, and if there's no queueing built up in the NAT device,
>> that's a reasonable measure. But...
>>
>>
>>
>> However, if the router has "taken up the queueing delay" by rate limitin=
g
>> its uplink traffic to slightly less than the capacity (as with Cake and
>> other TC shaping that isn't as good as cake), then there is a queue in t=
he
>> TC layer itself. This is what concerns me as a distortion in the
>> measurement that can fool one into thinking the TC shaper is doing a goo=
d
>> job, when in fact, lag under load may be quite high from inside the rout=
ed
>> domain (the home).
>>
>>
>>
>> As you point out this unmeasured queueing delay can also be a problem
>> with WiFi inside the home. But it isn't limited to that.
>>
>>
>>
>> A badly set up shaping/congestion management subsystem inside the NAT ca=
n
>> look "very good" in its echo of ICMP packets, but be terrible in respons=
e
>> time to trivial HTTP requests from inside, or equally terrible in twitch
>> games and video conferencing.
>>
>>
>>
>> So, for example, for tuning settings with "Cake" it is useless.
>>
>>
>>
>> To be fair, usually the Access Provider has no control of what is done
>> after the cable is terminated at the home, so as a way to decide if the
>> provider is badly engineering its side, a ping from a server is a
>> reasonable quality measure of the provider.
>>
>>
>>
>> But not a good measure of the user experience, and if the provider
>> provides the NAT box, even if it has a good shaper in it, like Cake or
>> fq_codel, it will just confuse the user and create the opportunity for a
>> "finger pointing" argument where neither side understands what is going =
on.
>>
>>
>>
>> This is why we need
>>
>>
>>
>> 1) a clear definition of lag under load that is from end-to-end in
>> latency, and involves, ideally, independent traffic from multiple source=
s
>> through the bottleneck.
>>
>>
>>
>> 2) ideally, a better way to localize where the queues are building up an=
d
>> present that to users and access providers.  The flent graphs are not
>> interpretable by most non-experts. What we need is a simple visualizatio=
n
>> of a sketch-map of the path (like traceroute might provide) with queuein=
g
>> delay measures  shown at key points that the user can understand.
>>
>> On Saturday, May 2, 2020 4:19pm, "Sebastian Moeller" <moeller0@gmx.de>
>> said:
>>
>> > Hi David,
>> >
>> > in principle I agree, a NATed IPv4 ICMP probe will be at best reflecte=
d
>> at the NAT
>> > router (CPE) (some commercial home gateways do not respond to ICMP ech=
o
>> requests
>> > in the name of security theatre). So it is pretty hard to measure the
>> full end to
>> > end path in that configuration. I believe that IPv6 should make that
>> > easier/simpler in that NAT hopefully will be out of the path (but let'=
s
>> see what
>> > ingenuity ISPs will come up with).
>> > Then again, traditionally the relevant bottlenecks often are a) the
>> internet
>> > access link itself and there the CPE is in a reasonable position as a
>> reflector on
>> > the other side of the bottleneck as seen from an internet server, b)
>> the home
>> > network between CPE and end-host, often with variable rate wifi, here =
I
>> agree
>> > reflecting echos at the CPE hides part of the issue.
>> >
>> >
>> >
>> > > On May 2, 2020, at 19:38, David P. Reed <dpreed@deepplum.com> wrote:
>> > >
>> > > I am still a bit worried about properly defining "latency under load=
"
>> for a
>> > NAT routed situation. If the test is based on ICMP Ping packets *from
>> the server*,
>> > it will NOT be measuring the full path latency, and if the potential
>> congestion
>> > is in the uplink path from the access provider's residential box to th=
e
>> access
>> > provider's router/switch, it will NOT measure congestion caused by
>> bufferbloat
>> > reliably on either side, since the bufferbloat will be outside the ICM=
P
>> Ping
>> > path.
>> >
>> > Puzzled, as i believe it is going to be the residential box that will
>> respond
>> > here, or will it be the AFTRs for CG-NAT that reflect the ICMP echo
>> requests?
>> >
>> > >
>> > > I realize that a browser based speed test has to be basically run
>> from the
>> > "server" end, because browsers are not that good at time measurement o=
n
>> a packet
>> > basis. However, there are ways to solve this and avoid the ICMP Ping
>> issue, with a
>> > cooperative server.
>> > >
>> > > I once built a test that fixed this issue reasonably well. It
>> carefully
>> > created a TCP based RTT measurement channel (over HTTP) that made the
>> echo have to
>> > traverse the whole end-to-end path, which is the best and only way to
>> accurately
>> > define lag under load from the user's perspective. The client end of a=
n
>> unloaded
>> > TCP connection can depend on TCP (properly prepared by getting it past
>> slowstart)
>> > to generate a single packet response.
>> > >
>> > > This "TCP ping" is thus compatible with getting the end-to-end
>> measurement on
>> > the server end of a true RTT.
>> > >
>> > > It's like tcp-traceroute tool, in that it tricks anyone in the middl=
e
>> boxes
>> > into thinking this is a real, serious packet, not an optional low
>> priority
>> > packet.
>> > >
>> > > The same issue comes up with non-browser-based techniques for
>> measuring true
>> > lag-under-load.
>> > >
>> > > Now as we move HTTP to QUIC, this actually gets easier to do.
>> > >
>> > > One other opportunity I haven't explored, but which is pregnant with
>> > potential is the use of WebRTC, which runs over UDP internally. Since
>> JavaScript
>> > has direct access to create WebRTC connections (multiple ones), this
>> makes
>> > detailed testing in the browser quite reasonable.
>> > >
>> > > And the time measurements can resolve well below 100 microseconds, i=
f
>> the JS
>> > is based on modern JIT compilation (Chrome, Firefox, Edge all compile
>> to machine
>> > code speed if the code is restricted and in a loop). Then again, there
>> is Web
>> > Assembly if you want to write C code that runs in the brower fast.
>> WebAssembly is
>> > a low level language that compiles to machine code in the browser
>> execution, and
>> > still has access to all the browser networking facilities.
>> >
>> > Mmmh, according to https://github.com/w3c/hr-time/issues/56 due to
>> spectre
>> > side-channel vulnerabilities many browsers seemed to have lowered the
>> timer
>> > resolution, but even the ~1ms resolution should be fine for typical
>> RTTs.
>> >
>> > Best Regards
>> > Sebastian
>> >
>> > P.S.: I assume that I simply do not see/understand the full scope of
>> the issue at
>> > hand yet.
>> >
>> >
>> > >
>> > > On Saturday, May 2, 2020 12:52pm, "Dave Taht" <dave.taht@gmail.com>
>> > said:
>> > >
>> > > > On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce <bcronce@gmail.com>
>> > wrote:
>> > > > >
>> > > > > > Fast.com reports my unloaded latency as 4ms, my loaded latency
>> > as ~7ms
>> > > >
>> > > > I guess one of my questions is that with a switch to BBR netflix i=
s
>> > > > going to do pretty well. If fast.com is using bbr, well... that
>> > > > excludes much of the current side of the internet.
>> > > >
>> > > > > For download, I show 6ms unloaded and 6-7 loaded. But for upload
>> > the loaded
>> > > > shows as 7-8 and I see it blip upwards of 12ms. But I am no longer
>> using
>> > any
>> > > > traffic shaping. Any anti-bufferbloat is from my ISP. A graph of t=
he
>> > bloat would
>> > > > be nice.
>> > > >
>> > > > The tests do need to last a fairly long time.
>> > > >
>> > > > > On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom
>> > <jannie@hanekom.net>
>> > > > wrote:
>> > > > >>
>> > > > >> Michael Richardson <mcr@sandelman.ca>:
>> > > > >> > Does it find/use my nearest Netflix cache?
>> > > > >>
>> > > > >> Thankfully, it appears so. The DSLReports bloat test was
>> > interesting,
>> > > > but
>> > > > >> the jitter on the ~240ms base latency from South Africa (and
>> > other parts
>> > > > of
>> > > > >> the world) was significant enough that the figures returned
>> > were often
>> > > > >> unreliable and largely unusable - at least in my experience.
>> > > > >>
>> > > > >> Fast.com reports my unloaded latency as 4ms, my loaded latency
>> > as ~7ms
>> > > > and
>> > > > >> mentions servers located in local cities. I finally have a test
>> > I can
>> > > > share
>> > > > >> with local non-technical people!
>> > > > >>
>> > > > >> (Agreed, upload test would be nice, but this is a huge step
>> > forward from
>> > > > >> what I had access to before.)
>> > > > >>
>> > > > >> Jannie Hanekom
>> > > > >>
>> > > > >> _______________________________________________
>> > > > >> Cake mailing list
>> > > > >> Cake@lists.bufferbloat.net
>> > > > >> https://lists.bufferbloat.net/listinfo/cake
>> > > > >
>> > > > > _______________________________________________
>> > > > > Cake mailing list
>> > > > > Cake@lists.bufferbloat.net
>> > > > > https://lists.bufferbloat.net/listinfo/cake
>> > > >
>> > > >
>> > > >
>> > > > --
>> > > > Make Music, Not War
>> > > >
>> > > > Dave T=C3=A4ht
>> > > > CTO, TekLibre, LLC
>> > > > http://www.teklibre.com
>> > > > Tel: 1-831-435-0729
>> > > > _______________________________________________
>> > > > Cake mailing list
>> > > > Cake@lists.bufferbloat.net
>> > > > https://lists.bufferbloat.net/listinfo/cake
>> > > >
>> > > _______________________________________________
>> > > Cake mailing list
>> > > Cake@lists.bufferbloat.net
>> > > https://lists.bufferbloat.net/listinfo/cake
>> >
>> >
>>
>>
>>
>
>
>
> ---------- Forwarded message ----------
> From: Sergey Fedorov via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>
> To: "David P. Reed" <dpreed@deepplum.com>
> Cc: Michael Richardson <mcr@sandelman.ca>, Make-Wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net=
>,
> Cake List <cake@lists.bufferbloat.net>, Jannie Hanekom <jannie@hanekom.ne=
t
> >
> Bcc:
> Date: Mon, 04 May 2020 10:05:04 -0700 (PDT)
> Subject: Re: [Make-wifi-fast] [Cake]  [Bloat] dslreports is no longer fre=
e
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

--000000000000b424e005a4db5fe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry for being a bit off topic but we find average latenc=
y not all that useful.=C2=A0 A full CDF is.=C2=A0 The next best is a box pl=
ot with outliers which can be presented parametrically as a few numbers. Mo=
st customers want visibility into the PDF tail.<br><br>Also, we&#39;re movi=
ng to socket write() to read() latencies for our end/end measurements (usin=
g the iperf 2.0.14 --trip-times option assumes synchronized clocks.). We al=
so now measure TCP connects=C2=A0(3WHS) as well.=C2=A0 Finally, since we ha=
ve trip times and the application write rates we can compute the amount of =
&quot;end/end bytes in queue&quot; per Little&#39;s law.<br><br>For fault i=
solation, in-band network telemetry (or something=C2=A0similar) can be usef=
ul.=C2=A0<a href=3D"https://p4.org/assets/INT-current-spec.pdf">https://p4.=
org/assets/INT-current-spec.pdf</a><br><br>Bob</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 at 10:05 =
AM Sergey Fedorov via Make-wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@l=
ists.bufferbloat.net">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br><br><br>-----=
----- Forwarded message ----------<br>From:=C2=A0Sergey Fedorov &lt;<a href=
=3D"mailto:sfedorov@netflix.com" target=3D"_blank">sfedorov@netflix.com</a>=
&gt;<br>To:=C2=A0&quot;David P. Reed&quot; &lt;<a href=3D"mailto:dpreed@dee=
pplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt;<br>Cc:=C2=A0Sebast=
ian Moeller &lt;<a href=3D"mailto:moeller0@gmx.de" target=3D"_blank">moelle=
r0@gmx.de</a>&gt;, &quot;Dave T=C3=A4ht&quot; &lt;<a href=3D"mailto:dave.ta=
ht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt;, Michael Richar=
dson &lt;<a href=3D"mailto:mcr@sandelman.ca" target=3D"_blank">mcr@sandelma=
n.ca</a>&gt;, Make-Wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.buf=
ferbloat.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt=
;, Jannie Hanekom &lt;<a href=3D"mailto:jannie@hanekom.net" target=3D"_blan=
k">jannie@hanekom.net</a>&gt;, Cake List &lt;<a href=3D"mailto:cake@lists.b=
ufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;, bloat=
 &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" target=3D"_blank">bloat=
@lists.bufferbloat.net</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Mon, 4 May 2020 =
10:04:19 -0700<br>Subject:=C2=A0Re: [Cake] [Make-wifi-fast] [Bloat] dslrepo=
rts is no longer free<br><div dir=3D"ltr"><blockquote style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=
=3D"gmail_quote">Sergey - I wasn&#39;t assuming anything about=C2=A0<a href=
=3D"http://fast.com/" target=3D"_blank">fast.com</a>. The document you shar=
ed wasn&#39;t clear about the methodology&#39;s details here. Others sadly,=
 have actually used ICMP pings in the way I described. I was making a gener=
ic comment of concern.<br>=C2=A0<br>That said, it sounds like what you are =
doing is really helpful (esp. given that your measure is aimed at end user =
experiential qualities).</blockquote><div>David - my apologies, I incorrect=
ly interpreted your statement as being said in context of <a href=3D"http:/=
/fast.com" target=3D"_blank">fast.com</a> measurements. The blog post linke=
d indeed doesn&#39;t provide the latency measurement details - was written =
before we added the extra metrics. We&#39;ll see if we can publish an updat=
e.=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><span style=3D"font-family:arial;font-size:16px">1) a clear definition =
of lag under load that is from end-to-end in latency, and involves, ideally=
, independent traffic from multiple sources through the bottleneck.</span><=
/blockquote><div>=C2=A0Curious if by multiple sources you mean multiple cli=
ents (devices) or multiple connections sending data?=C2=A0</div><div>=C2=A0=
<br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><fon=
t size=3D"1"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt"><span style=3D"font-family:Arial;color:rgb(67,67,67);vertical-=
align:baseline;white-space:pre-wrap">SERGEY FEDOROV</span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-family:Arial;color:rgb(102,102,102);vertical-align:baseline;white-=
space:pre-wrap">Director of Engineering</span></p><p style=3D"line-height:1=
.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Arial;colo=
r:rgb(102,102,102);vertical-align:baseline;white-space:pre-wrap"><a href=3D=
"mailto:sfedorov@netflix.com" target=3D"_blank">sfedorov@netflix.com</a></s=
pan></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-family:Arial;color:rgb(102,102,102);vertical-align:baseline=
;white-space:pre-wrap">121 Albright Way  |  Los Gatos, CA 95032</span></p><=
span style=3D"font-family:Arial;color:rgb(136,136,136);vertical-align:basel=
ine;white-space:pre-wrap"><img src=3D"https://lh6.googleusercontent.com/sXy=
XTYq5vF1C3sJhRzJIQ0iYROwE8E1e0R6RY9hhgBZDVe6fLjmy_Y0F6RsQskALepS5t1zXm9JcQg=
-HXYQDbLZ6NS0YBjA3oh7IlhrUnR38ttr667EWpXydNk6U1I7FLO3civYI" width=3D"73" he=
ight=3D"44" style=3D"border: none;"></span></font></div></div></div></div><=
/div><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span><font si=
ze=3D"1"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><br></p></font></span></div></div></div></div><br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, May 3, 2=
020 at 8:07 AM David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" tar=
get=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><font face=3D"arial" size=3D"3"><p style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">Thanks Sebasti=
an. I do agree that in many cases, reflecting the ICMP off the entry device=
 that has the external IP address for the NAT gets most of the RTT measure,=
 and if there&#39;s no queueing built up in the NAT device, that&#39;s a re=
asonable measure. But...</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">Howeve=
r, if the router has &quot;taken up the queueing delay&quot; by rate limiti=
ng its uplink traffic to slightly less than the capacity (as with Cake and =
other TC shaping that isn&#39;t as good as cake), then there is a queue in =
the TC layer itself. This is what concerns me as a distortion in the measur=
ement that can fool one into thinking the TC shaper is doing a good job, wh=
en in fact, lag under load may be quite high from inside the routed domain =
(the home).</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">As you=
 point out this unmeasured queueing delay can also be a problem with WiFi i=
nside the home. But it isn&#39;t limited to that.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">A badl=
y set up shaping/congestion management subsystem inside the NAT can look &q=
uot;very good&quot; in its echo of ICMP packets, but be terrible in respons=
e time to trivial HTTP requests from inside, or equally terrible in twitch =
games and video conferencing.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">So, fo=
r example, for tuning settings with &quot;Cake&quot; it is useless.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">To be =
fair, usually the Access Provider has no control of what is done after the =
cable is terminated at the home, so as a way to decide if the provider is b=
adly engineering its side, a ping from a server is a reasonable quality mea=
sure of the provider.=C2=A0</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">But no=
t a good measure of the user experience, and if the provider provides the N=
AT box, even if it has a good shaper in it, like Cake or fq_codel, it will =
just confuse the user and create the opportunity for a &quot;finger pointin=
g&quot; argument where neither side understands what is going on.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">This i=
s why we need=C2=A0</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">1) a c=
lear definition of lag under load that is from end-to-end in latency, and i=
nvolves, ideally, independent traffic from multiple sources through the bot=
tleneck.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">2) ide=
ally, a better way to localize where the queues are building up and present=
 that to users and access providers.=C2=A0 The flent graphs are not interpr=
etable by most non-experts. What we need is a simple visualization of a ske=
tch-map of the path (like traceroute might provide) with queueing delay mea=
sures=C2=A0 shown at key points that the user can understand.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">On Sat=
urday, May 2, 2020 4:19pm, &quot;Sebastian Moeller&quot; &lt;<a href=3D"mai=
lto:moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; said:<br><br=
></p>
<div id=3D"gmail-m_-134123440323606032gmail-m_-6489686847968774554SafeStyle=
s1588461883">
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">&gt; H=
i David,<br>&gt; <br>&gt; in principle I agree, a NATed IPv4 ICMP probe wil=
l be at best reflected at the NAT<br>&gt; router (CPE) (some commercial hom=
e gateways do not respond to ICMP echo requests<br>&gt; in the name of secu=
rity theatre). So it is pretty hard to measure the full end to<br>&gt; end =
path in that configuration. I believe that IPv6 should make that<br>&gt; ea=
sier/simpler in that NAT hopefully will be out of the path (but let&#39;s s=
ee what<br>&gt; ingenuity ISPs will come up with).<br>&gt; Then again, trad=
itionally the relevant bottlenecks often are a) the internet<br>&gt; access=
 link itself and there the CPE is in a reasonable position as a reflector o=
n<br>&gt; the other side of the bottleneck as seen from an internet server,=
 b) the home<br>&gt; network between CPE and end-host, often with variable =
rate wifi, here I agree<br>&gt; reflecting echos at the CPE hides part of t=
he issue.<br>&gt; <br>&gt; <br>&gt; <br>&gt; &gt; On May 2, 2020, at 19:38,=
 David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank"=
>dpreed@deepplum.com</a>&gt; wrote:<br>&gt; &gt;<br>&gt; &gt; I am still a =
bit worried about properly defining &quot;latency under load&quot; for a<br=
>&gt; NAT routed situation. If the test is based on ICMP Ping packets *from=
 the server*,<br>&gt; it will NOT be measuring the full path latency, and i=
f the potential congestion<br>&gt; is in the uplink path from the access pr=
ovider&#39;s residential box to the access<br>&gt; provider&#39;s router/sw=
itch, it will NOT measure congestion caused by bufferbloat<br>&gt; reliably=
 on either side, since the bufferbloat will be outside the ICMP Ping<br>&gt=
; path.<br>&gt; <br>&gt; Puzzled, as i believe it is going to be the reside=
ntial box that will respond<br>&gt; here, or will it be the AFTRs for CG-NA=
T that reflect the ICMP echo requests?<br>&gt; <br>&gt; &gt;<br>&gt; &gt; I=
 realize that a browser based speed test has to be basically run from the<b=
r>&gt; &quot;server&quot; end, because browsers are not that good at time m=
easurement on a packet<br>&gt; basis. However, there are ways to solve this=
 and avoid the ICMP Ping issue, with a<br>&gt; cooperative server.<br>&gt; =
&gt;<br>&gt; &gt; I once built a test that fixed this issue reasonably well=
. It carefully<br>&gt; created a TCP based RTT measurement channel (over HT=
TP) that made the echo have to<br>&gt; traverse the whole end-to-end path, =
which is the best and only way to accurately<br>&gt; define lag under load =
from the user&#39;s perspective. The client end of an unloaded<br>&gt; TCP =
connection can depend on TCP (properly prepared by getting it past slowstar=
t)<br>&gt; to generate a single packet response.<br>&gt; &gt;<br>&gt; &gt; =
This &quot;TCP ping&quot; is thus compatible with getting the end-to-end me=
asurement on<br>&gt; the server end of a true RTT.<br>&gt; &gt;<br>&gt; &gt=
; It&#39;s like tcp-traceroute tool, in that it tricks anyone in the middle=
 boxes<br>&gt; into thinking this is a real, serious packet, not an optiona=
l low priority<br>&gt; packet.<br>&gt; &gt;<br>&gt; &gt; The same issue com=
es up with non-browser-based techniques for measuring true<br>&gt; lag-unde=
r-load.<br>&gt; &gt;<br>&gt; &gt; Now as we move HTTP to QUIC, this actuall=
y gets easier to do.<br>&gt; &gt;<br>&gt; &gt; One other opportunity I have=
n&#39;t explored, but which is pregnant with<br>&gt; potential is the use o=
f WebRTC, which runs over UDP internally. Since JavaScript<br>&gt; has dire=
ct access to create WebRTC connections (multiple ones), this makes<br>&gt; =
detailed testing in the browser quite reasonable.<br>&gt; &gt;<br>&gt; &gt;=
 And the time measurements can resolve well below 100 microseconds, if the =
JS<br>&gt; is based on modern JIT compilation (Chrome, Firefox, Edge all co=
mpile to machine<br>&gt; code speed if the code is restricted and in a loop=
). Then again, there is Web<br>&gt; Assembly if you want to write C code th=
at runs in the brower fast. WebAssembly is<br>&gt; a low level language tha=
t compiles to machine code in the browser execution, and<br>&gt; still has =
access to all the browser networking facilities.<br>&gt; <br>&gt; Mmmh, acc=
ording to <a href=3D"https://github.com/w3c/hr-time/issues/56" target=3D"_b=
lank">https://github.com/w3c/hr-time/issues/56</a> due to spectre<br>&gt; s=
ide-channel vulnerabilities many browsers seemed to have lowered the timer<=
br>&gt; resolution, but even the ~1ms resolution should be fine for typical=
 RTTs.<br>&gt; <br>&gt; Best Regards<br>&gt; Sebastian<br>&gt; <br>&gt; P.S=
.: I assume that I simply do not see/understand the full scope of the issue=
 at<br>&gt; hand yet.<br>&gt; <br>&gt; <br>&gt; &gt;<br>&gt; &gt; On Saturd=
ay, May 2, 2020 12:52pm, &quot;Dave Taht&quot; &lt;<a href=3D"mailto:dave.t=
aht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt;<br>&gt; said:<=
br>&gt; &gt;<br>&gt; &gt; &gt; On Sat, May 2, 2020 at 9:37 AM Benjamin Cron=
ce &lt;<a href=3D"mailto:bcronce@gmail.com" target=3D"_blank">bcronce@gmail=
.com</a>&gt;<br>&gt; wrote:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &=
gt; Fast.com reports my unloaded latency as 4ms, my loaded latency<br>&gt; =
as ~7ms<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; I guess one of my questions is =
that with a switch to BBR netflix is<br>&gt; &gt; &gt; going to do pretty w=
ell. If <a href=3D"http://fast.com" target=3D"_blank">fast.com</a> is using=
 bbr, well... that<br>&gt; &gt; &gt; excludes much of the current side of t=
he internet.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; For download, I show =
6ms unloaded and 6-7 loaded. But for upload<br>&gt; the loaded<br>&gt; &gt;=
 &gt; shows as 7-8 and I see it blip upwards of 12ms. But I am no longer us=
ing<br>&gt; any<br>&gt; &gt; &gt; traffic shaping. Any anti-bufferbloat is =
from my ISP. A graph of the<br>&gt; bloat would<br>&gt; &gt; &gt; be nice.<=
br>&gt; &gt; &gt;<br>&gt; &gt; &gt; The tests do need to last a fairly long=
 time.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; On Sat, May 2, 2020 at 9:51=
 AM Jannie Hanekom<br>&gt; &lt;<a href=3D"mailto:jannie@hanekom.net" target=
=3D"_blank">jannie@hanekom.net</a>&gt;<br>&gt; &gt; &gt; wrote:<br>&gt; &gt=
; &gt; &gt;&gt;<br>&gt; &gt; &gt; &gt;&gt; Michael Richardson &lt;<a href=
=3D"mailto:mcr@sandelman.ca" target=3D"_blank">mcr@sandelman.ca</a>&gt;:<br=
>&gt; &gt; &gt; &gt;&gt; &gt; Does it find/use my nearest Netflix cache?<br=
>&gt; &gt; &gt; &gt;&gt;<br>&gt; &gt; &gt; &gt;&gt; Thankfully, it appears =
so. The DSLReports bloat test was<br>&gt; interesting,<br>&gt; &gt; &gt; bu=
t<br>&gt; &gt; &gt; &gt;&gt; the jitter on the ~240ms base latency from Sou=
th Africa (and<br>&gt; other parts<br>&gt; &gt; &gt; of<br>&gt; &gt; &gt; &=
gt;&gt; the world) was significant enough that the figures returned<br>&gt;=
 were often<br>&gt; &gt; &gt; &gt;&gt; unreliable and largely unusable - at=
 least in my experience.<br>&gt; &gt; &gt; &gt;&gt;<br>&gt; &gt; &gt; &gt;&=
gt; Fast.com reports my unloaded latency as 4ms, my loaded latency<br>&gt; =
as ~7ms<br>&gt; &gt; &gt; and<br>&gt; &gt; &gt; &gt;&gt; mentions servers l=
ocated in local cities. I finally have a test<br>&gt; I can<br>&gt; &gt; &g=
t; share<br>&gt; &gt; &gt; &gt;&gt; with local non-technical people!<br>&gt=
; &gt; &gt; &gt;&gt;<br>&gt; &gt; &gt; &gt;&gt; (Agreed, upload test would =
be nice, but this is a huge step<br>&gt; forward from<br>&gt; &gt; &gt; &gt=
;&gt; what I had access to before.)<br>&gt; &gt; &gt; &gt;&gt;<br>&gt; &gt;=
 &gt; &gt;&gt; Jannie Hanekom<br>&gt; &gt; &gt; &gt;&gt;<br>&gt; &gt; &gt; =
&gt;&gt; _______________________________________________<br>&gt; &gt; &gt; =
&gt;&gt; Cake mailing list<br>&gt; &gt; &gt; &gt;&gt; <a href=3D"mailto:Cak=
e@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a><b=
r>&gt; &gt; &gt; &gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo=
/cake" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br=
>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; _______________________________=
________________<br>&gt; &gt; &gt; &gt; Cake mailing list<br>&gt; &gt; &gt;=
 &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@=
lists.bufferbloat.net</a><br>&gt; &gt; &gt; &gt; <a href=3D"https://lists.b=
ufferbloat.net/listinfo/cake" target=3D"_blank">https://lists.bufferbloat.n=
et/listinfo/cake</a><br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<=
br>&gt; &gt; &gt; --<br>&gt; &gt; &gt; Make Music, Not War<br>&gt; &gt; &gt=
;<br>&gt; &gt; &gt; Dave T=C3=A4ht<br>&gt; &gt; &gt; CTO, TekLibre, LLC<br>=
&gt; &gt; &gt; <a href=3D"http://www.teklibre.com" target=3D"_blank">http:/=
/www.teklibre.com</a><br>&gt; &gt; &gt; Tel: 1-831-435-0729<br>&gt; &gt; &g=
t; _______________________________________________<br>&gt; &gt; &gt; Cake m=
ailing list<br>&gt; &gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net"=
 target=3D"_blank">Cake@lists.bufferbloat.net</a><br>&gt; &gt; &gt; <a href=
=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_blank">https://=
lists.bufferbloat.net/listinfo/cake</a><br>&gt; &gt; &gt;<br>&gt; &gt; ____=
___________________________________________<br>&gt; &gt; Cake mailing list<=
br>&gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank=
">Cake@lists.bufferbloat.net</a><br>&gt; &gt; <a href=3D"https://lists.buff=
erbloat.net/listinfo/cake" target=3D"_blank">https://lists.bufferbloat.net/=
listinfo/cake</a><br>&gt; <br>&gt;</p>
</div>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:12pt">=C2=A0=
</p></font></blockquote></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Sergey Fe=
dorov via Make-wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferb=
loat.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt;<br=
>To:=C2=A0&quot;David P. Reed&quot; &lt;<a href=3D"mailto:dpreed@deepplum.c=
om" target=3D"_blank">dpreed@deepplum.com</a>&gt;<br>Cc:=C2=A0Michael Richa=
rdson &lt;<a href=3D"mailto:mcr@sandelman.ca" target=3D"_blank">mcr@sandelm=
an.ca</a>&gt;, Make-Wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bu=
fferbloat.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a>&g=
t;, bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" target=3D"_bla=
nk">bloat@lists.bufferbloat.net</a>&gt;, Cake List &lt;<a href=3D"mailto:ca=
ke@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&=
gt;, Jannie Hanekom &lt;<a href=3D"mailto:jannie@hanekom.net" target=3D"_bl=
ank">jannie@hanekom.net</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Mon, 04 May 202=
0 10:05:04 -0700 (PDT)<br>Subject:=C2=A0Re: [Make-wifi-fast] [Cake]=C2=A0 [=
Bloat] dslreports is no longer free<br>____________________________________=
___________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

--000000000000b424e005a4db5fe1--

--===============8587741899041073297==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8587741899041073297==--
