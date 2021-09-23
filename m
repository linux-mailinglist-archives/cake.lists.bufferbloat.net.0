Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA744164A1
	for <lists+cake@lfdr.de>; Thu, 23 Sep 2021 19:47:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 54E5B3CB42;
	Thu, 23 Sep 2021 13:47:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632419221;
	bh=aebn6oODzp9FQEBUkuMkOqoVI1JitXwmW3QhfvxWOY8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iy14fqPy67kXrBWoBUYIbZFsDZh+JxRWZP7hkSWLarElUUh37bP28g8WSrbbgFsxA
	 V5S4pee75Qk8xRuAROCWEIJKnt8A7qRhXWT4Rn9N4hJRZwNTLUNzWqSnr6caE5lAnQ
	 4bLNZHACicexKaVaPK6N3ELSmes4VwIea8KZIRKdp9brDIHk0qSPNA2WzMJstouUxI
	 rK5/BFrDaV5y880qlmkAN4HbVd2tWRjWCtLCdxp86pgaNKNbA6rYkH+0byVtNmFn7A
	 jW+yI9EuURWuhgL9wQTvaTOLNlRq4rZTjDdMQ1BYFCaDOqBKB3U+VfVUj+G5UD/pcO
	 6Gnq/97MtcdGw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 577E93B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Sep 2021 13:47:00 -0400 (EDT)
Received: by mail-ed1-x536.google.com with SMTP id c21so25435207edj.0
 for <cake@lists.bufferbloat.net>; Thu, 23 Sep 2021 10:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S4qV5Q0jO++wKxAxtWFCt0NsoPPeCGHBmx9yskT/hF4=;
 b=GUEwatmnKUZ2ae3OzT/DlcLkzAQ7U9p9HnQhz/o2k8FlPpppMtykJveAcpy9FPNpH0
 6C6eqpWz5ofGDEsIBE5Npqeu2U6urjviQkJXHDigx8sVwkxh+dgWFX4QCDpgXsZo0HFN
 knDX6Z/iVxo4YPZjJgiHo8Kal+3TSEKIYa18w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S4qV5Q0jO++wKxAxtWFCt0NsoPPeCGHBmx9yskT/hF4=;
 b=OLzIGJE+Joh/J+8DVJCOcG+uam4NJvF034mH5lKIWE5DfOevGDALIRd08Cxu3jXQBO
 7/jL7PgvoSy/fGsy7i7vGdMuq7XUSjanrH0QLXtUtnuemGqGBAHjJRfcnLIPs9RH6U17
 7hhAa6EUf4FTNgpDJi4It/iHBKvNDxgA+UDU/oWSXIqlJ/4nTfGc082bKBs2Z4NZT91G
 ksFAN7386kvdY6ZG/E/cttAi8pxaIpZtdZ+Z59gTC71yBGoKryK/Q92uZe/9DQdQo7wc
 mroi02QUWaYn3apOOl2wED1lmwRYX6BNTWdvJ2YEqm/MH+MHhTlWXFZv+HxMsUj4YqaP
 5VCw==
X-Gm-Message-State: AOAM531bfPDQsYEPIbC7+mXP2xcWVC0aNAdWMjMHvqW2jN9cbYggvoTQ
 6FiViDS3Uh/0HK648hGBVlyPEAqVuKo5GTBZNF+D+wpVCoGnng52HCnc8ew6mKG5mh51eVhVVFJ
 fUI0QPjPSRzTjj1hiZHmsQaixiqcJ
X-Google-Smtp-Source: ABdhPJwY0teGh0HvdsXQwcXECmTbaC0Sj4NQzrD5UO8RAe76cgIhU3U27ELuebIw96q73ed35I0sQTSNh8qNfmUoS0I=
X-Received: by 2002:a17:906:4093:: with SMTP id
 u19mr6638990ejj.110.1632419218858; 
 Thu, 23 Sep 2021 10:46:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
 <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
In-Reply-To: <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
Date: Thu, 23 Sep 2021 10:46:48 -0700
Message-ID: <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
To: Vint Cerf <vint@google.com>
Subject: Re: [Cake] [Starlink] [Cerowrt-devel] [Bloat] Little's Law mea
 culpa, but not invalidating my main point
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>
Content-Type: multipart/mixed; boundary="===============0604251551425126556=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0604251551425126556==
Content-Type: multipart/alternative; boundary="000000000000aade5605ccad37d6"

--000000000000aade5605ccad37d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I do appreciate this thread as well. As a test & measurement guy here are
my conclusions around network performance. Thanks in advance for any
comments.

Congestion can be mitigated the following ways
o) Size queues properly to minimize/negate bloat (easier said than done
with tech like WiFi)
o) Use faster links on the service side such that a queues' service rates
exceeds the arrival rate, no congestion even in bursts, if possible
o) Drop entries during oversubscribed states (queue processing can't "speed
up" like water flow through a constricted pipe, must drop)
o) Identify aggressor flows per congestion if possible
o) Forwarding planes can signal back the the sources "earlier" to minimize
queue build ups per a "control loop request" asking sources to pace their
writes
o) transport layers use techniques a la BBR
o) Use "home gateways" that support tech like FQ_CODEL

Latency can be mitigated the following ways
o) Mitigate or eliminate congestion, particularly around queueing delays
o) End host apps can use TCP_NOTSENT_LOWAT along with write()/select() to
reduce host sends of "better never than late" messages
o) Move servers closer to the clients per fundamental limit of the speed of
light (i.e. propagation delay of energy over the wave guides), a la CDNs
(Except if you're a HFT, separate servers across geography and make sure to
have exclusive user rights over the lowest latency links)

Transport control loop(s)
o) Transport layer control loops are non linear systems so network tooling
will struggle to emulate "end user experience"
o) 1/2 RTT does not equal OWD used to compute the bandwidth delay product,
imbalance and effects need to be measured
o) forwarding planes signaling congestion to sources wasn't designed in TCP
originally but the industry trend seems to be to moving towards this per
things like L4S

Photons, radio & antenna design
o) Find experts who have experience & knowledge, e.g. many do here
o) Photons don't really have mass nor size, at least per my limited
understanding of particle physics and QED though, I must admit, came from
reading things on the internet

Bob

On Mon, Sep 20, 2021 at 7:40 PM Vint Cerf <vint@google.com> wrote:

> see https://mediatrust.com/
> v
>
>
> On Mon, Sep 20, 2021 at 10:28 AM Steve Crocker <steve@shinkuro.com> wrote=
:
>
>> Related but slightly different: Attached is a slide some of my colleague=
s
>> put together a decade ago showing the number of DNS lookups involved in
>> displaying CNN's front page.
>>
>> Steve
>>
>>
>> On Mon, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=93tnieks <valdis.kletnieks@=
vt.edu>
>> wrote:
>>
>>> On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:
>>> > what actually happens during a web page load,
>>>
>>> I'm pretty sure that nobody actually understands that anymore, in any
>>> more than handwaving levels.
>>>
>>> I have a nice Chrome extension called IPvFoo that actually tracks the I=
P
>>> addresses contacted during the load of the displayed page. I'll let you
>>> make
>>> a guess as to how many unique IP addresses were contacted during a load
>>> of https://www.cnn.com
>>>
>>> ...
>>>
>>>
>>> ...
>>>
>>>
>>> ...
>>>
>>>
>>> 145, at least half of which appeared to be analytics.  And that's only
>>> the
>>> hosts that were contacted by my laptop for HTTP, and doesn't count DNS,
>>> or
>>> load-balancing front ends, or all the back-end boxes.  As I commented
>>> over on
>>> NANOG, we've gotten to a point similar to that of AT&T long distance,
>>> where 60%
>>> of the effort of connecting a long distance phone call was the cost of
>>> accounting and billing for the call.
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> Starlink mailing list
>>> Starlink@lists.bufferbloat.net
>>> https://lists.bufferbloat.net/listinfo/starlink
>>>
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
>
>
> --
> Please send any postal/overnight deliveries to:
> Vint Cerf
> 1435 Woodhurst Blvd
> McLean, VA 22102
> 703-448-0965
>
> until further notice
>
>
>
>

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--000000000000aade5605ccad37d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I do appreciate this thread as =
well. As a test &amp; measurement guy here are my conclusions around networ=
k performance. Thanks in advance for any comments.<br><br>Congestion can be=
 mitigated the following=C2=A0ways</div><div>o) Size queues properly to min=
imize/negate bloat (easier said than done with tech like WiFi)</div><div>o)=
 Use faster links on the service side such that a queues&#39; service rates=
 exceeds=C2=A0the arrival rate, no congestion=C2=A0even in bursts, if possi=
ble<br>o) Drop entries during oversubscribed states (queue processing can&#=
39;t &quot;speed up&quot; like water flow through a constricted pipe, must =
drop)</div><div>o) Identify aggressor=C2=A0flows per congestion if possible=
</div><div>o) Forwarding planes can signal back the the sources &quot;earli=
er&quot; to minimize queue build ups per a &quot;control loop=C2=A0request&=
quot; asking sources to pace their writes</div><div>o) transport layers use=
 techniques a la BBR</div><div>o) Use &quot;home gateways&quot; that suppor=
t tech like FQ_CODEL</div><div><br></div><div>Latency can be mitigated the =
following=C2=A0ways</div><div>o) Mitigate or eliminate congestion, particul=
arly around=C2=A0queueing delays</div><div>o) End host apps can use TCP_NOT=
SENT_LOWAT along with write()/select() to reduce host sends of &quot;better=
 never than late&quot; messages=C2=A0<br>o) Move servers closer to the clie=
nts per fundamental limit of the speed of light (i.e. propagation=C2=A0dela=
y of energy over the wave guides), a la CDNs</div><div>(Except if you&#39;r=
e a HFT, separate servers across geography=C2=A0and make sure to have exclu=
sive user rights over the lowest latency links)<br><br>Transport control lo=
op(s)</div><div>o) Transport layer control loops are non linear systems so =
network tooling will struggle to emulate &quot;end user experience&quot;<br=
></div><div>o) 1/2 RTT does not equal=C2=A0OWD used to compute the bandwidt=
h delay product, imbalance and effects need to be measured</div><div>o) for=
warding planes signaling congestion to sources wasn&#39;t designed in TCP o=
riginally but the industry trend seems to be to moving towards this per thi=
ngs like L4S</div><div><br></div><div>Photons, radio &amp; antenna design<b=
r>o) Find experts who have experience &amp; knowledge, e.g. many do here<br=
>o) Photons don&#39;t really have mass nor size, at least=C2=A0per my limit=
ed understanding of particle physics and QED though, I must admit, came fro=
m reading things on the internet=C2=A0<br><br>Bob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 20, 2021=
 at 7:40 PM Vint Cerf &lt;<a href=3D"mailto:vint@google.com" target=3D"_bla=
nk">vint@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">see <a href=3D"https://mediatrust.com/"=
 target=3D"_blank">https://mediatrust.com/</a><div>v</div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Sep 20, 2021 at 10:28 AM Steve Crocker &lt;<a href=3D"mailto:steve@sh=
inkuro.com" target=3D"_blank">steve@shinkuro.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-family:arial,sans-serif;font-size:small;co=
lor:rgb(0,0,0)">Related but slightly different: Attached is a slide some of=
 my colleagues put together a decade ago showing the number of DNS lookups =
involved in displaying CNN&#39;s front page.</div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,sans-serif;font-size:small;color:rgb(0,0,0)"=
><br></div><div class=3D"gmail_default" style=3D"font-family:arial,sans-ser=
if;font-size:small;color:rgb(0,0,0)">Steve</div><div class=3D"gmail_default=
" style=3D"font-family:arial,sans-serif;font-size:small;color:rgb(0,0,0)"><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=93tnieks &lt;<a href=
=3D"mailto:valdis.kletnieks@vt.edu" target=3D"_blank">valdis.kletnieks@vt.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:<br>
&gt; what actually happens during a web page load,<br>
<br>
I&#39;m pretty sure that nobody actually understands that anymore, in any<b=
r>
more than handwaving levels.<br>
<br>
I have a nice Chrome extension called IPvFoo that actually tracks the IP<br=
>
addresses contacted during the load of the displayed page. I&#39;ll let you=
 make<br>
a guess as to how many unique IP addresses were contacted during a load<br>
of <a href=3D"https://www.cnn.com" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.cnn.com</a><br>
<br>
...<br>
<br>
<br>
...<br>
<br>
<br>
...<br>
<br>
<br>
145, at least half of which appeared to be analytics.=C2=A0 And that&#39;s =
only the<br>
hosts that were contacted by my laptop for HTTP, and doesn&#39;t count DNS,=
 or<br>
load-balancing front ends, or all the back-end boxes.=C2=A0 As I commented =
over on<br>
NANOG, we&#39;ve gotten to a point similar to that of AT&amp;T long distanc=
e, where 60%<br>
of the effort of connecting a long distance phone call was the cost of<br>
accounting and billing for the call.<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div>Please send any postal/overnight deliveries to:</div=
><div>Vint Cerf</div><div>1435 Woodhurst Blvd=C2=A0</div><div>McLean, VA 22=
102</div><div>703-448-0965</div><div><br></div><div>until further notice</d=
iv><div><br></div><div><br></div><div><br></div></div></div>
</blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--000000000000aade5605ccad37d6--

--===============0604251551425126556==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0604251551425126556==--
