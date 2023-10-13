Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2CB7C895B
	for <lists+cake@lfdr.de>; Fri, 13 Oct 2023 18:00:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 540D23CB43;
	Fri, 13 Oct 2023 11:59:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697212799;
	bh=+13evpgHkXxc0lYem23uocQhQxQt+DGvq3R/4hZA8nE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=cFfGPUvsU9X6sHFWvXzSjJy5bbRr+C/+G1H50bqRex8mOxRJkTya+yHhyv6pUGZc5
	 9ONHeD5+ha9JI2buVlVygMRog9Fa23oO4/hHm5MtIAM0AAVxpq3iEqYn5j21OZz0Y2
	 IYjLelMuw2O4MpyvIFvqcvpNJjdZ6Z8+uVsDkGGzWjuzWvTmugne1psI3vLvhuaTjz
	 3MgyewMv5Nzzkcsdutl1MOJiz3dQsa6IvfFoDc7+sooxlGU+/oneuR1sqRDkbkd4XO
	 iKFpymWcY5rsQ5kDaaVfpT38GOoobwSB48ri8l8jTEexD8Ou7pGfCQLMylWRylmsLR
	 2UQk5tg6/czqw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5ACA43B29D
 for <cake@lists.bufferbloat.net>; Fri, 13 Oct 2023 11:59:58 -0400 (EDT)
Received: by mail-qv1-xf32.google.com with SMTP id
 6a1803df08f44-66d122e0c85so12507186d6.3
 for <cake@lists.bufferbloat.net>; Fri, 13 Oct 2023 08:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697212797; x=1697817597; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IJbYR9zB8Hdo8BRukvLFwOq6btkRRjXvk30RMvqoBHs=;
 b=ZFkof90dDL0n0vmE8W3+m9e18dGJ8k0IJVWkCKuAErkGtAjwl0P5urwtpoUBzfHcFM
 mpM0pR4EUn7g5Rj8q1MTsDKfVQpS4B4c6NNEIOskx3wiX2BKp4oFRaVWJ+3WexuN1dD9
 v2Ry1FRajCcvlRFLSfh37//Mf+fPV+6o+z8ryEB4CxSIoskwGqhAewdpAtIw4g6MhsXd
 GgQjvegdJGZp3kKzoETtIHQPNzmqipGbPftk9SMzo1Svf9yXcxTI4UaeQ9rY5+Cbu1K9
 JGcPzMxpmOxgp9UbA7iSokKlmdl+eZoW5qLxuXIXFPj67EaB4JHrauxnxk01Z7UZXF6l
 j8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697212797; x=1697817597;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IJbYR9zB8Hdo8BRukvLFwOq6btkRRjXvk30RMvqoBHs=;
 b=Jq5UHRDO2zPnZf5C2uhujkJj30chvbE2wMWzsP9CEr6Ii2c7s6G251o/YgHzjyObVa
 NETfCv9pVXDMjS5bUH17GgpGNPSNkyPgoJnJILFicjD7rusHGVltG3yUb4Hqiqpz02JA
 UTOY9MdUHEWT+ARYRHKMVlcS84jeC3CjtQKZjRPUB9e4JX9Vn4O8hYYBStEnkIArCRN/
 5K9SVDK5da0oCM/aL5NLruOKXp0Sqea7Hlgn6vaaz8XloNtTjyesecTXjlJsmNOrXM+z
 mM8SHy+Fvp86rHplsFwyhASFsgaUuC9CiATslofJ3MxPxYyjf6S13gACMiyuwmb3qtLg
 w5UQ==
X-Gm-Message-State: AOJu0YxOVdT1Nn+ZCUki/fC+doZ2HBjgQwF+9ROs8BdpKmTVAR5scDgW
 n5XvSe3SKrFJeVlGwsTzu1yPYJpeUD18BxC6771JrktDHvI=
X-Google-Smtp-Source: AGHT+IHVw4BwNop37SqbqOznaZ4P+TA/3peIacjkNrB1gMcn1s1UVY6lVUN3wmg2FmXu+YEp043lhmyZWCulX0/+G1s=
X-Received: by 2002:a05:6214:c86:b0:66d:1538:6a74 with SMTP id
 r6-20020a0562140c8600b0066d15386a74mr6743627qvr.35.1697212797415; Fri, 13 Oct
 2023 08:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
 <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
 <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de>
In-Reply-To: <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de>
Date: Fri, 13 Oct 2023 08:59:45 -0700
Message-ID: <CANypexR9-Cpxup83w9tgcer7Dv48Hsun6+JR=qLPAdhhnRP58w@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
Content-Type: multipart/mixed; boundary="===============6325432139337599197=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6325432139337599197==
Content-Type: multipart/alternative; boundary="000000000000e5f63006079b25ec"

--000000000000e5f63006079b25ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

G'day,

I've been working away on automation of the tests.  Pretty close to having
much nicer tests with a lot more details.  I've also got the risc-v device
working.

However, I've run into something funny with flent.  Flent is not happy with
fping or ping.

das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/sudo /usr/sbin/ip
netns exec network101 /usr/bin/flent rrul --output
 /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/flent_pi4_n=
oqueue.png
--data-dir /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/
--format summary --plot all_scaled --title-extra
2023-10-13T15:53:21_pi4_noqueue --note 2023-10-13T15:53:21_pi4_noqueue
--extended-metadata --host 172.17.51.10 --length 60 --ipv4 --socket-stats
Starting Flent 2.0.1 using Python 3.10.12.
Starting rrul test. Expected run time: 70 seconds.
WARNING: Found fping, but couldn't parse its output. Not
using.              <---------------- ???
ERROR: Runner Ping (ms) ICMP failed check: Cannot parse output of the
system ping binary (/usr/bin/ping). Please install fping v3.5+.    <----- ?=
?

das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping
ii  fping                                 5.1-1
      amd64        sends ICMP ECHO_REQUEST packets to network hosts
ii  iputils-ping                          3:20211215-1
       amd64        Tools to test the reachability of network hosts
ii  kpartx                                0.8.8-1ubuntu1.22.04.1
       amd64        create device mappings for partitions
ii  libharfbuzz0b:amd64                   2.7.4-1ubuntu3.1
       amd64        OpenType text shaping engine (shared library)
das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping --version
fping: Version 5.1
das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ ping -V
ping from iputils 20211215

das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release
DISTRIB_ID=3DUbuntu
DISTRIB_RELEASE=3D22.04
DISTRIB_CODENAME=3Djammy
DISTRIB_DESCRIPTION=3D"Ubuntu 22.04.3 LTS"

I did install via "apt install fping"

Any thoughts please?

Kind regards,
Dave

On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake <
cake@lists.bufferbloat.net> wrote:

>
>
> > On Sep 28, 2023, at 15:19, David Lang <david@lang.hm> wrote:
> >
> > On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:
> >
> >> P.S.: I am tempted, but will likely wait until they are available in
> quantity and hope that the street price comes down a bit before getting o=
ne
> ;)
> >
> > They aren't available at all yet, and it's not clear when they will be
> available.
>
>         The announcement was end of October, but I think I could pre-orde=
r
> right now if I was feeling an urge. You are right though, announced !=3D
> available or delivered.
>
> Regards
>         Sebastian
>
> P.S.: I have a pi400 in use as "desktop" for my oldest kid, this is close
> to be actually generally usable, I would guess that changing a potential
> p500 from the pi400's 4GB to 8 GB together with the other imprivements th=
e
> 5 brings might push it over the threshold into the truly useful category.
> Which probably means that either a potential pi500 will come late and
> probably with only 4 GB, but let's see how this works out now that the
> supply situation is less problematic.
> And I understand that there are other capable ARM based SoCs for
> homerouter/desktop duty, I just happen ot have a soft spot for the
> raspberry project ;)
>
> >
> > David Lang
>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000e5f63006079b25ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>G&#39;day,</div><div><br></div><div>I&#39;ve been wor=
king away on automation of the tests.=C2=A0 Pretty close to having much nic=
er tests with a lot more details.=C2=A0 I&#39;ve also got the risc-v device=
 working.<br></div><div><br></div><div>However, I&#39;ve run into something=
 funny with flent.=C2=A0 Flent is not happy with fping or ping.<br></div><d=
iv><br></div><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ /usr/bin/s=
udo /usr/sbin/ip netns exec network101 /usr/bin/flent rrul --output =C2=A0/=
tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/15_flent/flent_pi4_noq=
ueue.png --data-dir /tmp/qdisc/2023-10-13T15:53:21/pi4/noqueue/flent/test/1=
5_flent/ --format summary --plot all_scaled --title-extra 2023-10-13T15:53:=
21_pi4_noqueue --note 2023-10-13T15:53:21_pi4_noqueue --extended-metadata -=
-host 172.17.51.10 --length 60 --ipv4 --socket-stats<br>Starting Flent 2.0.=
1 using Python 3.10.12.<br>Starting rrul test. Expected run time: 70 second=
s.<br>WARNING: Found fping, but couldn&#39;t parse its output. Not using.=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 &lt;---------------- ???<br>ERROR: Runner Ping (ms) ICMP failed check: =
Cannot parse output of the system ping binary (/usr/bin/ping). Please insta=
ll fping v3.5+.=C2=A0=C2=A0=C2=A0 &lt;----- ??</div><div><br></div><div>das=
@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ dpkg --list | grep ping<br>ii =
=C2=A0fping =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5.1-1 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0sends ICMP ECHO_R=
EQUEST packets to network hosts<br>ii =C2=A0iputils-ping =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03:=
20211215-1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0Tools to=
 test the reachability of network hosts<br>ii =C2=A0kpartx =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00.8.8-1ubuntu1.22.04.1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0create d=
evice mappings for partitions<br>ii =C2=A0libharfbuzz0b:amd64 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.7.4-1ubuntu3.1 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0OpenType text shaping engine (shared li=
brary)<br>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests$ fping --version<br=
>fping: Version 5.1</div><div>das@3rd:~/Downloads/cake/cmd/run_qdiscs_tests=
$ ping -V<br>ping from iputils 20211215</div><div><br></div><div>das@3rd:~/=
Downloads/cake/cmd/run_qdiscs_tests$ cat /etc/lsb-release <br>DISTRIB_ID=3D=
Ubuntu<br>DISTRIB_RELEASE=3D22.04<br>DISTRIB_CODENAME=3Djammy<br>DISTRIB_DE=
SCRIPTION=3D&quot;Ubuntu 22.04.3 LTS&quot;</div><div><br></div><div>I did i=
nstall via &quot;apt install fping&quot;<br></div><div><br></div><div>Any t=
houghts please?</div><div><br></div><div>Kind regards,</div><div>Dave<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Sep 28, 2023 at 6:27=E2=80=AFAM Sebastian Moeller via Cake &lt;=
<a href=3D"mailto:cake@lists.bufferbloat.net">cake@lists.bufferbloat.net</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>
&gt; On Sep 28, 2023, at 15:19, David Lang &lt;<a href=3D"mailto:david@lang=
.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt; <br>
&gt; On Thu, 28 Sep 2023, Sebastian Moeller via Cake wrote:<br>
&gt; <br>
&gt;&gt; P.S.: I am tempted, but will likely wait until they are available =
in quantity and hope that the street price comes down a bit before getting =
one ;)<br>
&gt; <br>
&gt; They aren&#39;t available at all yet, and it&#39;s not clear when they=
 will be available.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The announcement was end of October, but I thin=
k I could pre-order right now if I was feeling an urge. You are right thoug=
h, announced !=3D available or delivered.<br>
<br>
Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
P.S.: I have a pi400 in use as &quot;desktop&quot; for my oldest kid, this =
is close to be actually generally usable, I would guess that changing a pot=
ential p500 from the pi400&#39;s 4GB to 8 GB together with the other impriv=
ements the 5 brings might push it over the threshold into the truly useful =
category. Which probably means that either a potential pi500 will come late=
 and probably with only 4 GB, but let&#39;s see how this works out now that=
 the supply situation is less problematic.<br>
And I understand that there are other capable ARM based SoCs for homerouter=
/desktop duty, I just happen ot have a soft spot for the raspberry project =
;)<br>
<br>
&gt; <br>
&gt; David Lang<br>
<br>
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

--000000000000e5f63006079b25ec--

--===============6325432139337599197==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6325432139337599197==--
