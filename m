Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F9DA2E8C3
	for <lists+cake@lfdr.de>; Mon, 10 Feb 2025 11:11:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 913723CB41;
	Mon, 10 Feb 2025 05:11:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1739182318;
	bh=LQsnb7k79nqrC4tIMe1WI+fnc7zlB/BYltPwSUIhELo=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=g4JViajOfqdp8M3lDRJEv9V8Gcc9Xeot501Hh5Soy9E/6RSsUPbR6jtfo/51CdLrT
	 5BPAfKgYAGIOTK0/LGYTuLazjpc++QhlqDWmHowI3wqi3DmEuGZaQC+TowR/Uqk37H
	 rwsjElQpRpqGRYh3cg6Sf23ucuqHNEZj5iyory1dA2E2zAGJgI65/2ccR+QLZ6u949
	 scLquWuKsayQ06g2X39mdva9la4AMuMGpmvvfPnftZkmtVR3sz0qJWZyRrJxS6VXDM
	 9yVgKNsnYyhAkHW6dTZNLVNaXvHL5OJre1wj9bMZrggnLKpBrL+cZdfT9mW7WRJ6qz
	 kCycOGDUpIYpg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 175F53B29E
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 05:11:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1739182314; x=1739787114; i=moeller0@gmx.de;
 bh=gN+P2wrMHXd4VLOmQIkYBDkUUSZ7qhf8TPdzO6bcN0I=;
 h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
 References:To:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=ADTK8dzfBcxe1SuQ+Tb04E8uE/n79ouFCmiV7jbtOUb2ZW9FH6jeUAJfw5kR1gze
 TNepf9W1DV5rg8F7zLTWzMuBst7E2aLmobvRDeS8YywzWgpdwZ6c5VR550wwvSzKR
 WVDimH3Xgf4fFkeH1kdfOwCGIAh1ZMo6jJyEWccW36TctS21CigThoZqq8LynavJG
 +zV/Y7Vywh7f1gY/AdVP6tHkNVDMpqTww6UTcmpPndoMwutk4NhfCql8Km+hcdPo9
 xMO70f4OQdGq4T7+j1RuE1/c9gpIDuNqNFKqQJOv6psU8zucW3xepqmZGxhe9jBw0
 tmwMclBfPJyD84dt9w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MmlXK-1t0zCW1gvu-00fGp9; Mon, 10
 Feb 2025 11:11:54 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
In-Reply-To: <87bjvarvtd.fsf@toke.dk>
Date: Mon, 10 Feb 2025 11:11:43 +0100
Message-Id: <564C0719-2569-4A8A-981D-35F9473F8AF2@gmx.de>
References: <CAM0EoM=bFMVMV-f2n4BNSJoqOAxqr+kcJ9kg2NLVvmw2rX-2WA@mail.gmail.com>
 <87bjvarvtd.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-Provags-ID: V03:K1:skF7/gAeaMuEYNUkG4pj/fw+Lrw5qqoUd2z4I34K8opvE2TpvBa
 SCwlH4LNJ739uHKUa0QY9EUoxvgc28F0r3jVPbQdmsc05dNRclqUFk19nwmZqLZSzrFRPGe
 FGYvPcQhyw+0FMqrAMxkedywWirUHPQZUorxy/Uqu3Bos7XtQp4oZRNrhlPs8BYCMUjmX2/
 aiCNWFfdBsiEhUF/zc0aw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:gl5LX37w664=;suIKmaOMdHx/onqb/fLmSTbGT9k
 2PLr2bLZu/K1FdE4ql096AHxdCOy3x9Wj3a0ILYpPqqxpXzSLDreXX4KKHdXqJLzVxleDt3/O
 ZuCQ17zho1Q65/khRzDtBOSyRDqJjgQ50dZON/TMLFzqpirWHaKRHFVxRipLvSMRITqH2Quxp
 KY/vayvHjWwKwRRznrVu6UqB/3KB0zmv11puTPM+O3+v+EI3A2SnyXgPUf4DI8xDAxT29IpXQ
 wxjubEZajZXOWKwtMWZDNSopI7ZQLJK0z8uOi8ye1mPsM87t84ZtW1esR/3sU/XdnOibtU7nh
 zt16hqujmjKTDYbWQsmMg5npsrHDmo0ggmycGrUesWaauJsJfNC2jKwUpZXZCK8Z51Up87Uup
 B0CbjyVhX8GMbantM0A2VIi71rW0PenZpZxj+WyMQVnMfNI2K/8WZl6UQSoWemFzWio3PVdOi
 j9mhrhQTNFAUVs7aWlrDGj5s2OCko0PsBlRyh0SUHE7gjKKslC+SfAC77uddPHPZFURf3SvM2
 pnrLmD9t2GnwpekgQ2QGLbIEgmTFJtdkZSsHkZ+Hrvx5QyM53RmEur5q8XmBuypvJxWOZ2T15
 ZK82AdkEhsgK3xNEP5cQafQrrpXbri8CQTLzCRL2gBOxNokShLbgneCeZ3WWeR3Ltwcjdqjy1
 zVFzhfYWf3tWzfVfysDScl6+f/9/3vWKgQOag5e+ybnRyWs/J/u1h1Xfjg1JTd/crimMgZh/F
 tt+fdrg895406yUsQqJB1tOV9sNss0vsd74q9LYWLP+caUztEaX2481Y7MWRjDAMozVriB3LR
 d6bsxYC09p0+C5iavBMtEnsKJePvdohndKxfESUYqCqWcIUWR/CfyNHhi+ZTPITjA8jKUEiGB
 SvNC4+4ke/3qaIRPLC7EEJRm1hAFiEqg8SZ1SpHY+N3Q+p21awt2oSgCnqdUgX7/5/BoHWlOV
 mMiP/m0xV2qygQj/EIFkYD0bDWhUff85b+nu7ipWQLPnWcAVGZjKqMfNOB96B5J+ghv/d/yzB
 6U9zTvgZ4k6b7lnyVZR7x/3JdIMjEI38HGNmo8zg1mSf/uTcXN3bGBztunAqpJJcUC2e1T1JO
 OQxd1t1/MTlp9A8SugS5eXV9fOKqZu4L80xVT8AbjnH0ocARujEtjfHcKc4+pFqFvDqVgM3oY
 PlWKTSnVVnLEdOiOU39nJV+J7XoIss4o6TLqry8Lj1SwORRg2MSUqHMnQu3IrvGRLisntyr2a
 CPEEpvjBCNFZRnFtWmKyGOZOFJbgLa2znDnuCVW/QCdZ0L3Dya/RdLlCJg1LkXvWlCxzESbdA
 LlOZlhkO1e3Vix9XUMMRl5C2Tb1YkqWQVwct+2oUT7tEhOVQombcM/+iStCp8d0Yz5CxhfNTR
 KGyAxSPsrBCARjrLHXKFH60wimKGk2xxh8dOohrMH3aCXfVypasDNAoGIlsi78y4xqkzs9DTH
 NwqlArm4uVyEwVlww4gNia1lLy/A=
Subject: Re: [Cake] [NetDev-People] 0x19: Talk,
 mq-cake: Scaling software rate limiting across CPU cores
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhhdCBzb3VuZHMgbW9zdCBleGNlbGxlbnQuLi4KClRoaXMgYWxzbyBtZWFucyB0aGF0IG5vdyB3
ZSBuZWVkIGNoZWFwIHJvdXRlciBoYXJkd2FyZSB3aXRoID4gMiBOSUMgcXVldWVzIGFuZCA+IDIg
Q1BVcyA7KSAod2l0aCBpbmdyZXNzIGFuZCBlZ3Jlc3Mgc2hhcGluZyB0aGUgY3VycmVudCBzdGF0
ZSBpcyB0aGF0IDIgQ1BVcyBjYW4gYmUgdXRpbGlzZWQpLiBJIHdvbmRlciwgZG9lcyB0aGlzIHdv
cmsgZm9yIElGQnMgYXMgd2VsbCBvciBvbmx5IGZvciByZWFsIGhhcmR3YXJlIE5JQyBxdWV1ZXM/
CgpSZWdhcmRzCglTZWJhc3RpYW4KCgo+IE9uIDEwLiBGZWIgMjAyNSwgYXQgMTA6MzAsIFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+
IHdyb3RlOgo+IAo+IEZZSSA6KQo+IAo+IAo+IEZyb206IEphbWFsIEhhZGkgU2FsaW0gdmlhIHBl
b3BsZSA8cGVvcGxlQG5ldGRldmNvbmYuaW5mbz4KPiBTdWJqZWN0OiBbTmV0RGV2LVBlb3BsZV0g
MHgxOTogVGFsaywgbXEtY2FrZTogU2NhbGluZyBzb2Z0d2FyZSByYXRlIGxpbWl0aW5nIGFjcm9z
cyBDUFUgY29yZXMKPiBEYXRlOiA5LiBGZWJydWFyeSAyMDI1IGF0IDE0OjM3OjQxIENFVAo+IFRv
OiBwZW9wbGUgPHBlb3BsZUBuZXRkZXZjb25mLmluZm8+Cj4gQ2M6IEtpbWJlcmxleSBKZWZmcmll
cyA8a2ltYmVybGV5amVmZnJpZXNAZ21haWwuY29tPiwgTGFlbCBTYW50b3MgPGxhZWwuc2FudG9z
QGV4cGVydGlzZXNvbHV0aW9ucy5jb20uYnI+LCBwcm9ncmFtLWNvbW1pdHRlZUBuZXRkZXZjb25m
LmluZm8sIEJydW5vIEJhbmVsbGkgPGJydW5vLmJhbmVsbGlAc2FydHVyYS5ocj4sIGoua29lcHBl
bGVyQHR1LWJlcmxpbi5kZSwgc3RlZmFuLnNjaG1pZEB0dS1iZXJsaW4uZGUsIEphbWFsIEhhZGkg
U2FsaW0gPGpoc0Btb2phdGF0dS5jb20+Cj4gCj4gCj4gUWRpc2NzIHJlbHkgb24gZ2xvYmFsIGxv
Y2sgdG8gc3luYyBzdGF0ZSBhY3Jvc3MgQ1BVcyBhbmQgdGhlcmVmb3JlCj4gZG9udCBzY2FsZSBp
biBwcmVzZW5jZSBvZiBtYW55IGNvcmVzIChvciBpbiBwcmVzZW5jZSBvZiB2ZXJ5IGhpZ2gKPiBi
YW5kd2lkdGgpLgo+IEpvbmFzIEvDtnBwZWxlciwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuLCBh
bmQgU3RlZmFuIFNjaG1pZCBpbXBsZW1lbnRlZAo+IGEgbXVsdGktcXVldWUgdmFyaWFudCBvZiBz
Y2hfY2FrZSB0aGF0IGNhbiBzY2FsZSBpdHMgcmF0ZSBsaW1pdGluZwo+IGFjcm9zcyBoYXJkd2Fy
ZSBxdWV1ZXMgKGFuZCB0aHVzIENQVSBjb3JlcykgYnkgc2hhcmluZyBhIGJpdCBvZiBzdGF0ZQo+
IG9uIHRvcCBvZiB0aGUgbXEgcWRpc2MuCj4gCj4gSW4gdGhpcyB0YWxrLCB0aGV5IHdpbGwgcHJl
c2VudCB0aGUgaW1wbGVtZW50YXRpb24sIHBlcmZvcm1hbmNlCj4gZXZhbHVhdGlvbiwgYXMgd2Vs
bCBhcyBkaXNjdXNzIHRoZWlyIHByb3Bvc2FsIGZvciBhbiBBUEkgdGhhdCB3aWxsCj4gbWFrZSB0
aGlzIHdvcmsgdXBzdHJlYW1hYmxlLCBhbmQgYXBwbGljYWJsZSB0byBvdGhlciBxZGlzY3MgYXMg
d2VsbC4KPiAKPiBEZXRhaWxzOiBodHRwczovL25ldGRldmNvbmYuaW5mby8weDE5LzE2Cj4gCj4g
Y2hlZXJzLAo+IGphbWFsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBwZW9wbGUgbWFpbGluZyBsaXN0IC0tIHBlb3BsZUBuZXRkZXZjb25mLmluZm8K
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHBlb3BsZS1sZWF2ZUBuZXRkZXZjb25m
LmluZm8KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==
