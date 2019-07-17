Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C9C6BCD7
	for <lists+cake@lfdr.de>; Wed, 17 Jul 2019 15:17:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A3B123CB41;
	Wed, 17 Jul 2019 09:17:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1563369466;
	bh=oxwbq5lFQ72vsfbLCeBqmTGvybwl8Wc6TYUWIloTl0Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QhZOZ58+69eL+ITv4WiOLhsCRQ785jgCg8f55D1OfNUTpdkRCVCceIKTw7tDcPiJ5
	 GFi9p7KK8Pb4n35/QHXLVQn3rzoClm+xq7kRrf7x53fUrzB6ihUgeIvjgZguzQb6zX
	 NJCs6q/lVoOn13sF1UKglS4JRX6floHLrk7h26KcO5Z5Rbua0PvMJjJNCigbZiWmBk
	 okjE1aKLRZwNZE4U0tMZy64/yuGafIsPtFXoLwLTqQgZMX1MWDJXNDKsLZTbNT8vfq
	 vKM5aOTRcuWsYPySQc2Xv48mQMWYpd1iqTQMvsS4q+DU7QJS9iHsFVZlGeZOnBWnAO
	 vZv7xs5K23c5Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B462D3CB35;
 Wed, 17 Jul 2019 09:17:45 -0400 (EDT)
Received: by mail-ot1-x32b.google.com with SMTP id d17so24988244oth.5;
 Wed, 17 Jul 2019 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Q1vvhC+u3Df/zRZV9zTbRcKY5lspETyylJ9GR9XKMk=;
 b=aTepArMtqDXYinGESUo6vSG+nGt3IarQf0DtTLsCQpT+A7axO44KYsv+g66Di2uOy/
 ynvGbhyKjU0yOfXcjPj2klHXG0r2kTSikdR5rUVJk1c1ZE77pmtCYt1yWsTbzmBC+xvB
 WvfM3na4uYcmK1B0YBhBQShjjO+7sjBNg1t4J5wI4Rmz/cItLR2j+Dqbdf6mnb5HCpKe
 iEf4MrpjABYCwop/NmvV/5FKSNwhXKoOEIUEPnkIVqBySXyN009TTXM2wjYGcEsX4sEe
 aRMBbZ4xQy1+btuW3BPITi02vj825FVjbmxCQCRnzwXfn3WazgeTbJU+OynCjll/IjDH
 ih3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Q1vvhC+u3Df/zRZV9zTbRcKY5lspETyylJ9GR9XKMk=;
 b=kOnkmZZIt26hOpmpAV3X4ZtylanT0ubdKmcKqkRhswP6eu3Y18/TrGsNKAkg2cwe5U
 csl6KcQLZzQjfctG+VFegKrMVY90HEPypZdMmyRgjx3bdIKrvieOPBgeuZH9z2OnEV4N
 xvZWKUTFgS5Sigeeh5yMN3NniOndAv4R98ZodlJNFY8zrxHoeCfEjwbJqsde0em6MDx1
 MIKTQmGhqagcb7rSdEGLZ2LPaCbjkbv/Eay+UGqqE80R5ryxyucifCPsWbQgzka9bPRK
 CRnkUW52tO3TyT8FsHhk79GT8YDbrIYc4zM75KLKeruNKpI9m0UCx4K8pfv2Gk8N6c9M
 gGWg==
X-Gm-Message-State: APjAAAVi8BfPn9QD+WDG/nHJHvffWhoyFG2IQ+6oxkAqN9+AMNXsYTSb
 q6iNK6RbJ0hbDbUWr/66IaTtcnFDZEviKrzxedk=
X-Google-Smtp-Source: APXvYqxPH8ZZJADsgBULsdSFA1y4ZKXVlBokEfsqxgZ0OIVYQ5t0ZCyTHKQfmxKXMlU4DgIlhv+MCXMD9ibrYRb+B3I=
X-Received: by 2002:a05:6830:1aeb:: with SMTP id
 c11mr31202119otd.230.1563369464914; 
 Wed, 17 Jul 2019 06:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7yn2B6LfUP_Q_5cqqJfxMH0T3hSZiH4VMUYg=qSE33_A@mail.gmail.com>
In-Reply-To: <CAA93jw7yn2B6LfUP_Q_5cqqJfxMH0T3hSZiH4VMUYg=qSE33_A@mail.gmail.com>
From: Luca Muscariello <luca.muscariello@gmail.com>
Date: Wed, 17 Jul 2019 15:17:34 +0200
Message-ID: <CAHx=1M6h3prz01FeysB5t+rxeLPn8QGs189A4s8y6qDOBr6TEQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Ecn-sane] three new internet drafts regarding SCE
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4072037640550751524=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4072037640550751524==
Content-Type: multipart/alternative; boundary="0000000000009be549058de0515c"

--0000000000009be549058de0515c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Remote attendance is free of charge but you have to register to be able to
access.

https://www.ietf.org/registration/ietf105/remotereg.py



On Wed, Jul 17, 2019 at 3:13 PM Dave Taht <dave.taht@gmail.com> wrote:

> IETF 105 runs from July 20-27th in Montreal.
>
> https://datatracker.ietf.org/meeting/105/agenda/
>
> tsvwg meets thursday morning 10-12, and friday 12:20-
>
> Remote attendance via videconferencing tools is straightforward. There
> are of course dozens of other wg meetings of possible interest, in my
> case, I'm still tracking babel's progress through the ietf, in
> particular, and I always try to
> check in on iccrg, also in case anything interesting comes up.
>
> Since not all members of our mailing lists are on the relevant tsvwg
> or tcpmwg  mailing lists, here are some drafts
> from those working on the SCE front (I'm not, but I do read things)
> for aqm and transport enhancements.
>
> https://tools.ietf.org/html/draft-grimes-tcpmwg-tcpsce-00
>
> https://tools.ietf.org/html/draft-morton-tsvwg-sce-00
>
> https://tools.ietf.org/html/draft-heist-tsvwg-sce-one-and-two-flow-tests-=
00
>
> I would have liked it if the the actual scripts, & flent data files
> were published and referenced in this last draft. (I think the
> pictures were published on some other email thread (?), and I look
> forward to the slides) My own
> (eventual) contribution to this work might be on the wifi front, but
> neither l4s or sce are baked enough yet to bother trying,
> IMHO. My analysis of the battlemesh fq_codel + ecn over wifi data I
> hope to finish this week, but I'll find an other outlet for
> publication. (smallest subset of observations is that we can reduce
> the codel target to 6ms on wifi networks that have powersave disabled,
> and that serious 802.11e queue use still massively sucks. details to
> come later)
>
> There are many, many, many other drafts in progress in tsvwg, of note
> might be:
>
> https://tools.ietf.org/id/draft-white-tsvwg-lld-00.txt
>
> https://tools.ietf.org/id/draft-white-tsvwg-nqb-02.txt
>
> In addition to the perpetually revised l4s related ones.
>
>
>
> --
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-205-9740
> _______________________________________________
> Ecn-sane mailing list
> Ecn-sane@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/ecn-sane
>

--0000000000009be549058de0515c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Remote attendance is free of charge but y=
ou have to register to be able to access.<div><br></div><div><a href=3D"htt=
ps://www.ietf.org/registration/ietf105/remotereg.py">https://www.ietf.org/r=
egistration/ietf105/remotereg.py</a><br></div><div><br></div><div><br></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jul 17, 2019 at 3:13 PM Dave Taht &lt;<a href=3D"mailto:dave=
.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x">IETF 105 runs from July 20-27th in Montreal.<br>
<br>
<a href=3D"https://datatracker.ietf.org/meeting/105/agenda/" rel=3D"norefer=
rer" target=3D"_blank">https://datatracker.ietf.org/meeting/105/agenda/</a>=
<br>
<br>
tsvwg meets thursday morning 10-12, and friday 12:20-<br>
<br>
Remote attendance via videconferencing tools is straightforward. There<br>
are of course dozens of other wg meetings of possible interest, in my<br>
case, I&#39;m still tracking babel&#39;s progress through the ietf, in<br>
particular, and I always try to<br>
check in on iccrg, also in case anything interesting comes up.<br>
<br>
Since not all members of our mailing lists are on the relevant tsvwg<br>
or tcpmwg=C2=A0 mailing lists, here are some drafts<br>
from those working on the SCE front (I&#39;m not, but I do read things)<br>
for aqm and transport enhancements.<br>
<br>
<a href=3D"https://tools.ietf.org/html/draft-grimes-tcpmwg-tcpsce-00" rel=
=3D"noreferrer" target=3D"_blank">https://tools.ietf.org/html/draft-grimes-=
tcpmwg-tcpsce-00</a><br>
<br>
<a href=3D"https://tools.ietf.org/html/draft-morton-tsvwg-sce-00" rel=3D"no=
referrer" target=3D"_blank">https://tools.ietf.org/html/draft-morton-tsvwg-=
sce-00</a><br>
<br>
<a href=3D"https://tools.ietf.org/html/draft-heist-tsvwg-sce-one-and-two-fl=
ow-tests-00" rel=3D"noreferrer" target=3D"_blank">https://tools.ietf.org/ht=
ml/draft-heist-tsvwg-sce-one-and-two-flow-tests-00</a><br>
<br>
I would have liked it if the the actual scripts, &amp; flent data files<br>
were published and referenced in this last draft. (I think the<br>
pictures were published on some other email thread (?), and I look<br>
forward to the slides) My own<br>
(eventual) contribution to this work might be on the wifi front, but<br>
neither l4s or sce are baked enough yet to bother trying,<br>
IMHO. My analysis of the battlemesh fq_codel + ecn over wifi data I<br>
hope to finish this week, but I&#39;ll find an other outlet for<br>
publication. (smallest subset of observations is that we can reduce<br>
the codel target to 6ms on wifi networks that have powersave disabled,<br>
and that serious 802.11e queue use still massively sucks. details to<br>
come later)<br>
<br>
There are many, many, many other drafts in progress in tsvwg, of note might=
 be:<br>
<br>
<a href=3D"https://tools.ietf.org/id/draft-white-tsvwg-lld-00.txt" rel=3D"n=
oreferrer" target=3D"_blank">https://tools.ietf.org/id/draft-white-tsvwg-ll=
d-00.txt</a><br>
<br>
<a href=3D"https://tools.ietf.org/id/draft-white-tsvwg-nqb-02.txt" rel=3D"n=
oreferrer" target=3D"_blank">https://tools.ietf.org/id/draft-white-tsvwg-nq=
b-02.txt</a><br>
<br>
In addition to the perpetually revised l4s related ones.<br>
<br>
<br>
<br>
-- <br>
<br>
Dave T=C3=A4ht<br>
CTO, TekLibre, LLC<br>
<a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.teklibre.com</a><br>
Tel: 1-831-205-9740<br>
_______________________________________________<br>
Ecn-sane mailing list<br>
<a href=3D"mailto:Ecn-sane@lists.bufferbloat.net" target=3D"_blank">Ecn-san=
e@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/ecn-sane" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/ecn-sane</a><b=
r>
</blockquote></div>

--0000000000009be549058de0515c--

--===============4072037640550751524==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4072037640550751524==--
