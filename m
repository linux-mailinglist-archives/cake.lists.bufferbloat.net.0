Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BD61C1E1B
	for <lists+cake@lfdr.de>; Fri,  1 May 2020 21:55:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3CA063CB48;
	Fri,  1 May 2020 15:55:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588362909;
	bh=YiavpCD8sVqlxy0HRffOPj5lDjfsIZX+7EDX8u5UZpk=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EgYeO5NZeah6qguPLxgsRuaPoiUS0FN7/kqPyqOHNyvXX7LQ8QzdxJ4yUv7tgmtlQ
	 FqehY+r0z8OOWNeUwEzeAip8Xe8aIR7XKs5/yEHzWdYszC9Fx0vmSqC3lVyS9oa4oF
	 SAT2w1EbdnkJzBwje6pDmEL9pOlgjG6DQ2Y4hGi05NS70vTBMfSw1Bnt1x8FAYoxNZ
	 39CGoauxaSxssMaW9IrtV3LyLgqTBaZ0yYCeXRGIz/EHTxPEzc2fEcyQ07i2mm7PlL
	 LbQQj4omOOErVZKex0x3VqRT+LOjIL+ErjyrQL7PJdkB0b4ClC3kc8M4x6gwQVe5Rk
	 Lh3JsNGYOwhuw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D9E413CB35;
 Fri,  1 May 2020 15:55:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588362900;
 bh=2Qide+dV8PfAd/aTAIy9+y1ODRJ+yHDdmoSL41v4vOM=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=L90TWIq3bYBESFewfkIm2Q3j2a+1glidnXBERkdwuz48qpBNisKFJ50mtijbNNUrE
 N2UAdhr9/EYmBtsaCsdJpvIcRcsfgzFnyKsTZ94EmYlor4bKhGYmRkk1a3nH1/ydgC
 Oh5JxFbgyDTrr5t3vPTDbIBYO7eY1axSuyJ3xBlg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.222] ([77.10.170.135]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N0oG5-1jGdEH1w3x-00wlGn; Fri, 01
 May 2020 21:55:00 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <532BA44C865386E73EE9DF59@[172.27.17.193]>
Date: Fri, 1 May 2020 21:54:59 +0200
Message-Id: <A036B8EC-E3CE-4439-934F-2211E65275FC@gmx.de>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <532BA44C865386E73EE9DF59@[172.27.17.193]>
To: Kenneth Porter <shiva@sewingwitch.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-Provags-ID: V03:K1:wlGkNriBLT09mhGtWunYHUoU31Xvaiu/jSitmPhoNm21c3QGb03
 MBs4NQjwNHLXBfZcWUHuthnl5zMjMhNMkvm8l5mjCWcFJsbTqyRnjEFAB51W7qx8R/ErqIs
 DDxjF07RTphGBFHMRNWvBs0FXITpbUL9NuMfe0ZEyv81nkXbCGNWvry7BJHnKfta7UKE3Rb
 +NNSKOmiYbB96F9jRCqUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T4T2lFz3unw=:BGwDiMvK45vG6cxDMFFiPT
 Qu56Urt+ySHGtO69KURMEEWWRiP/ZTtVZQNYw6o6an3bPE+XeoXWglSRFOctZPx8e6t9AhXdY
 /k+VEjgdAoWUWp2Gj8rQp9XtfEz8wemGzquKAjXZm9Euyb/wWmjACOt4ZcZbr/clQxfj0u2nM
 5OnAuYBBoj8lORTeC0LzJgMyaLHUHXr98/BJIIMVwt9EjAy1XYcYnUxHy+6WoOMp6+F0D/Dqh
 kHdSmL8lD5jFRxtIWGwbi2jGXesLGNiaousTDety3nxok/AvR7z+SMKIqvIPbSBait/ImgGqc
 V422rc3qUQxA295A1tkXEYX0aA8a0WwFQ7NEDpy88kWmr59FcSzsfKjP6zYLKiOdbpNITUa3d
 1j0AUpQebS6OZ4lopVc2BacQ9QpFcf4LSb7pCd8GV8d2UQrrPCZMJE8iCY2iowtkELa+JcxX3
 pTxBAFdpSXmwEQ04fdx3Mezeygc/fQZ3nZ7FXkgOqXcnUf2s4Gm+aLpIC31p2tZ/YGqmRK270
 OtjQl+fsVOI3p9TGwzi2XpINwBTmZGq2RbxSBqAgEcv1DkRQcd6A26zc6/Mb5S2g2sOwISmi1
 +F+hm6Yj4NQcdrANj1efeRvwZeujhlyhRUuLevjqbjSJZiKnsRE0dBNXcm/T87xDK2sPAKMUY
 gEnE4dQVzH74BdjL/x5yXiv71B726sY5kK33Kyg3RutyZvVjLFlNZSFojYI6vg8Bmd5rXJpM+
 B6dDJEwyeZqlAnOWAMfXNGOnQ8NkNC3ZH2HAtYlY1uB84tXqdRPG9RA99fjRgpfr4i7LHYhNS
 ZYWn/Recc+1ExUL1WK9MjsFK7wii686DgbrSi2L0ZyaneBtxxu+iGjUIcOWsVH0eSVj/9Q4YP
 T+IHcyXrK9lOrk8/Rjq4xUeVwU4iFYO+BA4FuV8+wToIC0MiqTPuMqAISYjmpfPcC07fpXajZ
 UqyiaKlEU9GuTWtkhTyWVTXF+ka8U3JI8QzuF3n+LmB4WBjcLFo3tQrRnDdYKgnZqjQpbT787
 EyDdrCf5JnwlAhZbkOb4bWr+Tb0DR8NZPA3bjs10QLnaySlb5TQ4r8XATuFtmjyTwBI4ypmej
 xf11hj+Ge6TpDDr5tJ7Ju2FI6Gh4tA9lgQAk5g9kj9gZqunyf/4+PJx+UAumD73CS+H1z2WSD
 vIpXDqyv0X+t+gDTkYFB1jtX2Pt2TL+72vbpqKD41tVLoyku58PEsf8g+aXLq5A4jDP/sTgZ1
 cRomynDMwjO9dFeKG
Subject: Re: [Cake] [Bloat] dslreports is no longer free
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgS2VubmV0aCwKClJ1biBuZXRwZXJmICYgaXJ0dCBhbmQgdGhlbiB1c2UgZmxlbnQvbmV0cGVy
Zi9pcnR0ICh3d3cuZmxlbnQub3JnKSBhcyBtZWFzdXJlbWVudCB0b29scy4gWW91IHdpbGwgZ2V0
IGhpZ2ggcXVhbGl0eSBidWZmZXJibG9hdCBtZWFzdXJlbWVudHMgZm9yIGxpdHRsZSBlZmZvcnQu
CgpCZXN0IFJlZ2FyZHMKCVNlYmFzdGlhbgoKCgo+IE9uIE1heSAxLCAyMDIwLCBhdCAyMTozNCwg
S2VubmV0aCBQb3J0ZXIgPHNoaXZhQHNld2luZ3dpdGNoLmNvbT4gd3JvdGU6Cj4gCj4gLS1PbiBG
cmlkYXksIE1heSAwMSwgMjAyMCAxMDo0NCBBTSAtMDcwMCBEYXZlIFRhaHQgPGRhdmUudGFodEBn
bWFpbC5jb20+IHdyb3RlOgo+IAo+PiBodHRwczovL3d3dy5yZWRkaXQuY29tL3IvSG9tZU5ldHdv
cmtpbmcvY29tbWVudHMvZ2JkNmcwL2RzbF9yZXBvcnRzX3NwZWVkCj4+IF90ZXN0X25vX2xvbmdl
cl9mcmVlLwo+PiAKPj4gVGhleSByYW4gb3V0IG9mIGJhbmR3aWR0aC4KPj4gCj4+IE1lc3NhZ2Ug
dG8gdXNlcnMgaGVyZToKPj4gCj4+IGh0dHA6Ly93d3cuZHNscmVwb3J0cy5jb20vc3BlZWR0ZXN0
Cj4gCj4gSXMgdGhlcmUgYW4gb3BlbiBzb3VyY2Ugc3BlZWR0ZXN0IG9mIGNvbXBhcmFibGUgcXVh
bGl0eSBhbmQgdXNhYmlsaXR5PyBJIGNvdWxkIHJ1biBvbmUgb24gbXkgTGlub2RlIGZvciBmcmll
bmRzIGFuZCBmYW1pbHkuCj4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbG9hdCBtYWlsaW5nIGxpc3QKPiBCbG9hdEBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9h
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
