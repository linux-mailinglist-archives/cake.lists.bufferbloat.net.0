Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C8D83D80D
	for <lists+cake@lfdr.de>; Fri, 26 Jan 2024 11:27:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3472B3CB40;
	Fri, 26 Jan 2024 05:27:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1706264849;
	bh=tfThFGlYC0iejmDfz3VmomWTg67i7H742wAlLhk7azU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=TaTgekUcKec4LQ5AMmu7Hv5BTnwNwIfjMJeJs0znyoh4IvLxmwDiOq9nonM/kVzzU
	 RQuZQfuscdRP1XcITq1PuLNLzHuZbSorrqabVsEJgmrpBga2wiTrMIOmw+2fXju2wq
	 qgdLxvxX9jUmXQvOe+zHqgwc6GsTlIRCU8VLwgVPRGmSv8OxdZZ8sqJwdptOezYhNr
	 1SbdC8UqX80HyO1v0PY1nlFKA0RXeazCJiF7SpZYgOJo/Ve+7vbtdLfJG2NhHJpFhR
	 u9OYS5yPjj2KzQYjyK+5QhjlaGkEJ0B3ah2h2kNPxiQU8U7XcBsHelBhp/yEf5XKoe
	 f9w3B5gbmWvYQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 48A943B2A4;
 Fri, 26 Jan 2024 05:27:27 -0500 (EST)
Received: by mail-qt1-x82c.google.com with SMTP id
 d75a77b69052e-429c00bf0efso1496291cf.1; 
 Fri, 26 Jan 2024 02:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706264846; x=1706869646; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zoKrz5AcudQvuPNYg8SiF/GNA0oqeljZ3UXMWIL5mjc=;
 b=jyC7s3x5nzgxJezmnYkPbibJrD34N0nOIiJ64oSdhnRlUQaLfSjwFogwPKgBN1Llam
 B7miX11uUQKo+NiZrLfVKpeBzvzRG8oa2AlQaIxCRhDkjwH2aipo7FsKbx5kOz5vWtYq
 /TfC/DYPj5OBV+UA5EONH+nKflkCYiq+PLW5YZ6Wnh0JBhXYhkxBKNZnWK5rPL2Ov78M
 54AX5IBBpBCdgXkxBA+2BmhURLNZ1Ep3j3i/i7cGDvFJrqlf+r9bXPInA40WQLJ9Xgrm
 Bi+tVz4a4GEn2X5GuA05yz4qdVpKK2JBaK0AWzxzaXXal6jka/IRTxeCGhvLHexwGQa1
 RREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706264846; x=1706869646;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zoKrz5AcudQvuPNYg8SiF/GNA0oqeljZ3UXMWIL5mjc=;
 b=AHVlwPr2xDyA9KNmeRS9e+e36M4hwV083qzy3J//sMpvYMG59309J8D54z1MBw9jlx
 0QRowv3kXTS7Ngdc6pB8DQjxZQMFzGwBRi/kznjE4Q4kDWYCD8u5GoGaZh/uIEr+V60A
 m79YZqTeTJfQFuxs1sOsgplHcXw5BBj/D1N+K7RrCvvyxvI0g4n6aJikzPu0gTE8jGdj
 MQAakBvjOg+yi9E0YmR/XXRI46yp6BstoWvWk+WIF1HTG5OlLB8S7J1DWMyqfTITYOL8
 0byQeaZNvhMvAXmp3buYCkw6AUz1SCqASTDD1ODhYeYyUo1fu9gcdbIWuHLlq9rJpEGG
 9byA==
X-Gm-Message-State: AOJu0YydjaM2EB0lbUkAtH4hJPXLn4p69s7BKZ3cuQKi/yd93Vcwwo/y
 cWtIRK479IG/tw4EJZDfGCUuEOJjD+p6dpEcOFGz5z5BpbyCKPHAWlvzNnO5QLdmrvQOE2BFaAH
 YMF/EGRaAjeGXZNYtwGqQ8KEYN1I=
X-Google-Smtp-Source: AGHT+IGnpwuNvfNR7DZpDMrQRYNGSFtnFIEFY6jKlWs4UsbWJGF0hcQs97fRkYipyHHr0O9UQMQjPb1F4lrBjc4wXZA=
X-Received: by 2002:a05:622a:100a:b0:42a:60cd:ce41 with SMTP id
 d10-20020a05622a100a00b0042a60cdce41mr1239698qte.53.1706264846443; Fri, 26
 Jan 2024 02:27:26 -0800 (PST)
MIME-Version: 1.0
References: <001001da4f4e$4ef4a430$ecddec90$@umt.edu.pk>
 <CAA93jw7hDyOrVvBAcuHT=ebTd6kQbtYogDO6+yUNEVvtqojSgg@mail.gmail.com>
In-Reply-To: <CAA93jw7hDyOrVvBAcuHT=ebTd6kQbtYogDO6+yUNEVvtqojSgg@mail.gmail.com>
Date: Fri, 26 Jan 2024 11:26:50 +0100
Message-ID: <CAJUtOOgXEzhJXQnxgKHKmoLfituBL=mYXmLAU6zuOVeXaWCVJw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] CAKE AQM- security
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>, muhammadahsan@umt.edu.pk,
 BBR Development <bbr-dev@googlegroups.com>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7097209424745782454=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7097209424745782454==
Content-Type: multipart/alternative; boundary="00000000000010abba060fd6be83"

--00000000000010abba060fd6be83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wouldn't make sense to sent it over to *l4s-discuss@ietf.org
<l4s-discuss@ietf.org>* also? I mean, they should at least try (however
lame it would be) to address it...

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Thu, Jan 25, 2024 at 10:54=E2=80=AFAM Dave Taht via Cake <
cake@lists.bufferbloat.net> wrote:

> The cake mailing list is more appropriate for this question, but as it
> has not come up much before, I figured I would attempt to answer it.
>
> In general, FQ and AQM technologies are more resistant to simple
> floods and even DDOS attacks than a FIFO. Starting with FQ first,
> a single DOS (or unresponsive flow) ends up invisible to the overall
> operation of the queues aside from running the qdisc to its memory
> limit. Fq_codel then drops robustly (the drop_batch facility drops 64
> packets at a time), or cake engages the "blue" algorithm which
> operates on a per packet basis, usually before it hits the memory
> limit. Both of these defenses operate independently of if a packet is
> ECN marked or not.
>
> There was an infamous bug where the odhcpd client would have an
> overflow at 51 days, and then flood the upstream with dhcpv6 requests,
> which was invisible to the fq_codeled end user (but not the
> provider!). Had it been on a FIFO perhaps that bug would have been
> noticed sooner.
>
> Running out of memory somewhere in the system in general has bad
> side-effects but they are common to all queueing mechanisms. fq_codel
> and cake are perhaps more subject to running small systems out of
> memory than most FIFOs as their defaults are sized to handle 10Gbit
> traffic. Openwrt patches down cake and fq_codel to saner defaults for
> tiny systems (64MB ram typically) running at less than a gbit/sec.
>
> A DDOS attack is handled fairly well (and in all cases better than a
> FIFO, we think - luca muscarillo has a paper on it) by a FQ technology
> - the hash used against the 5 tuple is salted by a random number
> created at instantation time so the underlying tuple must have many,
> many flows in order to completely disable the link. 1024 flows will
> knock out cake, but a FIFO would have fallen over long before that.
>
> These days on DC links where we see fq_codel, there are multiple
> hardware queues so there are 1024*cores fq_codel queues in play. There
> is a slight difference between cake and fq_codel, where in that case
> fq_codel attempts to get the total queue time down below 5ms (by
> default) over time and load, even dropping the last packet in a queue,
> where cake takes the latency hit and tries to deliver the last packet
> in a queue, except when blue is engaging. We keep hoping to see more
> cake in the DC...
>
> Moving onto AQM technology:
>
> There was an attack published against RED many years ago which used
> short bursts and RED's decay time to cause collateral damage. I think
> all single queued AQMs are subject to attacks like these, but to what
> extent is unknown.
>
> Adding ECN into the mix increases the vulnerability to non-ecn'd
> packets to be dropped while the ECN packets are preserved.
>
> A ping -f -s 1400 -Q 1 somewhere is sufficient to DOS the dualpi L4S
> queue. -Q 1 or -Q 2 sufficient to DOS a single codel, pie, or RED
> queue (with ecn enabled)
>
> The simplicity of ECN'd DOS attacks like these led to us leaving ecn
> off by default in the single queued implementations of codel and pie,
> but we were encouraged to enable ECN for fq_codel and fq_pie so
> RFC3168 style ecn is supported by default for the users of it there,
> at least in Linux.
>
> The L4S architecture specification contains elaborate out of band
> defenses against {D}DOS attacks but not in the qdisc itself (e.g. the
> code I have seen has neither the drop_batch or blue facilities in
> fq_codel and cake). In serious cases of DOS or DDOSes the current
> architectures for blackholing that sort of traffic somewhere else via
> bgp/cloudflare/etc apply. I am not aware of any service presently
> targetting coping with mis-marked, mis-behaving ECN'd traffic, nor of
> any ECN-enabled attacks, though I viewed those as inevitable if ecn
> ever took off.
>
> There are no doubt "interesting" new edge cases and attacks against
> these AQM and FQ technologies, which cost me sleep because I cannot
> forecast what they will be, and will no doubt take heat for one when
> one inevitably occurs.
>
> On Thu, Jan 25, 2024 at 12:20=E2=80=AFAM Muhammad Ahsan
> <muhammadahsan@umt.edu.pk> wrote:
> >
> >
> >
> > Hi,
> >
> >
> >
> > I was wondering , if anyone can share the security related part of  CAK=
E
> AQM .
> >
> > I mean the security considerations CAKE takes into account in preventin=
g
> against certain LDDOS, spoofing type attacks. etc
> >
> >
> >
> >
> >
> > Rgds,
> >
> > Ahsan
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

--00000000000010abba060fd6be83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Wouldn&#39;t make sense to sent it over to=C2=A0<i><a href=
=3D"mailto:l4s-discuss@ietf.org">l4s-discuss@ietf.org</a></i> also? I mean,=
 they should at least try (however lame it would be) to address it...<div><=
br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0=
<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"=
https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Teleg=
ram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u>=
</p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302c=
a<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" t=
arget=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div>=
</div></div></div></div></div></div></div></div></div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan=
 25, 2024 at 10:54=E2=80=AFAM Dave Taht via Cake &lt;<a href=3D"mailto:cake=
@lists.bufferbloat.net">cake@lists.bufferbloat.net</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);p=
adding-left:1ex">The cake mailing list is more appropriate for this questio=
n, but as it<br>
has not come up much before, I figured I would attempt to answer it.<br>
<br>
In general, FQ and AQM technologies are more resistant to simple<br>
floods and even DDOS attacks than a FIFO. Starting with FQ first,<br>
a single DOS (or unresponsive flow) ends up invisible to the overall<br>
operation of the queues aside from running the qdisc to its memory<br>
limit. Fq_codel then drops robustly (the drop_batch facility drops 64<br>
packets at a time), or cake engages the &quot;blue&quot; algorithm which<br=
>
operates on a per packet basis, usually before it hits the memory<br>
limit. Both of these defenses operate independently of if a packet is<br>
ECN marked or not.<br>
<br>
There was an infamous bug where the odhcpd client would have an<br>
overflow at 51 days, and then flood the upstream with dhcpv6 requests,<br>
which was invisible to the fq_codeled end user (but not the<br>
provider!). Had it been on a FIFO perhaps that bug would have been<br>
noticed sooner.<br>
<br>
Running out of memory somewhere in the system in general has bad<br>
side-effects but they are common to all queueing mechanisms. fq_codel<br>
and cake are perhaps more subject to running small systems out of<br>
memory than most FIFOs as their defaults are sized to handle 10Gbit<br>
traffic. Openwrt patches down cake and fq_codel to saner defaults for<br>
tiny systems (64MB ram typically) running at less than a gbit/sec.<br>
<br>
A DDOS attack is handled fairly well (and in all cases better than a<br>
FIFO, we think - luca muscarillo has a paper on it) by a FQ technology<br>
- the hash used against the 5 tuple is salted by a random number<br>
created at instantation time so the underlying tuple must have many,<br>
many flows in order to completely disable the link. 1024 flows will<br>
knock out cake, but a FIFO would have fallen over long before that.<br>
<br>
These days on DC links where we see fq_codel, there are multiple<br>
hardware queues so there are 1024*cores fq_codel queues in play. There<br>
is a slight difference between cake and fq_codel, where in that case<br>
fq_codel attempts to get the total queue time down below 5ms (by<br>
default) over time and load, even dropping the last packet in a queue,<br>
where cake takes the latency hit and tries to deliver the last packet<br>
in a queue, except when blue is engaging. We keep hoping to see more<br>
cake in the DC...<br>
<br>
Moving onto AQM technology:<br>
<br>
There was an attack published against RED many years ago which used<br>
short bursts and RED&#39;s decay time to cause collateral damage. I think<b=
r>
all single queued AQMs are subject to attacks like these, but to what<br>
extent is unknown.<br>
<br>
Adding ECN into the mix increases the vulnerability to non-ecn&#39;d<br>
packets to be dropped while the ECN packets are preserved.<br>
<br>
A ping -f -s 1400 -Q 1 somewhere is sufficient to DOS the dualpi L4S<br>
queue. -Q 1 or -Q 2 sufficient to DOS a single codel, pie, or RED<br>
queue (with ecn enabled)<br>
<br>
The simplicity of ECN&#39;d DOS attacks like these led to us leaving ecn<br=
>
off by default in the single queued implementations of codel and pie,<br>
but we were encouraged to enable ECN for fq_codel and fq_pie so<br>
RFC3168 style ecn is supported by default for the users of it there,<br>
at least in Linux.<br>
<br>
The L4S architecture specification contains elaborate out of band<br>
defenses against {D}DOS attacks but not in the qdisc itself (e.g. the<br>
code I have seen has neither the drop_batch or blue facilities in<br>
fq_codel and cake). In serious cases of DOS or DDOSes the current<br>
architectures for blackholing that sort of traffic somewhere else via<br>
bgp/cloudflare/etc apply. I am not aware of any service presently<br>
targetting coping with mis-marked, mis-behaving ECN&#39;d traffic, nor of<b=
r>
any ECN-enabled attacks, though I viewed those as inevitable if ecn<br>
ever took off.<br>
<br>
There are no doubt &quot;interesting&quot; new edge cases and attacks again=
st<br>
these AQM and FQ technologies, which cost me sleep because I cannot<br>
forecast what they will be, and will no doubt take heat for one when<br>
one inevitably occurs.<br>
<br>
On Thu, Jan 25, 2024 at 12:20=E2=80=AFAM Muhammad Ahsan<br>
&lt;<a href=3D"mailto:muhammadahsan@umt.edu.pk" target=3D"_blank">muhammada=
hsan@umt.edu.pk</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I was wondering , if anyone can share the security related part of=C2=
=A0 CAKE AQM .<br>
&gt;<br>
&gt; I mean the security considerations CAKE takes into account in preventi=
ng against certain LDDOS, spoofing type attacks. etc<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Rgds,<br>
&gt;<br>
&gt; Ahsan<br>
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
</blockquote></div>

--00000000000010abba060fd6be83--

--===============7097209424745782454==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7097209424745782454==--
