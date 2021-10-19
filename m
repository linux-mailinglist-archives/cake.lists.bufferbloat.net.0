Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 39803433728
	for <lists+cake@lfdr.de>; Tue, 19 Oct 2021 15:34:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA90F3CB66;
	Tue, 19 Oct 2021 09:34:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634650496;
	bh=QSjySjwhFvozW0MFQAXMo+f/WPlPHErs1mdy8zk5DMo=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K45Frff7c0D7/fA4U1AFnfKyzAECbH1W2PmN7DQZ8lRH3LKuDzwV/+TuoninDMFQ2
	 0PB/GJsPDoMrtsaXv//VQU/s294pgXQASaawiUb029mdaKPSrM28UsTx+rwLLFIakP
	 vyOEN3KaGcH5Wqd0K9g6J3mOhECaGSVb7EWUBQdhoVq7QhidXZ+8eX+e9vQveaNOhg
	 V+L+xwb/Oou9T78LLBEeS2adVfW674d+3RMIHfBMEwmgP3t6PRKw7cXIHgFB5E2NdE
	 uXfB0UHZQtUJqdbK84vLDy1hG3FnaHM57bRuOiVKT5TnaAoL7uvxypZm9v1ve+iLKb
	 G89beBOWGLmGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F3BD83B29D;
 Tue, 19 Oct 2021 09:34:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634650491;
 bh=XPOG9DyGo5FO9loDrFQvzHTHk80ph2HbQQTbMfyWx8E=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=haiuP1M8guN6FEKZ+611xegaCnn7jpNGY5PJJf4f8f7JiC05R/rhz1wevNwK4ztDA
 +e6gCUPNN5XNg2FNTUhFhwZyh/mBhn69Urh9OkOUNVhhtwwCE0vTr0TBTQALajVIlZ
 z53hTIMNkBiQMjp76xDDSjXnMtJvf9cxVBBVD2fM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.250.101] ([134.76.241.253]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N7zFZ-1mpb2m2VIh-0154Ni; Tue, 19
 Oct 2021 15:34:51 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <CAA93jw7zPCJE13DxB6QzM4eMh+-DkRaX-_XJhzAU5y9b9JbJbg@mail.gmail.com>
Date: Tue, 19 Oct 2021 15:34:49 +0200
Message-Id: <A7E9FA52-E02A-46B8-A518-B47778E23F8C@gmx.de>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
 <878ryqjxke.fsf@toke.dk>
 <CAA93jw52-6oaOgDCS7m8+zF0VDFDEgADat=So7zWPTwNrR988w@mail.gmail.com>
 <87tuhdgt35.fsf@toke.dk>
 <CAA93jw7zPCJE13DxB6QzM4eMh+-DkRaX-_XJhzAU5y9b9JbJbg@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Provags-ID: V03:K1:IwOJC86d3k1vIPd1JDECbEFRZa8Aeie8P6d+q9AqsfSCxU+Cy6s
 STSZlzKtymUf+VPiL9O2z9uZzbm2J7m9iJHuhlVml7W3Ub2E3ryAywNaMrWVo0r49IzkbxS
 PsZjn/0Ee73F3IkSCo3evfO7EIIiizeXDzSYPX0V8fHkluFgrFkAXgnDLsX5hQw+WutTZ6J
 gn8xP2V8jK48wCEK9RyBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qlS0NZat2fg=:OIdq1FtqpH4VDfdIL5W1qd
 K22yZQ2oCPTVULCoX+R8ulhgp5wpJXv11XWjXSnhcZE9Lga1htCSTrH+UhwbEdvskUgZ7pZNj
 4PzwtpV5Qz8Z/u7iRXrdpocMtI+gKIeS7+IwI1o38sKACYnh6DTU81dsilaqnKnwlJof7E6UM
 c2hQV2jMRyN8Qk19PqR/Hyj2j97HLHUwiooYs253GvergGNtRCHFf2cOgwYcKmZz5g46ZvhKY
 YyWS7vbJFY5RI+zd00SUMEYSIXt+HdS3urnktmeHNf6uZC75ShWNgC1DBJYvbH58bRMPW32n9
 9GSQDet952h+3x3trOLMNWQy9XL2XtBG97jWNe3YuBrsOlT+f9vcUd8MfJEkLn7CNIbuV92To
 SCG/Os+lvdO5vlaEiQUpzVCYjHGAfs9/NATXkP3hQ6jqNFvfR00Jblu4+lQDOzVZGbGkNvNF8
 kv2pZrfbAs+/7F16ezEOh2uFfDIRmC6QOqqysXIBKdMA+YbWekqCCczSVIS6tsgK8LdbsOLI4
 y0B2ie9oOpZpPM3GIF4R/dN4Ie78cLmZes5JLVZ/nkwOMRkk/3rCicNuAj4TYI+exRZ/oJIRo
 57oIoeY5yXVY906/z7ihHUqlH0IX2tKKR0vvbi9lVjJUAbbOmGQCYhu5GzlFpiW5HiXvy3NDF
 ldh4QR32v2XMie7pe1vzPvOBmavfopj/jP/T1GjPT+xtuS4rWaMyzNtdz4jWzJOtaWKfM1MCV
 UqunFKgF1JUVrI0g+Zkq7wCsRKQHj1ZrTQOjDJjEvWHfM67azWsj7eYVcfbOcafduj3FSgKjs
 nLEzAwLcI6LZCMkz2VoFZbl1D9BvrivXEvY7HmHAKr7dGwRC3uIBZ0FmGvvZ18eY1KENEXIdl
 BVNY+6AnkBlBtfb8N2oDtMpjtZCxFRFISYw+OC/TeKwKQ3ZQui7hHZtVWIBxFVZBloxKGkrW1
 riFcXvyDVAV9NluLm0tYvyW8NG6MjVNrv0auxmt8D50DkZw+dBV+/axq0zY7UNMHUmxy+wIa8
 a9wtcvvbMcwyq8LYKzkJ4UQzyxQi+IkqPJUF8zoGav2wPRANgtxMhkSRB2YbOt8XJDKCIIgyq
 vhW9LDbbbva76A=
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U28gdGhhdCBzdGlsbCBsZWF2ZXMgdXMgd2l0aCBHU08gaW50cm9kdWNpbmcgQ0UgInNwaWtlcyIg
aW50byB0aGUgbmV0d29yaywgdGhhdCBtaWdodCBub3QgbmVjZXNzYXJpbHkgcmVmbGVjdCB3aGF0
IHdvdWxkIGhhcHBlbmVkIGlmIHRoZSBtZXRhLXBhY2tldCBoYWQgYmVlbiBzZWdtZW50ZWQgYmVm
b3JlLi4uLiBJIG5vdGUgdGhhdCByZmMzMTY4IHByb2JhYmx5IHdpbGwgbm90IGNhcmUsIHNpbmNl
IGl0IHdpbGwgc2lnbmFsIGEgQ0UgbWFyayBmb3IgPj0gYSBmdWxsIFJUVCBhbnl3YXksIGJ1dCBI
RkNDcyB3aWxsIGNhcmUuIAoKUmVnYXJkcwoJU2ViYXN0aWFuCgoKCj4gT24gT2N0IDE5LCAyMDIx
LCBhdCAxNTozMCwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiAKPiBP
biBUdWUsIE9jdCAxOSwgMjAyMSBhdCA0OjE5IEFNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUB0b2tlLmRrPiB3cm90ZToKPj4gCj4+IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNv
bT4gd3JpdGVzOgo+PiAKPj4+IG15IG1vcmUgc3BlY2lmaWMgcXVlc3Rpb24gd2FzIGdyby4gT24g
Z3JvIGFzc2VtYmx5IGlzIHRoZSBkc2NwL2Vjbgo+Pj4gaGVhZGVyIGV4YW1pbmVkPwo+PiAKPj4g
WWVzLCBhbmQgb25seSBwYWNrZXRzIHdpdGggdGhlIHNhbWUgdmFsdWUgZ2V0IGFnZ3JlZ2F0ZWQ6
Cj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvbmV0L2lw
djYvaXA2X29mZmxvYWQuYyNMMjYzCj4gCj4gR29vZCB0byBrbm93LiBUaHguCj4gCj4+IC1Ub2tl
Cj4gCj4gCj4gCj4gLS0gCj4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3
dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4gCj4gRGF2ZSBUw6RodCBDRU8sIFRl
a0xpYnJlLCBMTEMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
