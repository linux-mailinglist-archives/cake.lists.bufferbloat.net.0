Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F713E38C5
	for <lists+cake@lfdr.de>; Sun,  8 Aug 2021 07:08:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1675D3CB61;
	Sun,  8 Aug 2021 01:08:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628399293;
	bh=5UXB0i/W4NwthjyyE0BVHyTXLyhTVNrQUVsmzCxgyYU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BWFBOSfGXoECnbSU9BWrLlkK1mYZlD/VCqdeQRJkbRS0igpuKF9GdFioJkNndom2M
	 ulZRsN3ymab+WogKIdNXueRcHeDrUZNawl5OyGeiInWCtuyb+32qGpTrbdDwXGXXEp
	 b3ARB7/orOTAtstUPymVvYKqxd8gD/YHQ8cCzFR5GLdBqraPPqFgXIaW11Ryu/RL31
	 aXv9fQBTFfBPbQOqj1aOgVMukWFpjfGhIgDTjdSwMJ5M/Czix7Mjg0UYNshkKxwb4z
	 Bo0EYMGVezdWXis9/3rYridnrl2FG1aOWlgyxtHldSEZFJQemgCuv0o0JKTthkQVw5
	 bXtJ5OjqFe6og==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1025A3CB39
 for <cake@lists.bufferbloat.net>; Sun,  8 Aug 2021 01:08:11 -0400 (EDT)
Received: by mail-ed1-x52e.google.com with SMTP id bo19so149590edb.9
 for <cake@lists.bufferbloat.net>; Sat, 07 Aug 2021 22:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MWhihX6vcFiIlsgUBgFON/7XXrKKZ+MSl+waXGQK10s=;
 b=AEYbT+RhL33iU9Wkv2O8W0qnW+5BfR2WF7R85ph6VfFjYoYqIS5PvB2YSKpJhzNzpE
 3Qha5P+60BorqBNAm9jCNgPaV8GrxgHxBV3FreABi6FxIUqluqA65vFGvjTQ8xZRAGWs
 SJ/vKx+MtFI41x9PnIxkgLqnAPc3BYXYQieUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MWhihX6vcFiIlsgUBgFON/7XXrKKZ+MSl+waXGQK10s=;
 b=kIGCS4I+uxbqFFTuLya0dC6eYUJqWfJNpzvyR6L2w/fPD7q6+YhDElw2kByvE+Tlg7
 8o3n5eYbf2m4NxkKHiKaaN/QhDlkbwl9RVAT9dJGziAXLaju8E6uqNrodA4U9uCshULM
 BT6sflj4R3hNtVuepIa94MDyr+DdHjHhK60RfooFHjRi17nfC0ozzSGb1J/m2yrvk2tn
 842QZ5IryJ7YnOrMq9IkUm39QJlE04iHFEQoolerdAkPvb1VNVU7S8PAIl+cPe2aZSB3
 NSaU2FEBlkepgjvQA5ud2XFeaClro7p7CL6Tm40Oo4F8POUHiUFeiBC6bFJyRkEUz+nL
 uVIg==
X-Gm-Message-State: AOAM5315/pGJksa1f40BJ+h0U6FLdVOM4kMk2Z7K9docD1h3yoIA+KOb
 gpLfyXC0oFLf1C9hmQ9EW9aSvPqNMVcOXitvlPH+uLiQzCLnSqR3Y6CUfpvGEkxctdWDclGWr9v
 V7wByVRjxvPSHzX0oCR7z3Z1AxQd+
X-Google-Smtp-Source: ABdhPJx8VvfpI10aZGIFGORIKnzCt7rJM3aRLSFYuOO0K2scCqdV1ZEnmB2J78ySqwPVutM+4xC0tQbTtWhnnQa1Q5Q=
X-Received: by 2002:aa7:d8d4:: with SMTP id k20mr21889237eds.373.1628399287716; 
 Sat, 07 Aug 2021 22:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
 <CAHb6Lvp851pVCt+zUv1PZgpHafCG4RPXEwMn6=CJFXhVf9fK8w@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108022007460.810590@qynat-yncgbc>
 <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <C2F8AFB15FAD4A91BF9A870505084D59@SRA6>
In-Reply-To: <C2F8AFB15FAD4A91BF9A870505084D59@SRA6>
Date: Sat, 7 Aug 2021 22:07:56 -0700
Message-ID: <CAHb6Lvobi4mZwnaGm7x56oGxtUpD9qotcagtBySgy3diovuTaw@mail.gmail.com>
To: dickroy@alum.mit.edu
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
 Internet Quality workshop CFP for the internet architecture board
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7523524309803693499=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7523524309803693499==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000001d077405c905416a"

--0000000000001d077405c905416a
Content-Type: multipart/alternative; boundary="000000000000191c2d05c90541e0"

--000000000000191c2d05c90541e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks - your wording is more accurate. The path loss matrix is hollow
symmetric while the RF channel is reciprocal.

The challenge comes when adding phase shifters. Then it's not just a path
loss matrix anymore.

Bob

On Sat, Aug 7, 2021 at 10:04 PM Dick Roy <dickroy@alum.mit.edu> wrote:

>
>
>
> ------------------------------
>
> *From:* Starlink [mailto:starlink-bounces@lists.bufferbloat.net] *On
> Behalf Of *Bob McMahon
> *Sent:* Monday, August 2, 2021 8:23 PM
> *To:* David Lang
> *Cc:* starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
> codel@lists.bufferbloat.net; cerowrt-devel; bloat
> *Subject:* Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug
> 2: Internet Quality workshop CFP for the internet architecture board
>
>
>
> The distance matrix defines signal attenuations/loss between pairs.
>
> *[RR] Which makes it a path loss matrix rather than a distance matrix
> actually.*
>
> It's straightforward to create a distance matrix that has hidden nodes
> because all "signal  loss" between pairs is defined.  Let's say a 120dB
> attenuation path will cause a node to be hidden as an example.
>
>      A    B     C    D
>
> A   -   35   120   65
>
> B         -      65   65
>
> C               -       65
>
> D                         -
>
> So in the above, AC are hidden from each other but nobody else is. It doe=
s
> assume symmetry between pairs but that's typically true.
>
> *[RR] I=E2=80=99m guessing you really mean reciprocal rather than symmetr=
ic. An RF
> channel is reciprocal if the loss when A is transmitting to B is the same
> as that when B is transmitting to A. When the tx powers and rx
> sensitivities are such that when combined with the path loss(es) the =E2=
=80=9Clink
> budget=E2=80=9D is  the same in both directions, the links are balanced a=
nd
> therefore have the same capacity. *
>
>
>
> The RF device takes these distance matrices as settings and calculates th=
e
> five branch tree values (as demonstrated in the video).
>
> There are limitations to solutions though but I've found those not to be
> an issue to date. I've been able to produce hidden nodes quite readily. A=
dd
> the phase shifters and spatial stream powers can also be affected, but th=
is
> isn't shown in this simple example.
>
> Bob
>
>
>
> On Mon, Aug 2, 2021 at 8:12 PM David Lang <david@lang.hm> wrote:
>
> I guess it depends on what you are intending to test. If you are not goin=
g
> to
> tinker with any of the over-the-air settings (including the number of
> packets
> transmitted in one aggregate), the details of what happen over the air
> don't
> matter much.
>
> But if you are going to be doing any tinkering with what is getting sent,
> and
> you ignore the hidden transmitter type problems, you will create a
> solution that
> seems to work really well in the lab and falls on it's face out in the
> wild
> where spectrum overload and hidden transmitters are the norm (at least in
> urban
> areas), not rare corner cases.
>
> you don't need to include them in every test, but you need to have a way
> to
> configure your lab to include them before you consider any
> settings/algorithm
> ready to try in the wild.
>
> David Lang
>
> On Mon, 2 Aug 2021, Bob McMahon wrote:
>
> > We find four nodes, a primary BSS and an adjunct one quite good for lot=
s
> of
> > testing.  The six nodes allows for a primary BSS and two adjacent ones.
> We
> > want to minimize complexity to necessary and sufficient.
> >
> > The challenge we find is having variability (e.g. montecarlos) that's
> > reproducible and has relevant information. Basically, the distance
> matrices
> > have h-matrices as their elements. Our chips can provide these
> h-matrices.
> >
> > The parts for solid state programmable attenuators and phase shifters
> > aren't very expensive. A device that supports a five branch tree and 2x=
2
> > MIMO seems a very good starting point.
> >
> > Bob
> >
> > On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com>
> wrote:
> >
> >> On 8/2/21 4:16 PM, David Lang wrote:
> >>> If you are going to setup a test environment for wifi, you need to
> >> include the ability to make a fe cases that only happen with RF, not
> with
> >> wired networks and
> >>> are commonly overlooked
> >>>
> >>> 1. station A can hear station B and C but they cannot hear each other
> >>> 2. station A can hear station B but station B cannot hear station A 3=
.
> >> station A can hear that station B is transmitting, but not with a stro=
ng
> >> enough signal to
> >>> decode the signal (yes in theory you can work around interference, bu=
t
> >> in practice interference is still a real thing)
> >>>
> >>> David Lang
> >>>
> >>
> >> To add to this, I think you need lots of different station devices,
> >> different capabilities (/n, /ac, /ax, etc)
> >> different numbers of spatial streams, and different distances from the
> >> AP.  From download queueing perspective, changing
> >> the capabilities may be sufficient while keeping all stations at same
> >> distance.  This assumes you are not
> >> actually testing the wifi rate-ctrl alg. itself, so different throughp=
ut
> >> levels for different stations would be enough.
> >>
> >> So, a good station emulator setup (and/or pile of real stations) and a
> few
> >> RF chambers and
> >> programmable attenuators and you can test that setup...
> >>
> >>  From upload perspective, I guess same setup would do the job.
> >> Queuing/fairness might depend a bit more on the
> >> station devices, emulated or otherwise, but I guess a clever AP could
> >> enforce fairness in upstream direction
> >> too by implementing per-sta queues.
> >>
> >> Thanks,
> >> Ben
> >>
> >> --
> >> Ben Greear <greearb@candelatech.com>
> >> Candela Technologies Inc  http://www.candelatech.com
> >>
> >
> >
>
>
> This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the use of the individual or entity to whom it is addressed an=
d
> may contain information that is confidential, legally privileged, protect=
ed
> by privacy laws, or otherwise restricted from disclosure to anyone else. =
If
> you are not the intended recipient or the person responsible for deliveri=
ng
> the e-mail to the intended recipient, you are hereby notified that any us=
e,
> copying, distributing, dissemination, forwarding, printing, or copying of
> this e-mail is strictly prohibited. If you received this e-mail in error,
> please return the e-mail to the sender, delete it from your computer, and
> destroy any printed copy of it.
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

--000000000000191c2d05c90541e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks - your wording is more accurate. The path loss matr=
ix is hollow symmetric while the RF channel is reciprocal.=C2=A0<br><br>The=
 challenge comes when adding phase shifters. Then it&#39;s not just=C2=A0a =
path loss matrix anymore.<br><br>Bob</div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 7, 2021 at 10:04 PM Dick Ro=
y &lt;<a href=3D"mailto:dickroy@alum.mit.edu">dickroy@alum.mit.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">









<div lang=3D"EN-US">

<div class=3D"gmail-m_-1200123025717896489Section1">

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<div>

<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><font=
 size=3D"3" face=3D"Times New Roman"><span style=3D"font-size:12pt">

<hr size=3D"3" width=3D"100%" align=3D"center">

</span></font></div>

<p class=3D"MsoNormal"><b><font size=3D"2" face=3D"Tahoma"><span style=3D"f=
ont-size:10pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><=
font size=3D"2" face=3D"Tahoma"><span style=3D"font-size:10pt;font-family:T=
ahoma"> Starlink
[mailto:<a href=3D"mailto:starlink-bounces@lists.bufferbloat.net" target=3D=
"_blank">starlink-bounces@lists.bufferbloat.net</a>] <b><span style=3D"font=
-weight:bold">On Behalf Of </span></b>Bob McMahon<br>
<b><span style=3D"font-weight:bold">Sent:</span></b> Monday, August 2, 2021=
 8:23
PM<br>
<b><span style=3D"font-weight:bold">To:</span></b> David Lang<br>
<b><span style=3D"font-weight:bold">Cc:</span></b>
<a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_blank">starlin=
k@lists.bufferbloat.net</a>; Make-Wifi-fast; Cake List;
<a href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">codel@list=
s.bufferbloat.net</a>; cerowrt-devel; bloat<br>
<b><span style=3D"font-weight:bold">Subject:</span></b> Re: [Starlink] [Cak=
e]
[Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP f=
or
the internet architecture board</span></font><u></u><u></u></p>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><font size=3D"3" face=
=3D"Times New Roman"><span style=3D"font-size:12pt">The distance matrix
defines signal attenuations/loss between pairs.=C2=A0 <font color=3D"navy">=
<span style=3D"color:navy"><u></u><u></u></span></font></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><b><i><font size=3D"2" =
color=3D"navy" face=3D"Arial"><span style=3D"font-size:10pt;font-family:Ari=
al;color:navy;font-weight:bold;font-style:italic">[RR] Which makes it a pat=
h loss matrix
rather than a distance matrix actually.<u></u><u></u></span></font></i></b>=
</p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><font size=3D"3" face=
=3D"Times New Roman"><span style=3D"font-size:12pt">It&#39;s straightforwar=
d to
create a distance matrix that has hidden nodes because all &quot;signal=C2=
=A0
loss&quot;=C2=A0between=C2=A0pairs is defined.=C2=A0 Let&#39;s say a 120dB
attenuation path will cause a node to be hidden as an example.<u></u><u></u=
></span></font></p>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">=C2=A0 =C2=A0 =C2=A0A=C2=A0 =C2=A0 B=C2=A0 =C2=A0 =C2=
=A0C=C2=A0 =C2=A0
D=C2=A0<u></u><u></u></span></font></p>

</div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">A=C2=A0 =C2=A0-=C2=A0 =C2=A035=C2=A0 =C2=A0120=C2=A0 =
=C2=A065<u></u><u></u></span></font></p>

</div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">B=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=
=A0 65=C2=A0
=C2=A065<u></u><u></u></span></font></p>

</div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0-=C2=A0 =C2=A0
=C2=A0 =C2=A065<u></u><u></u></span></font></p>

</div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0-<br>
<br>
So in the above, AC are hidden from each other=C2=A0but nobody else is. It =
does
assume symmetry between=C2=A0pairs but that&#39;s typically true.<font colo=
r=3D"navy"><span style=3D"color:navy"><u></u><u></u></span></font></span></=
font></p>

<p class=3D"MsoNormal"><b><i><font size=3D"2" color=3D"navy" face=3D"Arial"=
><span style=3D"font-size:10pt;font-family:Arial;color:navy;font-weight:bol=
d;font-style:italic">[RR] I=E2=80=99m guessing you really mean reciprocal r=
ather than
symmetric. An RF channel is reciprocal if the loss when A is transmitting t=
o B
is the same as that when B is transmitting to A. When the tx powers and rx =
sensitivities
are such that when combined with the path loss(es) the =E2=80=9Clink budget=
=E2=80=9D
is =C2=A0the same in both directions, the links are balanced and therefore =
have
the same capacity. <u></u><u></u></span></font></i></b></p>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><br>
<br>
The RF device takes these distance matrices=C2=A0as settings and calculates=
 the
five branch tree values (as demonstrated in the video). <font color=3D"navy=
"><span style=3D"color:navy"><u></u><u></u></span></font></span></font></p>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">There are limitations=C2=A0to solutions=C2=A0though bu=
t I&#39;ve found
those not to be an issue to date. I&#39;ve been able to produce hidden node=
s quite
readily. Add the phase shifters=C2=A0and spatial stream powers can also be
affected, but this isn&#39;t shown in this simple example.<br>
<br>
Bob<u></u><u></u></span></font></p>

</div>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a href=
=3D"mailto:david@lang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<u>=
</u><u></u></span></font></p>

</div>

<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">I guess it depends on what you are intending to test. =
If you are not
going to <br>
tinker with any of the over-the-air settings (including the number of packe=
ts <br>
transmitted in one aggregate), the details of what happen over the air don&=
#39;t <br>
matter much.<br>
<br>
But if you are going to be doing any tinkering with what is getting sent, a=
nd <br>
you ignore the hidden transmitter type problems, you will create a solution
that <br>
seems to work really well in the lab and falls on it&#39;s face out in the =
wild <br>
where spectrum overload and hidden transmitters are the norm (at least in u=
rban
<br>
areas), not rare corner cases.<br>
<br>
you don&#39;t need to include them in every test, but you need to have a wa=
y to <br>
configure your lab to include them before you consider any settings/algorit=
hm <br>
ready to try in the wild.<br>
<br>
David Lang<br>
<br>
On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
<br>
&gt; We find four nodes, a primary BSS and an adjunct one quite good for lo=
ts
of<br>
&gt; testing.=C2=A0 The six nodes allows for a primary BSS and two adjacent
ones. We<br>
&gt; want to minimize complexity to necessary and sufficient.<br>
&gt;<br>
&gt; The challenge we find is having variability (e.g. montecarlos) that&#3=
9;s<br>
&gt; reproducible and has relevant information. Basically, the distance
matrices<br>
&gt; have h-matrices as their elements. Our chips can provide these h-matri=
ces.<br>
&gt;<br>
&gt; The parts for solid state programmable attenuators and phase shifters<=
br>
&gt; aren&#39;t very expensive. A device that supports a five branch tree a=
nd 2x2<br>
&gt; MIMO seems a very good starting point.<br>
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=3D"mailto:greear=
b@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt;
wrote:<br>
&gt;<br>
&gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br>
&gt;&gt;&gt; If you are going to setup a test environment for wifi, you nee=
d to<br>
&gt;&gt; include the ability to make a fe cases that only happen with RF, n=
ot
with<br>
&gt;&gt; wired networks and<br>
&gt;&gt;&gt; are commonly overlooked<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 1. station A can hear station B and C but they cannot hear eac=
h
other<br>
&gt;&gt;&gt; 2. station A can hear station B but station B cannot hear stat=
ion
A 3.<br>
&gt;&gt; station A can hear that station B is transmitting, but not with a
strong<br>
&gt;&gt; enough signal to<br>
&gt;&gt;&gt; decode the signal (yes in theory you can work around interfere=
nce,
but<br>
&gt;&gt; in practice interference is still a real thing)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; David Lang<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; To add to this, I think you need lots of different station devices=
,<br>
&gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt;&gt; different numbers of spatial streams, and different distances from=
 the<br>
&gt;&gt; AP.=C2=A0 From download queueing perspective, changing<br>
&gt;&gt; the capabilities may be sufficient while keeping all stations at s=
ame<br>
&gt;&gt; distance.=C2=A0 This assumes you are not<br>
&gt;&gt; actually testing the wifi rate-ctrl alg. itself, so different
throughput<br>
&gt;&gt; levels for different stations would be enough.<br>
&gt;&gt;<br>
&gt;&gt; So, a good station emulator setup (and/or pile of real stations) a=
nd a
few<br>
&gt;&gt; RF chambers and<br>
&gt;&gt; programmable attenuators and you can test that setup...<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 From upload perspective, I guess same setup would do the job=
.<br>
&gt;&gt; Queuing/fairness might depend a bit more on the<br>
&gt;&gt; station devices, emulated or otherwise, but I guess a clever AP co=
uld<br>
&gt;&gt; enforce fairness in upstream direction<br>
&gt;&gt; too by implementing per-sta queues.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Ben<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=
=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt;&gt; Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.c=
om" target=3D"_blank">http://www.candelatech.com</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<u></u><u></u></span></font></p>

</blockquote>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><br>
</span></font><font size=3D"2"><span style=3D"font-size:10pt;background:whi=
te">This
electronic communication and the information and any files transmitted with=
 it,
or attached to it, are confidential and are intended solely for the use of =
the
individual or entity to whom it is addressed and may contain information th=
at is
confidential, legally privileged, protected by privacy laws, or otherwise
restricted from disclosure to anyone else. If you are not the intended
recipient or the person responsible for delivering the e-mail to the intend=
ed
recipient, you are hereby notified that any use, copying, distributing,
dissemination, forwarding, printing, or copying of this e-mail is strictly
prohibited. If you received this e-mail in error, please return the e-mail =
to
the sender, delete it from your computer, and destroy any printed copy of i=
t.</span></font><u></u><u></u></p>

</div>

</div>


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
--000000000000191c2d05c90541e0--

--0000000000001d077405c905416a
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQagYJKoZIhvcNAQcCoIIQWzCCEFcCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3BMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUkwggQxoAMCAQICDBhL7k9eiTHfluW70TANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMTAyMjIwNDQyMDRaFw0yMjA5MDEwODA5NDlaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDyY95HWFm48WhKUyFbAS9JxiDqBHBdAbgjx4iF46lkqZdVkIJ8pGfcXoGd10Vp9yL5VQevDAt/
A/Jh22uhSgKR9Almeux9xWGhG8cyZwcCwYrsMt84FqCgEQidT+7YGNdd9oKrjU7mFC7pAnnw+cGI
d3NFryurgnNPwfEK0X7HwRsga5pM+Zelr/ZM8MkphE1hCvTuPGakNylOFhP+wKL8Bmhsq5tNIInw
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIKtDFkuu6atzk4nCAYXmbeNGCzgC+YjBV/qn
9iU+LfqTMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgwODA1
MDgwN1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBBIVU622f3cqtALBGQmdoZBU5yJUR4yU1QnggBwVa6fQo0UIJbwJu0
23SFNVUEzGjFzf89bvAEiLLeD7AD5uCRumA+vlbEtSL8ik0lMjUOO7QsBCSp+Orb/zcOi1FKWEyy
/pwXIbiAGr7JrpWXCVgH1qE1XoGhCaekn9xcJNJzdTR+XfiYx24/C9aCvf7SN9VU1y9/sbZf2u46
jVQvkuoWCCCCJ96irS1UIa5/ufFogDM+qhuLCaAhSVToF76PnJcYFOWeaIlvPQTftk1qY+LSEp1/
9qlkVVCvxe/4iOWTdAIcn4GOiNOcOgjtFlVUtisfGbmna045c0vkCwqmbDgs
--0000000000001d077405c905416a--

--===============7523524309803693499==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7523524309803693499==--
