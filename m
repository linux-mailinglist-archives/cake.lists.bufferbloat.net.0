Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC3278E6F2
	for <lists+cake@lfdr.de>; Thu, 31 Aug 2023 09:06:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5EEAE3CB39;
	Thu, 31 Aug 2023 03:06:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1693465566;
	bh=nfDWRtHurFdb8uqjd0/e9IWdEn1piVNX8Q3Akt2p5GA=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=o9tsHkGbifWLNETpBxN2FUyKvdKT3DXGlsN/s+PEWNEUtH9V0w7RE3MBLa9IRhqMk
	 +dtPmwkNr/xlA4CiqN3Mx7/HGFXAUB2FDkXQGgZ+zhGmdvtwrWHhACYtVuPTIkjqcK
	 sj5Lf68ZXvIWlFt8XGSVxw0FsLe2n+wy/67YyORvwRibAoSJUaEwxG1wMGw1Y7bAS0
	 KFvEv7INGebOePMn8Z0bg6DScX+eG+QsHJp82rLD3QfUOnjAe8uLPQAkrhuOJ9vYUe
	 MyBNYnto4jOmMlxpbXKL8ILkLetE7dZ933vvQUs/jEkOJAJavffH8hOJpZ07txlJis
	 /hW9E5i/NNb6g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 231C53B29E
 for <cake@lists.bufferbloat.net>; Thu, 31 Aug 2023 03:06:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de;
 s=s31663417; t=1693465561; x=1694070361; i=moeller0@gmx.de;
 bh=10rNSmyAVlqDs0YtfgYYGQNKRfEd5/8zUa2LbjI8JKc=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=Hl419QY+F7Cs3CVW3Y138G4h6jvqTTsf8evRhm049OZyeKR0HRfvKuMuicZwLPNEUPL2okn
 wyX2uGwCiKyMM5o5UkkJ0DtN009+YRHTolR63PY9pGWuILTPkRAL0BizYCa/K6jcwGqZdDBe7
 VsMrRkiulUU6NS2/Rm69hUHPS7EI+D4MWefy13LFNI1yf8XC2YfBxvwlRJwa20wCvKedr6n2v
 DLrJ74t8fA2MUyOESKyZy1MCO37qVrOYhNIw9oeKnUSAtMYhuQM1vPBrNpxj6DMzdrpbn9edN
 xLsCIfVclLXOdWretJsKrzzyE6OFSvwIczCDuxt3u+JrYos5BiHg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MLiCo-1qK4rp1ZFQ-00HjMF; Thu, 31
 Aug 2023 09:06:01 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
In-Reply-To: <CAA93jw7gm=gPz+QWj0cUfTKoatgEwph52nFxuVcVZ_Cj0K6HkA@mail.gmail.com>
Date: Thu, 31 Aug 2023 09:06:00 +0200
Message-Id: <183E1F7D-5842-46F9-BD22-C9DD62105715@gmx.de>
References: <CAA93jw7gm=gPz+QWj0cUfTKoatgEwph52nFxuVcVZ_Cj0K6HkA@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-Provags-ID: V03:K1:jZp7Qjv/UPLdvWsxVtf3WOhWufHITcNECPxrjiF+TmcThpGbnYK
 XnuU4v/zLtkWfT873aztRp6h006RccYS3yK6aXieP3le2Z3VFfstPaZMDjipKZPALpafogS
 6LLFXWVF2/WSOW31mGmmN3rwWbRTEW1rQxsUQ0aiKzzBSnFjnCSqfjglqRxBbjAR3eWloLg
 X9xCrIfrbWH5cdpf+ajnw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7A4p3jIKz30=;0YYwIiDFY7z6Ra3apXGAsvmtyk7
 SL7/dGmK79PHADJG/BFL7RcVOKi72E/MVXPqhkjM8N3wwiQYwznSzQeaKwmGSLvp66c/crgNY
 z9yZeCGw4yZx98PuRg+qWW0PxiVJ9G2Qa3rRg8HoyUXb1vnLzQGGXQdS7mlzzcv6MknUInyZb
 i1i+jj+uv1dAijdBv+reTmpCpf+DqAyXun0OmTa+M4nfECLmSu86IQmPNTMn5OlJrWqPqoD1F
 YLa+lAbxx4oIFhxGGhV3572zvdd9GhtQAG5cRx8xo5mnw62LE5lI/EUlHl2wEKanenb0yY8ut
 tfwjfZqI+9jQLDL80tnHPw5w7M4zJflKP+lHKdZIac2wYw6QEQuZmzdD/Oz1hZbpsdg2DU7DI
 4fLRSwZ07MVEKryLZM7eMNNCrRGDXZACeAsavJ84BqQfvv1qvIszeXRG7ZM0bP6ZHiQpSpo01
 x2wpLEJeqBUY/JjaY/Slh/4mVb1XQF+M6Wpzu7kpOvLeu3L5yE0InNskBfQTa6ZsK5gMlXnx3
 zr9D7erouqdkYQcZtSwmPSmvwFIV3E3gpns4GtYyiYzOYToMQCLyQiLztgDfvI9aCZ6zuyk1K
 0rT90lOxcrT1N6zNc+Bnx15DMwKmX7z3HWPFqEugtxF9zGeao37gyDMEIdJm5mavGclTFZUzD
 eaWxOU6MiSr9oX7/AoEFzfI6KZ68KIacx833horsLrGosP42/Zw0NrmW6omU/C5ddyFuD1I8M
 tfbaUhzEQKmnmsfRDl4JsksggpJ/wLz5C2jelegBerxaAX8QzCqTRZvWzkW7C7EuiUZiK9X/v
 s8BmQsZWdhC2Ltawg8E5QpdYPgGb40RccAr2y2Ux/JOC35Q0JsoPmt2Lh+KI9TkHB6qQXE0yC
 ToHOteX+7ZU87RurWvQN4dM/hKvcOyXo4B3gM8cCLXWBEiwZs1/JvI3HyHpSmnAdORah5vdCg
 CIXgE4x6P/gELU6YcPfEcDh4pRg=
Subject: Re: [Cake] Some more cakemq thoughts
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwKCgo+IE9uIEF1ZyAzMSwgMjAyMywgYXQgMDQ6NDksIERhdmUgVGFodCB2aWEgQ2Fr
ZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IEZyb206IGh0dHBzOi8v
ZG9jcy5nb29nbGUuY29tL2RvY3VtZW50L2QvMXRUWUJQZWFSZENPOUFHVEdRQ3BvaXVMT1JRek5f
YkczVEFrRW9sSlBoMjgvZWRpdCNoZWFkaW5nPWguczNxOHB5dTFzODI1Cj4gCj4gLi4uCj4gCj4g
VGhlIGtlcm5lbCBoYXMgb3ZlciAyNTAwIHBsYWNlcyB3aGVyZSBpdCBjYW4gZHJvcCBwYWNrZXRz
LCBtYW55IG9mCj4gd2hpY2ggaGF2ZSBiZWVuIGluc3RydW1lbnRlZCB3aXRoIHRoZSAg4oCcRHJv
cF9yZWFzb27igJ0gZmFjaWxpdHkuIE5vCj4gcWRpc2MgaGFzIGRyb3BfcmVhc29uIGVuY29kZWQg
aW50byBpdCB5ZXQuIChTdWdnZXN0ZWQgbmFtZXM6Cj4gRFJPUF9SRUFTT05fe0NPTkdFU1QsIE9W
RVJGTE9XLCBGTE9PRCwgU1BJS0V9KS4KPiAKPiBRT1MtTUFQIG1pcnJvcmluZyB0aGUgc2FtZSBz
eW50YXggYXMgdGhlIHdpZmkgaW50ZXJmYWNlLCB0aGlzCj4gZXN0YWJsaXNoZXMgYSBkaXJlY3Qg
Y29ycmVzcG9uZGVuY2UgYmV0d2VlbiBjYWtlIOKAnHRpbnPigJ0gYW5kIHRoZQo+IHNldHRpbmdz
IGZvciB0aGUgbGludXggd2lmaSBxb3MtbWFwIGZhY2lsaXR5LgoKCVtTTV0gTm90IGEgYmlnIGZh
biBvZiB0aGUgcW9zX21hcCBzeW50YXgsIGJ1dCBJIGFncmVlIHRoYXQgYmVpbmcgYWJsZSB0byBj
b25maWd1cmUgdGhlIGNha2UgRFNDUC0yLXRpbiBtYXBwaW5nIGZyb20gdGMgc2VlbXMgd29ydGh3
aGlsZSwgYW5kIG5vdCByZWludmVudGluZyB0aGUgd2hlZWwgd2l0aCBhIG5ldyB3YXkgdG8gcmVx
dWVzdCB0aGF0IG1hcHBpbmcgaGFzIG1lcml0cyBhcyB3ZWxsIChwbHVzIG9uZSBjb3VsZCB1c2Ug
dGhlIHNhbWUgc3RyaW5nIGZvciBib3RoIGNha2UgYW5kIFdpRkkpLCBzbyArMS4KCgo+IFZMQU4t
TUFQIFRoaXMgbWFwcyBmcm9tIHZsYW5zIHRvIHRpbnMKCglbU01dIFRoaXMgd2lsbCBJTUhPIHJl
cXVpcmUgdG8gc3dpdGNoIGNha2UgZnJvbSBzb2Z0IHRpbi1lbmZvcmNlbWVudCB0byBzdHJpY3Qg
dGluIGNhcGFjaXR5IHNoYXJlIGVuZm9yY2VtZW50IChhdCBsZWFzdCB1bmRlciBjb21wZXRpdGlv
bikgYXMgb3RoZXJ3aXNlIHRoZSBleHBlY3RlZCBwcmlvcml0aWVzIGFyZSBub3QgZGVsaXZlcmVk
IGFueSBtb3JlLiBCdXQgSSBtaWdodCBtaXN1bmRlcnN0YW5kIGhvdyBjYWtlIGRlYWxzIHdpdGgg
dGluJ3MgZXhjZWVkaW5nIHRoZWlyIHNoYXJlLiBGb3Igbm9ybWFsIG9wZXJhdGlvbiBqdXN0IHRl
bGxpbmcgdXNlcnMsIGRvIG5vdCBwdXQgZ3JlZWR5IHRyYWZmaWMgaW50byBhbnl0aGluZyA+IEJF
IHNlZW1zIE9LLCBidXQgZm9yIFZMQU5zIHRoYXQgd2lsbCBub3QgcmVhbGx5IGZseSBJTUhPLgoK
Cj4gTk9XQVNITlFCIC0gY2FrZSBkZWZhdWx0cyB0byBub3dhc2ggYWxsb3dpbmcgdGhlIHBhc3Nh
Z2Ugb2YgYWxsIGRzY3BzLAo+IHRoZSBhZGRpdGlvbiBvZiB0aGUgTk9XQVNITlFCIHN0YXRlIG1l
YW5zIGl0IHdpbGwgd2FzaCBvdXQgZXZlcnl0aGluZwo+IGV4Y2VwdCBOUUIuCgoJW1NNXSBUaGlz
IGFzc3VtZXMgdGhhdCBOUUIgd2lsbCBhY3R1YWxseSB3b3JrIG92ZXIgdGhlIGV4aXN0aW5nIGlu
dGVybmV0IHJlbGlhYmx5IGVub3VnaCB0byBtYWtlIHBlb3BsZSBzd2l0Y2ggYXdheSBmcm9tIHNh
eSBFRiBvciBWQS4gSSB0aGluayB0aGlzIGlzIHdpc2hmdWwgdGhpbmtpbmcgKGJhY2tlZCBpbiB0
aGUgY2FzZSBvZiB0aGUgTlFCIGJ5IHVuZGVyd2hlbG1pbmcgZW5naW5lZXJpbmcsIGFuZCBleHRl
cm5hbGl6YXRpb24gb2YgY29zdHMpLCB0aGF0IHNhaWQgc3VjaCBhIGZlYXR1cmUgc2VlbXMgcmF0
aGVyIGJlbmlnbi4gUXVlc3Rpb24sIG1hbnkgY2FrZSBrZXl3b3JkcyBjb21lIGluIGEgbmVnYXRl
ZCBmb3JtIGUuZy4gbm8tYWNrLWZpbHRlciwgc28gb25lIHdvdWxkIGV4cGVjdCBOT1dBU0hOUUIg
dG8gYWxzbyBjb21lIGluIHRoZSBmb3JtIFdBU0hOUUIgdG8gb25seSB3YXNoIE5RQj8KClJlZ2Fy
ZHMKCVNlYmFzdGlhbgoKPiAKPiAKPiAtLSAKPiBPY3QgMzA6IGh0dHBzOi8vbmV0ZGV2Y29uZi5p
bmZvLzB4MTcvbmV3cy90aGUtbWFlc3Ryby1hbmQtdGhlLW11c2ljLWJvZi5odG1sCj4gRGF2ZSBU
w6RodCBDU08sIExpYnJlUW9zCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=
