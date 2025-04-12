Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5C3A86CBB
	for <lists+cake@lfdr.de>; Sat, 12 Apr 2025 13:17:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6AFF03CB4E;
	Sat, 12 Apr 2025 07:17:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1744456650;
	bh=YfJlrDfG12PA8o2ZIRyawbmAokWnq8ZLZepR42dBua4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=VspcSInTFu9AxXSCrMkCLuRKte+SPBLorT/k3jwVKXmYRlNPkHbgSL+IbRuI+CfCZ
	 9xlfm6NukzHxwTTQQ1yXHF94Ukrkw1JxYdjoOcTojQwkVT5POA3J5m85ldmVV4azTu
	 uUXAzaCfNH7tSZtWdw/X3Vpou9EFGFY0Fbm/husVODvLqTchQjK1xuEIIRXS8ML4/K
	 lC366DB0xQ9sYXH1G8Tj+lb+CFDV5A66etHb/EXiuoqSrrO0V0e5Nj+ByQ7+H6lHfJ
	 LzO4furUp5qEbY5xwzTg3WDUCaQLkhYK4jmFCCMQYdfQ5ycOfgcTUEG51rX7rdHIeh
	 bud57/XtK93/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 60C8E3B29E;
 Sat, 12 Apr 2025 07:17:29 -0400 (EDT)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-30332dfc820so3215352a91.2; 
 Sat, 12 Apr 2025 04:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744456648; x=1745061448; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7voe6owYqSZO3XF5YihD/9I93QrT6QxFERHXlM4/m68=;
 b=Gl1XG3fgQwDZCXTQlFT6ot2HkFXTxuL6hDxNRNjmIIw9XYN19bxX8JRng/Wr1GNO3Q
 U4aurnjRGy8hL/K268M03w4zJPEN4BzQgKaHW3V0nxkjJJ7o8hzBbzKZ2R7HXOow1WRZ
 w3sbTYiy8hH6t3fNVUwMCqozeRRBHXwmodCQq0mggDzpQQPlVLFRHNmLS5NYyXeBNTWe
 awyBFDDMgOd6S8BL5JHU9M0/xpsn+oZcVIBS1Lv6WI6t9J87KJY2c9PDi+gSEpw8RkzP
 SPdK7Jg15wJGecoRfq2JjcCxrv9ApvkD1mny4PSWvMlymKDny0UKeeT37Dk2GpbTTGP9
 5vDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744456648; x=1745061448;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7voe6owYqSZO3XF5YihD/9I93QrT6QxFERHXlM4/m68=;
 b=saRmsTmjV6sj5+H7/2FfANyQYnhkOgUBp24p3T67AYKd/7wVjMOkA35C9WGgHwkAIk
 ier8HSHj56mxEZ78t2OLCnAwgUrksjuS1OIxn3GX4tCia2QuSUbMwIfDgZw3HrLw8BFh
 UXgbb0rJeaVdFRe+G2BbAy10k2WNlbMWEsC3i+mmCWHrHo/K8g0R7P+CJZzIbh2qDgAA
 geFZOwSLiylZBnspZ78mr5fALLf9SB17ZKeKKh8rkUiHEE6t+7tPuQDGzu05DqMsj3Dm
 Ap+Z9KpU/kTWP2baw3qRBJ10un6pG2U2u5MYRexsxAmgwvxRqmJHtwcJ/QUFyLNC9Nsx
 WwKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUz4cXN+Q18drpkJqZQimkIa/53pYJ8ULt/zDBxM73mxJlFEBtuFZ4nNPoB1cXnDWfA1+hOFOA=@lists.bufferbloat.net,
 AJvYcCVNP0Gw/Boga+DBnazzVpb27feRWeh2hTrFA6dqhRLNM7lm1fA15LLdsJG8RAkNkgAzvxaVzCo=@lists.bufferbloat.net,
 AJvYcCVbZHdi9WBnANsEMdQIStV4rxZQxyso6H3IEvkq46cGYbXHlq06UEB82w0/VhGYDt9C04zmJLQssE5I@lists.bufferbloat.net,
 AJvYcCVerrWMYVJe59wP0hsTzuYoiJ2/RgGfqoDG0wsTKLD1/MwTiJaud+w8kesQdCqljuJzDLDkb1ii19vVDDCRThw=@lists.bufferbloat.net,
 AJvYcCVlOYaJ1t0cBiWOd9vFE0FdHdiHW2sxKd+6bo7eE9vRnMaZHX9/uUrVHX4auWcSO1bZducXN4+sDaSIJCWUtg==@lists.bufferbloat.net,
 AJvYcCW2pZNJnajZ+qE8H19kujwrC8+x0DIvLn+XXIEJmd1k841DRSY6/9ShKDtO8KRSL5CIYtxrkvRpV4XGICZZPQ==@lists.bufferbloat.net,
 AJvYcCWnZoo9HWGPZYBVg9Z3xnr2Aov9+hEoxycfLWwoF1EhM7SfYCxzNvDaN6AOOZUwgL+cMlyt@lists.bufferbloat.net,
 AJvYcCWw/I0gqWewGdqVdlasRnPXeYzXSg8KoBDLHjQHNieYfOSQ/Fa1qPuzSLi9TOFj7GKe6uzJ+wHLqg==@lists.bufferbloat.net,
 AJvYcCXHU6wQQBo67L3yf7AgjFUgNJcByfiT+7v3YqyVZh1kEJH1YeXG1z73ngA/Ke8AF5IbwdQq2ZTKJ+Y=@lists.bufferbloat.net,
 AJvYcCXSywEtp7+DLmr1JfsXvNKJSG6Mp6kc9aUp1MOSkhUclYRuXnzmf4hLa28Yi8F6FyAZFlJ8Bg==@lists.bufferbloat.net,
 AJvYcCXV/RXRG+eeiWAbmHCQkY9JyS+nDndtwckGxBi+44Ow8kwwomlZ/mQ5IJ6m5CACqRMztsvAAXjV4As=@lists.bufferbloat.net,
 AJvYcCXYqwX04DKRWCQFgBkbNr1tOhRiDhKZWd5YrOeN45+qZkLgicYTSFEfLIePhWdNUnS4gt0Qs4d11JQoJUueMlk=@lists.bufferbloat.net,
 AJvYcCXtfRy5wOowDkOwr0QVNoLz5iCuvzeIcqmki2YCfLZYDmSSjyD6iUDtSvHxzsPZIvYn39uNLNIEWj98qoUhxbw0@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzokiB3JARdLIZF19JMoHq8rrkU0jjH2M8/Pv6+6yW+aUAl/rws
 4xlVIXGP1nHCvbZ6apnqOHLx5nd2p1Vp2q76dHBAStDhkdfB6sMSq7fLU99iKOhnDAPvNDGkFJE
 Z3LqNVkC1zAK3jXlwLxU0JtCk9c+w7gdt
X-Gm-Gg: ASbGncuQ4oNhm2PY9qEzrJWyzHlV1yG68zyvlGGu134rr2vOfRoj6oePXuIrE3dPPNu
 3iX7vRgVKWJ5viJ0J9ro0xzfJPPDKtU1vgldmAFMhea1Iq7H1JvDjpJtg+0xBdv/i1MeZD1z4GQ
 zwVSSxwjm9GlGzTLq3QNAoMWLYFMx0ZbduIrdz48D6I7pkL6Wl4dxdjS5z0z1z0TYoNw==
X-Google-Smtp-Source: AGHT+IGwoja96e31Iq4V3ayzpnatitXbXXiHTM1RirmdkuSoOq4BxJB0PpP9Q2Y4pY7jW6BG6Dw01bALAPUEPRsTtTo=
X-Received: by 2002:a17:90a:d44d:b0:2fe:a614:5cf7 with SMTP id
 98e67ed59e1d1-308236244f3mr8832835a91.3.1744456648289; Sat, 12 Apr 2025
 04:17:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
In-Reply-To: <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
Date: Sat, 12 Apr 2025 15:17:15 +0400
X-Gm-Features: ATxdqUHZ7Hr7dd42jjXuJh_T68nAv7eMNwGN0ftfglQdQzO47mI1yVftVf0P2Ww
Message-ID: <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
To: Vint Cerf <vint@google.com>
Subject: Re: [Cake]
	=?utf-8?q?=5BMake-wifi-fast=5D__=5BBloat=5D_In_loving_memo?=
	=?utf-8?q?ry_of_Dave_T=C3=A4ht_=3C3?=
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
From: Loganaden Velvindron via Cake <cake@lists.bufferbloat.net>
Reply-To: Loganaden Velvindron <loganaden@gmail.com>
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGVmaW5pdGVseSA6LSkKCk9uIFNhdCwgMTIgQXByIDIwMjUgYXQgMTU6MTIsIFZpbnQgQ2VyZiA8
dmludEBnb29nbGUuY29tPiB3cm90ZToKPgo+IEhlIHdvdWxkIGJlIGEgZ29vZCBjYW5kaWRhdGUg
Zm9yIHRoZSBQb3N0ZWwgQXdhcmQsIGRvbid0IHlvdSB0aGluaz8KPiB2Cj4KPgo+IE9uIFNhdCwg
QXByIDEyLCAyMDI1IGF0IDU6NDXigK9BTSBMb2dhbmFkZW4gVmVsdmluZHJvbiA8bG9nYW5hZGVu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+ID4KPj4gPiAyKSBJIHdhcyB0aGlua2luZyBhYm91dCBo
b3cgd2UgY291bGQgZ2V0IERhdmUgcmVjb2duaXplZCBmb3IgaGlzIGNvbnRyaWJ1dGlvbnMuIExp
a2Ugb3RoZXIgdW5zdW5nIGhlcm9lcywgRGF2ZSBkaWRuJ3Qgd29yayBmb3IgQkJOIG9yIHNvbWUg
b3RoZXIgbW9uZXllZCBlbnRpdHkgd2hvIHdvdWxkIGNvbW1pc3Npb24gYSBib29rIG9yIGEgbWVt
b3JpYWwuIChCQk4gcGFpZCBLYXRpZSBIYWZuZXIgdG8gd3JpdGUgdGhlIHRleHQgdGhhdCBsYXRl
ciB0dXJuZWQgaW50byBoZXIgYm9vayAiV2hlbiBXaXphcmRzIFN0YXkgVXAgTGF0ZSIsIHdoaWNo
IG9kZGx5IG9ubHkgdGFsa2VkIGFib3V0IHRoZSBBUlBBTkVUL0ludGVybmV0IHBpb25lZXJzIHdo
byB3b3JrZWQgZm9yIEJCTiwgb21pdHRpbmcgbWFueSBvZiBteSBJbnRlcm5ldCBjb2xsZWFndWVz
LikgIERhdmUgd2Fzbid0IHRoZSBraW5kIG9mIGd1eSB0aGF0IGdldHMgQXdhcmRzIGZyb20gdGhl
IENvbXB1dGVyIEhpc3RvcnkgTXVzZXVtIG9yIHRoZSBBQ00gb3IgSUVFRS4gSGUgd2Fzbid0IGJl
bG92ZWQgYXQgSUVURiBvciBJU09DIHRoYXQgSSBrbm93IG9mLiBIZSdzIGluIHRoZSBjYXRlZ29y
eSBvZiBmb2xrcyBsaWtlIE5vZWwgQ2hpYXBwYSBvciBCcmFtIENvaGVuIG9yIFJpY2hhcmQgU3Rh
bGxtYW4gb3IgQWFyb24gU3dhcnR6IC0gcGVvcGxlIEkgdGhpbmsgcmVhbGx5IGNoYW5nZWQgdGhl
IHdheSB3ZSB0aGluayBhYm91dCBjb21wdXRpbmcgYW5kIGludGVybmV0d29ya2luZywgYnV0IHdo
byB3b24ndCBiZSBpbiB0aGUgb2ZmaWNpYWwgaGlzdG9yaWVzLgo+Pgo+PiBIZSBkaWQgbm90IGZp
dCBpbiBhIHR5cGljYWwgY29ycG9yYXRlIGN1bHR1cmUgZXNwZWNpYWxseSBpbiBoaXMgbGF0ZXIK
Pj4geWVhcnMuIEhlIGdvdCBhIGNlcnRhaW4gYW1vdW50IG9mIHJlc3BlY3QgYXQgdGhlCj4+IElF
VEYuCj4KPgo+Cj4gLS0KPiBQbGVhc2Ugc2VuZCBhbnkgcG9zdGFsL292ZXJuaWdodCBkZWxpdmVy
aWVzIHRvOgo+IFZpbnQgQ2VyZgo+IEdvb2dsZSwgTExDCj4gMTkwMCBSZXN0b24gTWV0cm8gUGxh
emEsIDE2dGggRmxvb3IKPiBSZXN0b24sIFZBIDIwMTkwCj4gKzEgKDU3MSkgMjEzIDEzNDYKPgo+
Cj4gdW50aWwgZnVydGhlciBub3RpY2UKPgo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
