Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD62A7824B
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 20:36:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 85BB63CB40;
	Tue,  1 Apr 2025 14:36:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743532580;
	bh=LP78T/tC/0wsMsTK9zqVFMxWAzByFJVYQiaBr9dZRMg=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=e6XGz+/ovteAdnUiacKYoxWkEIkldRHGS+9enFkt9yGA0mCeECZOGewO9NnIH5Za8
	 IjF6pm24lnyRnYkib13f+z39T7aKDPo/8H/lVszzMEYoXs6dCwLa6lhXt7hkmFsbMO
	 9jbgJaUocCfKRn9OFV1IfoyfgLY3byPgN21udTWRHG72/1ASv2mtKb+LoTBsNfjMGt
	 quaulgl7tjMg5GNKCLy06j+oDbdxrNzi77sYjvz0qaSMClz/b7AvJh/kSSET8vbL1j
	 NWJTWis9inRjGfIjlF3U+H1+SyrTXq16pJIpO2yYxNpaAMKZFA62TZ94a9I+f/p5nU
	 EQ0XqFaHMUzrw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8B3413B29D;
 Tue,  1 Apr 2025 14:36:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1743532578; x=1744137378; i=moeller0@gmx.de;
 bh=Ehf+ZrWnh0Ku7Nwo5ERydY8hyMvBarEvtweP+WWCvJw=;
 h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
 References:To:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=HpfEkD8t9od0X0hHrX8z9u0RRU1YUqoVKmuwFyrVghzMGtejhFDA5Mr5BIH35e+G
 E5yZHVlXsrd3/NjwOuIf6BqVVO23/5hjIrCA6TM08g0KZhSnM0WosMnvInaG8dvmG
 QsdKRvZyWP4sfFxaZ19axLdG22+UXa77JynIAamAY5JnJdzilcUmZKa06+zxy+M0C
 qN9sLGlaJySYfuCYN3Lk30ZM6o9TnaRCvdAnCrCLU939k39Tg37r0897ZUvwfp0nC
 NW7UmNidpMXk6acxPvcPIHdKfz1k1/fkGTmUQwFzXVHrVLLqgH9hqIaKEpq9JxgKB
 o5jIMidr3isNWnZIZw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([95.112.37.54]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MfYPY-1tSodF3PgW-00lcXH; Tue, 01
 Apr 2025 20:36:17 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.5\))
In-Reply-To: <E3699A9A-9B07-4F19-969B-B3723E3DEF7A@apple.com>
Date: Tue, 1 Apr 2025 20:36:06 +0200
Message-Id: <6336C355-F659-413E-8D29-1E8B80D65994@gmx.de>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <E3699A9A-9B07-4F19-969B-B3723E3DEF7A@apple.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailer: Apple Mail (2.3826.500.181.1.5)
X-Provags-ID: V03:K1:tDaR/soIk9EXJ9ylHl7K1rXOXA0wnDDDuEcTfTWoocGPDmg4QK0
 g5mknPawqAn61e0cTwbJ5vTHLifqMY7nyygX5bJefVul76TbwG7YoYiiUrx6bUX0pG9ArjV
 UTLZnVQi8/vDftrqIy+EIkXI3GqGaolgnzUthuZwoNNOHf7cWq69qJ/g/SjEnEWe6jT+/e4
 xF+ntltUn7c6OhZ5jy7mg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:kppm+OaU9WU=;k/E48yY/by7gyPW29gksCsHQ+Vy
 EqNNHD4hthioCx6hiF9REUF4DTlDfMngEEPwW6t0GfO5U6AE5cjWGdidi7QNFmDrolcCMMls3
 1XNwNr45W67e3Hcq/tY8Qq3Ov7vjUI0/EvMvxMzxvGgPCXfjjLw7tvcVKx0VIuWhsaw8LbHMM
 TQUSDfZIIm0kj+yYvI2DRqOm76W8KNNMiIGtO/SyHZ13PqUk0d9IJ3jD69D+m8AQyvDDfECN1
 Cb9Y9vou5T16KloQqDX+Mb6Su1vLPw4RiGC8kyk9kqdSQ8djmH7U5KHANA1FEMtcWEJn2dJDo
 ZY1PpdXtNyU35PQh4qzHa/o4Wjb0xTsEsx/jKmjC+FfPS3jmOsz9iPpMxKLYl7g3MG21LDfm4
 4qfrHAjmwEKYFk0pbK1fpppv1px1TaQ+ybt8RdV8Bwmc1OFw0Sc5TP9ts0dKtFYNtSwzzebcJ
 niExlnkwKgG6de7iLIPguouFhKo9DOjcC5Xz2/NwEe9AP159oZB4c1yEtF4p/5V+WMNUdquY1
 qPLqSV4YBlx/mFg/OjPzngA8cvZqx4giRLWu2N8nAf7HGZWITv7wqabbo1HEqvRsG0XJfZQ4u
 UoO03e3svSaV/G2gNULl63UVIelawmmduzldfsCG7QGTx15rAhv8PSORzUVUkFSRf3UB2IwM9
 aPyjeVIaQ5JdQKLTm4WDeW90Hos/iNV4pCNSBFbXIn6hlkbL3Tz7opiZ6P+VgRzJIYvLeZGPO
 IjY6XphdzywYwsBMzBrJ2hPUIHE0f59EaMBHm5YlolS9Xh8lIaohWcTFjtWPCDi0b7n+GTSve
 4oq8CGkfpd1OVczgEyKjREXfeMJvjOumNy6P83wvfqQB5KJAMuttqIAEmtbiJLwQasYeOpdxP
 QQ/zRoi7B5x2ozWV5U4na27QktzuHEY1cuC8xQGyEx+ZEeUbFF3cA7UalcV54OWCnz6NM1Pkr
 EVLSM0ohXLJYaFDDb4vQGtltASQNYkjSiNZpZGpCxAQYkilwKqG0PQ/mTtKbXPO0fhGIqDj2z
 29WSie5m8sRtIrzuGAA4dNFiHIQe+Y9hT36uPfBeD1uX5uw6fiumzag++kQDJes11K0fL4b8X
 gwtKolfUUxy2QA6wHLar5bYcm+9j7cuK9pmJItv/2lmdv1rYy/FHpHtNuD5fO7F/UOnVbsN4r
 1shIhCzXG8Oo3aLxxte1itlNayy0R5lH5kVO5fk8mkg+BiONcWuEujjH9Lb4aXn9xmmsppw8N
 apgFXTFBPaYEzyAWRMThikEP8PNtB7y8jnac4VNz+Bs8bo5TQSd33x1hMHJqNVU3vxciy6Pzd
 GIzjT9fqxb8RvzzyVtQxTrg4lCFvLjuVkf+fOH++5x9hEP+Vsu3TlDzZHOjksybTJq2unW5bm
 73yx3ifvvece+nJk2SFJeK6wIB4DH/BG3AL7mObz/EEKxgk6cLva98Na9vyvM67JlhM6Te+30
 EOw7d/7l/llJ0nuAELbzAjq91gL7YsRzacTzhxNgO+/GBICMrExCtSiWVrJ07nxcYb8PkSA==
Subject: Re: [Cake]
 =?utf-8?q?=5BStarlink=5D_=5BBloat=5D_In_loving_memory_of_D?=
 =?utf-8?b?YXZlIFTDpGh0IDwz?=
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
Cc: Stuart Cheshire <cheshire@apple.com>, cerowrt-commits@lists.bufferbloat.net,
 bloat-ietf@lists.bufferbloat.net, Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-users@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 =?utf-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_as?=
 =?utf-8?Q?pects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel-wireless@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?utf-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2FkIG5ld3MgZGF5LiAKCkxlYXJuZWQgc28gbXVjaCBmcm9tIERhdmUgYWJvdXQgdGhlIG5ldHdv
cmsgYWJvdXQgdGhlIGltcG9ydGFuY2Ugb2Ygc2hhcmluZyBpZGVhcywgYW5kIG5vdCB0byB0YWtl
IG9uZSBzZWxmIHRvbyBzZXJpb3VzbHkuIApXaWxsIG1pc3MgeW91IG15IGZyaWVuZC4uLgoKU2Vi
YXN0aWFuIE1vZWxsZXIKCgoKCj4gT24gMS4gQXByIDIwMjUsIGF0IDE5OjU3LCBTdHVhcnQgQ2hl
c2hpcmUgdmlhIFN0YXJsaW5rIDxzdGFybGlua0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3Rl
Ogo+IAo+IERhdmUgVMOkaHQgd2FzIGEgZ29vZCBmcmllbmQgYW5kIGEgbWVudG9yIHRvIG1lIGFu
ZCBzbyBtYW55IG90aGVycy4gSGUgaW5zcGlyZWQgbWUgdG8gZm9jdXMgbXVjaCBvZiBteSB0aW1l
IGFuZCBlZmZvcnQgaW4gdGhlIGxhc3QgZGVjYWRlIHRvIGhpcyB2aXNpb24gb2YgYSBmYXN0ZXIg
SW50ZXJuZXQgZXhwZXJpZW5jZSBmb3IgZXZlcnlvbmUgdGhyb3VnaCBsb3dlciBuZXR3b3JrIGxh
dGVuY3kuIFRoZSByZXN1bHRzIG9mIERhdmXigJlzIHdvcmsgYXJlIGZpbmFsbHkgY29taW5nIHRv
IGZydWl0aW9uLCBhbmQgdGhvc2UgaGUgdGF1Z2h0IHdpbGwgY29udGludWUgaGlzIHdvcmsgdHJh
bnNmb3JtaW5nIGhvdyB0aGUgSW50ZXJuZXQgb3BlcmF0ZXMgYW5kIGltcHJvdmluZyB0aGUgbGl2
ZXMgb2YgY291bnRsZXNzIG1pbGxpb25zIG9mIHBlb3BsZSB3b3JsZHdpZGUuCj4gCj4gU3R1YXJ0
IENoZXNoaXJlCj4gCj4gT24gQXByIDEsIDIwMjUsIGF0IDEwOjI3LCBGcmFudGlzZWsgQm9yc2lr
IHZpYSBCbG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiAKPj4gSGVs
bG8gdG8gYWxsLAo+PiAKPj4gV2XigJlyZSBkZXZhc3RhdGVkIHRvIGFubm91bmNlIHRoYXQgRGF2
ZSBUw6RodCBoYXMgcGFzc2VkIGF3YXkuCj4+IAo+PiBEYXZlIHdhcyBhbiBhbWF6aW5nIG1hbiwg
aGVscGluZyB0aGUgd29ybGQgd2l0aCBGUS1Db0RlbCBhbmQgQ0FLRSwgZmlnaHRpbmcgYnVmZmVy
YmxvYXQgYW5kIHRyeWluZyB0byBtYWtlIHRoZSB3b3JsZCBhIGJldHRlciBwbGFjZS4gQWx3YXlz
IHdpbGxpbmcgdG8gaGVscCwgYW5kIHdpdGhvdXQgaGltIOKAkyBMaWJyZVFvUyAoYW5kIHRoZSBv
dGhlciBRb0Ugc29sdXRpb25zIG91dCB0aGVyZSkgd291bGRu4oCZdCBleGlzdC4KPj4gCj4+IERh
dmUgd2FzIGFuIGluc3BpcmF0aW9uLCBhbmQgd2UgYWxsIG1pc3MgaGltLiBXZeKAmXJlIHJlYWNo
aW5nIG91dCB0byBmYW1pbHkgYW5kIGNsb3NlIGZyaWVuZHMgdG8gc2VlIGlmIHRoZXJl4oCZcyBh
bnl0aGluZyB3ZSBjYW4gZG8gdG8gaGVscC4KPj4gCj4+IERhdmUgd2FzIGFuIGluc3BpcmF0aW9u
IHRvIHVzLiBEYXZl4oCZcyBjb250cmlidXRpb25zIHRvIExpbnV4LCBGUS1Db0RlbCwgYW5kIENB
S0UgaW1wcm92ZWQgaW50ZXJuZXQgY29ubmVjdGl2aXR5IGFyb3VuZCB0aGUgd29ybGQgZm9yIG1p
bGxpb25zIG9mIHBlb3BsZS4gQmVjYXVzZSBvZiBoaW0sIG1pbGxpb25zIG9mIHBlb3BsZSBub3cg
aGF2ZSBhY2Nlc3MgdG8gcmVsaWFibGUgdmlkZW8gY2FsbHMg4oCTIGFuZCBpbiB0dXJuLCBhY2Nl
c3MgdG8gbG92ZWQgb25lcywgaGVhbHRoY2FyZSwgYW5kIGNvbW11bml0eS4gT25lIG9mIFJvYmVy
dOKAmXMgSVNQIGN1c3RvbWVycyBpcyBhIGtpbmQgcGFyYXBsZWdpYyB3b21hbiB3aG8gbGl2ZXMg
aW4gYSBmYXItZmx1bmcgcnVyYWwgQ29sb25pYSBhcm91bmQgRWwgUGFzbywgVGV4YXMuIEhlciBy
ZWxpYWJsZSBhY2Nlc3MgdG8gaGVyIGRvY3RvcnMgdGhyb3VnaCB0ZWxlbWVkaWNpbmUsIGFuZCB0
byBoZXIgZmFtaWx5IHRocm91Z2ggRmFjZVRpbWUsIHdhcyBvbmx5IG1hZGUgcG9zc2libGUgYmVj
YXVzZSBvZiBoaXMgYWxnb3JpdGhtcy4gVGhlcmUgYXJlIG1pbGxpb25zIG9mIGNhc2VzIGxpa2Ug
aGVycywgd2hlcmUgRGF2ZeKAmXMgY29udHJpYnV0aW9ucyBoYXZlIHNpbGVudGx5IGVuYWJsZWQg
aHVtYW4gY29ubmVjdGlvbiBhbmQgc2FmZXR5LiBFdmVyeXRoaW5nIERhdmUgY29udHJpYnV0ZWQg
dG8gdGhlIHdvcmxkIG9mIHRlY2hub2xvZ3kgd2FzIGZyZWUgYW5kIG9wZW4gc291cmNlLCBmb3Ig
dGhlIGJldHRlcm1lbnQgb2YgaHVtYW5pdHkuCj4+IAo+PiBEYXZlIGlzIHRoZSByZWFzb24gdGhh
dCBTdGFybGluayB3YXMgYWJsZSB0byB0YWNrbGUgaXRzIGxhdGVuY3kgaXNzdWVzIOKAkyBlbmFi
bGluZyBhIGdlbmVyYXRpb24gb2YgeW91bmcgZW50cmVwcmVuZXVycyBhY3Jvc3MgdGhlIGRldmVs
b3Bpbmcgd29ybGQsIHN1Y2ggYXMgdGhlc2UgeW91bmcgZm9sa3MgcGljdHVyZWQgaW4gdGhlIFBo
aWxsaXBpbmVzLCB0byBzdGFydCB0aGVpciBvd24gSVNQcyB0byBleHBhbmQgaW50ZXJuZXQgYWNj
ZXNzIHRvIHRoZWlyIGNvbW11bml0aWVzLiBEYXZlIHN0YXJ0ZWQgd29yayBvbiBGUS1Db0RlbCBp
biBwYXJ0IGJlY2F1c2Ugb2YgaGlzIG93biBqb3VybmV5IHdvcmtpbmcgdG8gZXhwYW5kIGludGVy
bmV0IGFjY2VzcyBpbiBOaWNhcmFndWEsIHNvIHdlIGtub3cgaGUgc2F3IHRoYXQgaGlzIHdvcmsg
aGFkIGNvbWUgZnVsbC1jaXJjbGUgYW5kIGhlbHBlZCBzbyBtYW55Lgo+PiAKPj4gV2XigJlyZSBp
bmNyZWRpYmx5IGdyYXRlZnVsIHRvIGhhdmUgRGF2ZSBhcyBvdXIgZnJpZW5kLCBtZW50b3IsIGFu
ZCBhcyBzb21lb25lIHdobyBjb250aW51b3VzbHkgaW5zcGlyZWQgdXMg4oCTIHNob3dpbmcgdXMg
dGhhdCB3ZSBjb3VsZCBkbyBiZXR0ZXIgZm9yIGVhY2ggb3RoZXIgaW4gdGhlIHdvcmxkLCBhbmQg
bGV2ZXJhZ2UgdGVjaG5vbG9neSB0byBtYWtlIHRoYXQgaGFwcGVuLiBIZSB3aWxsIGJlIGRlYXJs
eSBtaXNzZWQuCj4+IAo+PiBQUzogRGF2ZSBpcyBmb3JldmVyIGluIG91ciBoZWFydHMgYW5kIHNv
dWxzLCBpbiBvdXIgcm91dGVycyBhbmQuLi5pbiBwcm9kdWN0aW9uIQo+PiBodHRwczovL2dpdGh1
Yi5jb20vTGlicmVRb0UvTGlicmVRb1MvcHVsbC82ODQKPj4gCj4+IEFsbCB0aGUgYmVzdCwKPj4g
Cj4+IEZyYW5rRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrCj4+IGh0dHBzOi8vd3d3LmxpbmtlZGlu
LmNvbS9pbi9mcmFudGlzZWtib3JzaWsKPj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0
MjE5MTk0MTY3MTQgCj4+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUKPj4gU2t5cGU6
IGNhc2lvYTUzMDJjYQo+PiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbG9hdCBtYWlsaW5nIGxp
c3QKPj4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBTdGFybGluayBtYWlsaW5nIGxpc3QKPiBTdGFybGlua0Bs
aXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9zdGFybGluawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
