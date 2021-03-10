Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F1337EEA
	for <lists+cake@lfdr.de>; Thu, 11 Mar 2021 21:18:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4877E3CB39;
	Thu, 11 Mar 2021 15:18:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615493893;
	bh=5pg2/IhPkVMnBq7fzSFRRdTxR1zaHuwvAh86CJkdH+w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RasiJ5Dp4yYXmealYAWMccwbXzt1TeBAhTD794m2WFDqWi0tr/xwuVQ58oXrPThYr
	 PTyDGlI85GAOezizKz8+Lv+sWQFva7Y30byofumuj/wXc0UfrHVsqWW/HVH3zHeicY
	 m04LHmuA5jGiLfy7synmZat4csBGGhgchLL6cIx0Z4ppAFlpOVNs7dRsPaGoUzIu+l
	 JPKC9pnwJKeu8luDH1jtdrJmVfKkvgKGjZ+sqnvdQHXzWiIhWXBI36ap6WmjTGaprg
	 OJ9KlAf2CPiZ7WJqMlVUaKvwvwB95OfnzTcrWD/iFIPvl3AT0m0SRK+EQ3iXujfhBz
	 KQIkT6C276SGA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-03.telenor.no (tn-mailgw-03.telenor.no [153.110.76.6])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 63C853B2A4
 for <cake@lists.bufferbloat.net>; Wed, 10 Mar 2021 02:04:04 -0500 (EST)
IronPort-SDR: n+dPEy0cpu+XZkUExq8vs/ZnpZyHud7Y9UIX4mOxGitBEm2c0B+Dpmjmpe2SmLbM2Ae9ZLxNDQ
 VtenLF2uzPU36DlUcnojupzjFIkWtNoL3zfmFfv2BIu481Zna3b9f79TGMX2svOD1Xua97HL/o
 g+3XYb47Te/hSpXoN1qhqBYQ93CgJ8MbX9u1bNYnK3DmhgkOqOoc8uLtrcdNazVt+eruvOvZy+
 +WbmxZgoLOIQszdpEmF/n1EqKqmYqB1L7uj1xW1CKrEPb3iU/wr1hJhW5XrAztWbJJ3o+RRxt3
 7+A=
X-IronPort-AV: E=Sophos;i="5.81,236,1610409600"; d="scan'208,217";a="75701793"
Received: from tns-sko-24-200.corp.telenor.no ([10.179.59.68])
 by tn-mailgw-03.corp.telenor.no with ESMTP; 10 Mar 2021 07:04:02 +0000
Received: from TNS-SKO-24-209.corp.telenor.no (10.179.59.77) by
 TNS-SKO-24-200.corp.telenor.no (10.179.59.68) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 10 Mar 2021 08:04:02 +0100
Received: from outlook.telenor.no (10.179.127.58) by
 TNS-SKO-24-209.corp.telenor.no (10.179.59.77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Wed, 10 Mar 2021 08:04:02 +0100
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex001.nxvp.net (10.149.139.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 10 Mar 2021 08:04:02 +0100
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2176.009; Wed,
 10 Mar 2021 08:04:02 +0100
From: Taraldsen Erik <erik.taraldsen@telenor.no>
To: Dave Taht <dave.taht@gmail.com>, Nils Andreas Svee <me@lochnair.net>
Thread-Topic: [Cake] STEAM tcp algo from CDN?
Thread-Index: AQHXFLaqJ/kn9wf41U6CiTMRpB5Ixap8CRcAgAAwnQCAABVtgIAAB0aAgAB2tQE=
Date: Wed, 10 Mar 2021 07:04:02 +0000
Message-ID: <194ad8c5177a4f06aca1c879097647c5@telenor.no>
References: <5407860ac65c4059838e7952ae162f9d@telenor.no>
 <CAA93jw6Z1af9T=qf5kjwnhu+_4V6JnKXrUciXAuL1sEpkBCWWg@mail.gmail.com>
 <9AADDAFC-ECCE-4023-BB68-C5CC729EC521@gmail.com>
 <59bb446ac8791ead9d3ce9a0f1bfff3e7d6f58d8.camel@lochnair.net>,
 <CAA93jw5vmqoRjD5OerJgWbD7FnZG4_PoSYffDRXCY6hdJU+o2A@mail.gmail.com>
In-Reply-To: <CAA93jw5vmqoRjD5OerJgWbD7FnZG4_PoSYffDRXCY6hdJU+o2A@mail.gmail.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.139.228]
x-tm-snts-smtp: DE0B5B8007472BECABC3D5501B678CFF102F63FC4843E9367A82A61485341BD12000:8
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 11 Mar 2021 15:18:11 -0500
Subject: Re: [Cake] STEAM tcp algo from CDN?
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
Cc: =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6830450696681071384=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6830450696681071384==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_194ad8c5177a4f06aca1c879097647c5telenorno_"

--_000_194ad8c5177a4f06aca1c879097647c5telenorno_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

So to summarize, not quite certain which tcp algo they use.  But everyone s=
eems to agree that Steam does whatever they can to jam the pipe full

________________________________
Fra: Dave Taht <dave.taht@gmail.com>
Sendt: onsdag 10. mars 2021 01.57.09
Til: Nils Andreas Svee
Kopi: Jonathan Morton; Toke H=F8iland-J=F8rgensen via Cake; Taraldsen Erik
Emne: Re: [Cake] STEAM tcp algo from CDN?

I would really like them to use less flows - or BBR started up
separately with a 200+ms
interval between starts would be good....

On Tue, Mar 9, 2021 at 4:31 PM Nils Andreas Svee <me@lochnair.net> wrote:
>
> On Wed, 2021-03-10 at 01:14 +0200, Jonathan Morton wrote:
> > > On 9 Mar, 2021, at 10:20 pm, Dave Taht <dave.taht@gmail.com> wrote:
> > >
> > > 10-20 flows, cubic, last I looked. It's ugly.
> >
> > I can't confirm CUBIC from here, but it seems to be 4-8 flows in
> > parallel now.  Latency to the national CDN is about 22ms over LTE, so
> > it's hard to distinguish CUBIC from anything else in particular; in
> > this range it would look a lot like NewReno.  It seems to shut down
> > each flow and start a fresh one after about a minute.
> Seeing somewhere between 8-16 here I believe. IIRC I've seen you
> mention being located in Finland, if so we're probably on the same
> datacenter in Stockholm.
>
> The flows are probably not lasting long because the downloads are split
> into chunks, which according to my logs are at most 1 MB. Patches seem
> to work differently, those can be much larger (logs shows the largest
> one the past months was 137 MB, depends on the game I assume).
>
> --
> Best Regards,
> Nils
>


--
"For a successful technology, reality must take precedence over public
relations, for Mother Nature cannot be fooled" - Richard Feynman

dave@taht.net <Dave T=E4ht> CTO, TekLibre, LLC Tel: 1-831-435-0729

--_000_194ad8c5177a4f06aca1c879097647c5telenorno_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>So to summarize, not quite certain which tcp algo they use.&nbsp; But ev=
eryone seems to agree that Steam does whatever they can to jam the pipe ful=
l<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>Fra:</b> Dave Taht &lt;dave.t=
aht@gmail.com&gt;<br>
<b>Sendt:</b> onsdag 10. mars 2021 01.57.09<br>
<b>Til:</b> Nils Andreas Svee<br>
<b>Kopi:</b> Jonathan Morton; Toke H=F8iland-J=F8rgensen via Cake; Taraldse=
n Erik<br>
<b>Emne:</b> Re: [Cake] STEAM tcp algo from CDN?</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">I would really like them to use less flows - or BB=
R started up<br>
separately with a 200&#43;ms<br>
interval between starts would be good....<br>
<br>
On Tue, Mar 9, 2021 at 4:31 PM Nils Andreas Svee &lt;me@lochnair.net&gt; wr=
ote:<br>
&gt;<br>
&gt; On Wed, 2021-03-10 at 01:14 &#43;0200, Jonathan Morton wrote:<br>
&gt; &gt; &gt; On 9 Mar, 2021, at 10:20 pm, Dave Taht &lt;dave.taht@gmail.c=
om&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 10-20 flows, cubic, last I looked. It's ugly.<br>
&gt; &gt;<br>
&gt; &gt; I can't confirm CUBIC from here, but it seems to be 4-8 flows in<=
br>
&gt; &gt; parallel now.&nbsp; Latency to the national CDN is about 22ms ove=
r LTE, so<br>
&gt; &gt; it's hard to distinguish CUBIC from anything else in particular; =
in<br>
&gt; &gt; this range it would look a lot like NewReno.&nbsp; It seems to sh=
ut down<br>
&gt; &gt; each flow and start a fresh one after about a minute.<br>
&gt; Seeing somewhere between 8-16 here I believe. IIRC I've seen you<br>
&gt; mention being located in Finland, if so we're probably on the same<br>
&gt; datacenter in Stockholm.<br>
&gt;<br>
&gt; The flows are probably not lasting long because the downloads are spli=
t<br>
&gt; into chunks, which according to my logs are at most 1 MB. Patches seem=
<br>
&gt; to work differently, those can be much larger (logs shows the largest<=
br>
&gt; one the past months was 137 MB, depends on the game I assume).<br>
&gt;<br>
&gt; --<br>
&gt; Best Regards,<br>
&gt; Nils<br>
&gt;<br>
<br>
<br>
-- <br>
&quot;For a successful technology, reality must take precedence over public=
<br>
relations, for Mother Nature cannot be fooled&quot; - Richard Feynman<br>
<br>
dave@taht.net &lt;Dave T=E4ht&gt; CTO, TekLibre, LLC Tel: 1-831-435-0729<br=
>
</div>
</span></font>
</body>
</html>

--_000_194ad8c5177a4f06aca1c879097647c5telenorno_--

--===============6830450696681071384==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6830450696681071384==--
