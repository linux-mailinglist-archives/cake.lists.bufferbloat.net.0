Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6705E60EA56
	for <lists+cake@lfdr.de>; Wed, 26 Oct 2022 22:39:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9F5423CB48;
	Wed, 26 Oct 2022 16:39:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666816752;
	bh=L8LF2nxwVkHCosZO3LZbLGkWo4CbGcIt3B2CmbzK3po=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XzU+jqiQZ0W5HKM39/jzWI1o2rABjXoCSWn+7jd0nomeH8iOcu+fxJUFIkB5BmyV2
	 cw/sItaijGBbFqdOingSfrKJBKKWPQoAvDIbA3GIseW5MBUwRJ0TDquOyfL57bkvK6
	 KYPlJf9aRp2LXLQcs0PLxPEC8Kk1qA3XKQE+RIOVbNJIhDK9C8ZRgvhkm3c3bMeLWb
	 gVRaqBILIoxs5hyPtwU2KO/wmF4njN78DIfhfuB243j9Cg5GxiJiBahkaKUHEDAYf2
	 LKyPOrtYoBX6hn8e79H1JAsEBGGMPj4JE9ryd7ZeMtkkLjO3yahgYBxwFivjFLzEEN
	 INNE9sSqu6T/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BF4673B2A4;
 Wed, 26 Oct 2022 16:39:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1666816738; bh=3Pk1vJNiz9zhE7KPq3aeJ9iIKK8qReK2pAeAzuixwP0=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=NKXz6KX8lcBRYxHOmoDfgcxjwFNim3jbe9JCBsEUuIUh9M3IGnoGpNEw2dZmUlHJq
 AVWyTq0b0ztA5pemPsHIlBdUyJC9ctsW2fJOuxScBXXzLpoGmyzZMFaPGAEVhiuHiJ
 eiBR8NQpeCE3GHS/Utie2Ah1XPBzukCvlHaY1JUbCA/yqceCITGM7cUX5ffBHoU7l5
 us746falvbM5cqxsZgkbBOLXaPm5ugmb2M/BhnQ7bOblzDzitQcFaN2N9q6RQc6qOg
 1IT24UwOL3WdYUMp8qvHzprfozrKADqDjzq28R++EeSBWEB1G+duBTtKNTL9ZEL4vF
 rrl/QdOf/olSg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([84.157.42.192]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1ML9uK-1oWoFs0vgo-00ICFg; Wed, 26
 Oct 2022 22:38:58 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
Date: Wed, 26 Oct 2022 22:38:55 +0200
Message-Id: <C0D30810-C913-4E31-A18B-CD3887C329E9@gmx.de>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
To: Stuart Cheshire <cheshire@apple.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:PDv+sSdT9Ag0qMqFfsfjnJo6QTfI+RpBzaYKNTCoyzpvh5UYH/K
 /aIFPKcMy8eH8UBRtjXifkSF4Tkxvce+G9J7Mb+8Ojfe0lSjX/Run5Zbfxel7y75CI0gKV1
 S8F5USozsn5Vk91aEQPzo937ydQOANMuzmicswb82moUsFUpC/jPOFCCMYNs2VLyg7MBBfx
 12PgzQVNtRgMWbsyAh4wQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:WYOTy3NaaeE=;slrA3E/wSxwSNGMUlGccVwcnd1d
 FQyZBM+X5NdIaWsuS54z8Vu/Z6+U61n+iyuPSEmPOwUMu9a2DJ9SR9xN404DPclzn3kBlvnQv
 tX7ExduA0/vgUmaqbIXs+KxJPF1kFXgHZEoriL3QkPpTg9E5k3j/jaVX8CDof9Z3j3cOemRvN
 zqpMW4mC0hz60jRaGMwE2aopSXkG/sB3WVNqkk/Hy/Z8pjqICjtykwnwjklFPBiQHrr/KTtAs
 xZYiA3b6x8cLo0mEDLyIzGcuzxELl8x6+dKSmY1EDU27HbgQKeG6iHvI5gm+I49nkS77fhr1a
 FcUK40SW7mFxOUoMZncSUYsV6ZV9HTDuTzoZENJHjKR9u3KGPzpg6NkkKl1ZmGee3EF76xcUZ
 cKIuUojFGND7KP7YpARF7VMi2r6Af4E0i1CKXyJ5pzSDvZg2zzoejk8FEBG8stJlbP3GxgLCO
 YN/muE+8VIZqrfSXLqJBzPI8vCVa5OAA9DDf/ZsddL0jsGRGKcpXbxVa2ChYNGvY7k9lqpERg
 ZAmgjfb6RPcIOZcBAY2hW13eVMe/UHrbq7v2eAK3URFutl/m5VwkIu+mJCPfDHIMt3cJIg/8B
 1sV8vX30Y0XyYf26OxBnPD0s12FF3RkS7QBqNOiKR1KAvVgzL4AIQvfHhsAl73epfVUPivJQG
 cMHvNoXEHP+DOcIG+SwDJOSfT/pSN6htmTOpztkyWRIrQ3LxWNccawD1e+qznvMXHpZs0ePs/
 Qd7NpfX5/aCUYe5letQXOCzaiBbWAH3/34xrLJ/Zx7Q5V+OEOo4APHVZqnhc+5S1eXn3xZsrK
 cgfuWV4RI+QhL1NpDNnmwRw91rMw5J3BzNhFvs7wLmkXa9GBfEUalTWyjcwYmZfID2826PXH1
 iRAPTp8EKi54NB5ks9NARcIcqv3K8nPpdp+YalVo1ilAUAWuXWvn3yV6gMu0JA9AOCAVqD3kv
 P8yM8lB0/j4n1RoxKRym3OpkZFE=
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] The most wonderful video ever
 about bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgU3R1YXJ0LAoKCj4gT24gT2N0IDIwLCAyMDIyLCBhdCAyMDozMiwgU3R1YXJ0IENoZXNoaXJl
IDxjaGVzaGlyZUBhcHBsZS5jb20+IHdyb3RlOgo+IAo+IE9uIDIwIE9jdCAyMDIyLCBhdCAwMjoz
NiwgU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6Cj4gCj4+IEhpIFN0
dWFydCwKPj4gCj4+IFtTTV0gVGhhdCBzZWVtcyB0byBiZSBzb21ld2hhdCBvcHRpbWlzdGljLiBX
ZSBoYXZlIGJlZW4gdGhlcmUgYmVmb3JlLCBzaG9ydCBvZiBtYW5kYXRpbmcgYWN0dWFsbHktd29y
a2luZyBvcmFjbGUgc2NoZWR1bGVycyBvbiBhbGwgZW5kLXBvaW50cywgaW50ZXJtZWRpYXRlIGhv
cHMgd2lsbCBzZWUgcXVldWVzIHNvbWUgbW9yZSBhbmQgc29tZSBsZXNzIHRyYW5zaWVudC4gU28g
d2UgY2FuIHN0cml2ZSB0byBtaW5pbWl6ZSBxdWV1ZSBidWlsZC11cCBzdXJlLCBidXQgY2FuIG5v
dCBhdm9pZCBxdWV1ZXMgYW5kIGxvbmcgcXVldWVzIGNvbXBsZXRlbHkgc28gd2UgbmVlZCBtZXRo
b2RzIHRvIGRlYWwgd2l0aCB0aGVtIGdyYWNlZnVsbHkuCj4+IEFsc28gbm90IG1hbnkgYXBwbGlj
YXRpb25zIGFyZSBhY3R1YWxseSBoZWxwZWQgYWxsIHRoYXQgbXVjaCBieSBsZXR0aW5nIGluZm9y
bWF0aW9uIGdldCBzdGFsZSBpbiB0aGVpciBvd24gYnVmZmVycyBhcyBjb21wYXJlZCB0byBhbiBv
bi1wYXRoIHF1ZXVlLiBUaGluayBhbiBvbi1saW5lIHJlYWN0aW9uLXRpbWUgZ2F0ZWQgZ2FtZSwg
dGhlIG5lZWQgaXMgdG8gZGlzdHJpYnV0ZSBjdXJyZW50IHdvcmxkIHN0YXRlIHRvIGFsbCBwYXJ0
aWNpcGF0aW5nIGNsaWVudHMgQVNBUC4KPiAKPiBJ4oCZbSBhZnJhaWQgeW91IGFyZSB3cm9uZyBh
Ym91dCB0aGlzLgoKCVtTTV0gV2VsbCBwb3NzaWJsZSwgd291bGQgbm90IGJlIGEgZmlyc3QuIDsp
CgoKPiBJZiBhbiBvbi1saW5lIGdhbWUgd2FudHMgbG93IGRlbGF5LCB0aGUgb25seSBhbnN3ZXIg
aXMgZm9yIGl0IHRvIGF2b2lkIGdlbmVyYXRpbmcgcG9zaXRpb24gdXBkYXRlcyBmYXN0ZXIgdGhh
biB0aGUgbmV0d29yayBjYXJyeSB0aGVtLgoKCVtTTV0gKzE7IGl0IHNlZW1zIEkgbWlzY29uc3Ry
dWVkIHRoZSBhcmd1bWVudCBJIHdhbnRlZCB0byBtYWtlIHdoZW4gYnJpbmdpbmcgdXAgZ2FtaW5n
IHRob3VnaC4gSWYgeW91IGFsbG93IEkgd2lsbCB0cnkgdG8gbGF5IG91dCB3aHkgSSBiZWxpZXZl
IHRoYXQgZm9yIHNvbWUgYXBwbGljYXRpb25zIGxpa2Ugc29tZSBmb3JtcyBvZiBnYW1pbmcgYSBj
b21wZXRlbnQgc2NoZWR1bGVyIGNhbiBiZSBsZWFwcyBhbmQgYm91bmRzIG1vcmUgaGVscGZ1bCB0
aGFuIHRoZSBiZXN0IEFRTS4KCUxldCdzIHN0YXJ0IHdpdGggbWUgY29uY2VkaW5nIHRoYXQgd2hl
biB0aGUgcmVxdWlyZWQgYXZlcmFnZSByYXRlIG9mIGFuIGFwcGxpY2F0aW9uIGV4Y2VlZHMgdGhl
IG5ldHdvcmtzIGNhcGFjaXR5IChmb3IgdG9vIG11Y2ggb2YgdGhlIHRpbWUpIHRoYXQgYXBwbGlj
YXRpb24gYW5kIHRoYXQgbmV0d29yayBwYXRoIGFyZSBub3QgZ29pbmcgdG8gYmVjb21lL3N0YXkg
ZnJpZW5kcy4KCVRoYXQgb3V0IG9mIHRoZSB3YXksIHRoZSBhcHBsaWNhdGlvbiBwcm9maWxlIEkg
d2FudGVkIHRvIGRlc2NyaWJlIHdpdGggdGhlICJnYW1pbmciIHRhZyBpcyBhbiBhcHBsaWNhdGlv
biB0aGF0IG9uIGF2ZXJhZ2Ugc2VuZHMgcmVsYXRpdmVseSBsaXR0bGUsIGFsYmVpdCBpbiBhIGNs
b2NrZWQvYnVyc3R5IHdheSwgd2hlcmUgZXZlcnkgWCBtaWxsaXNlY29uZHMgaXQgd2FudHMgdG8g
c2VuZCBhIGJ1bmNoIG9mIHBhY2tldHMgdG8gZWFjaCBjbGllbnQ7IGFuZCB3aGVyZSB0aGUgZmlk
ZWxpdHkgb2YgdGhlIHByZWRpY3RpdmUgInNpbXVsYXRpb24iIHBlcmZvcm1lZCBieSB0aGUgY2xp
ZW50cyBjcml0aWNhbGx5IGRlcGVuZHMgb24gbm90IGRldmlhdGluZyBmcm9tIHRoZSBzZXJ2ZXIt
bWFuYWdlZCAid29yZC1zdGF0ZSIgZm9yIHRvbyBsb25nLiAoVGhlIGxvbmdlciB0aGUgc2ltdWxh
dGlvbiBydW5zIHdpdGhvdXQgc2VydmVyIHVwZGF0ZXMgdGhlIGxhcmdlciB0aGUgZXhwZWN0ZWQg
ZGV2aWF0aW9uIGJlY29tZXMgYW5kIHRoZSBtb3JlIG5vdGljZWFibGUgYW55IGFjdGlvbnMgdGhh
dCBuZWVkIHRvIGJlIHRha2VuIGxhdGVyIG9uY2Ugd29ybGQtdXBkYXRlcyBhcnJpdmUsIHNvIHRo
ZSBnb2FsIGlzIHRvIHNlbmQgd29ybGQtc3RhdGUgcmVsZXZhbnQgdXBkYXRlcyBhcyBzb29uIGFz
IHBvc3NpYmxlIGFmdGVyIHRoZSBzZXJ2ZXIgY2FsY3VsYXRlZCB0aGUgYXV0aG9yaXRhdGl2ZSBz
dGF0ZSkuCglUaGVzZSBidXJ0c3Qgd2lsbCBsaWtlbHkgYmUgc2VudCBjbG9zZSB0byB0aGUgc2Vy
dmVyJ3MgbGluZSByYXRlIGFuZCBoZW5jZSB3aWxsIGNyZWF0ZSBhIChob3BlZnVsbHkpIHRyYW5z
aWVudCBxdWV1ZSBhdCBhbGwgcGxhY2VzIHdoZXJlIHRoZSBjYXBhY2l0eSBnZXRzIHNtYWxsZXIg
YWxvbmcgdGhlIHBhdGguIEhvd2V2ZXIgdGhlIGVuZCByZXN1bHQgaXMgdGhhdCB0aGVzZSBwYWNr
ZXRzIGFycml2ZSBhdCB0aGUgY2xpZW50IGFzIGZhc3QgYXMgcG9zc2libGUuCgoKPiBPbmUgcGFj
a2V0IGdpdmluZyB0aGUgY3VycmVudCBnYW1lIHBsYXllciBwb3NpdGlvbiBpcyBiZXR0ZXIgdGhh
biBhIGJhY2tsb2cgb2YgdGVuIHByZXZpb3VzIHN0YWxlIG9uZXMgd2FpdGluZyB0byBnbyBvdXQu
CgoJW1NNXSBZZXMhIEluIGEgbXVsdGlwbGF5ZXIgZ2FtZSBlYWNoIGNsaWVudCByZWFsbHkgbmVl
ZHMgdG8gYmUgaW5mb3JtZWQgYWJvdXQgYWxsIG90aGVyIHBsYXllcnMnL2VudGl0ZXMnIGFjdGlv
bnMuIElmIHRoaXMgaW5mb3JtYXRpb24gaXMgb2Z0ZW4/IHNlbmQgaW4gbXVsdGlwbGUgcGFja2V0
cyAoZWl0aGVyIGJlY2F1c2UgYWdncmVnYXRlIHNpemUgZXhjZWVkcyBhIHBhY2tldCdzICJNVFUv
TVNTIiBvciBiZWNhdXNlIGltcGxlbWVudGF0aW9uLXdpc2Ugc2VuZGluZyBvbmUgcGFja2V0IHBl
ciBpbmRpdmlkdWFsIGVudGl0eSAocGxheWVycywgTlBDcywgImJ1bGxldHMiLCAuLi4pIGlzIHBy
ZWZlcmFibGUuIFRoZW4gYWxsIHBhY2tldHMgbmVlZCB0byBiZSByZWNlaXZlZCB0byBhcHByb3By
aWF0ZWx5IHVwZGF0ZSB3b3JsZC1zdGF0ZS4uLiB0aGUgZmFzdGVyIHRoaXMgZ29lcyB0aGUgbGVz
cyBkbyBjbGllbnRzIGdvIG91dCBvZiAic3luYyIuCgoKPiBTZW5kaW5nIHBhY2tldHMgZmFzdGVy
IHRoYW4gdGhlIG5ldHdvcmsgY2FuIGNhcnJ5IHRoZW0gZG9lcyBub3QgZ2V0IHRoZW0gdG8gdGhl
IGRlc3RpbmF0aW9uIGZhc3RlcjsgaXQgZ2V0cyB0aGVtIHRoZXJlIHNsb3dlci4KCglbU01dIEFn
YWluIEkgZnVsbHkgYWdyZWUuIEFsdGhvdWdoIGluIHRoZSBsaW1pdCBjYXNlIG9uIGFuIG90aGVy
d2lzZSBpZGxlIG5ldHdvcmsgc2VuZGluZyBvdXIgaHlwb3RoZXRpY2FsIGJ1bmNoIG9mIHBhY2tl
dHMgZnJvbSB0aGUgc2VydmVyIGVpdGhlciBhdCBsaW5lIHJhdGUgb3IgcGFjZWQgb3V0IHRvIHRo
ZSBib3R0bGVuZWNrLXJhdGUgb2YgdGhlIHBhdGggc2hvdWxkIGRlbGl2ZXIgdGhlIGJ1bmNoIGVx
dWFsbHkgZmFzdC4gVGhhdCBpcyBzZW5kaW5nIHRoZSBidW5jaCBhcyBidW5jaCBpcyBJTUhPIGEg
cmF0aW9uYWxlIGFuZCBkZWZlbnNpYmxlIHN0cmF0ZWd5IGZvciB0aGUgc2VydmVyIHJlbGlldmlu
ZyBpdCBmcm9tIGhhdmluZyB0byBrZWVwIHN0YXRlIGZvciB0aGUgY2FwYWNpdHkgZm9yIGVhY2gg
Y2xpZW50LgoKPiBUaGUgc2FtZSBhcHBsaWVzIHRvIGZyYW1lcyBpbiBhIHNjcmVlbiBzaGFyaW5n
IGFwcGxpY2F0aW9uLiBTZW5kaW5nIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBzY3JlZW4gKm5v
dyogaXMgYmV0dGVyIHRoYW4gaGF2aW5nIGEgYmFja2xvZyBvZiB0ZW4gcHJldmlvdXMgc3RhbGUg
ZnJhbWVzIHNpdHRpbmcgaW4gYnVmZmVycyBzb21ld2hlcmUgb24gdGhlaXIgd2F5IHRvIHRoZSBk
ZXN0aW5hdGlvbi4KCglbU01dIEkgcmVzcGVjdGZ1bGx5IGFyZ3VlIHRoYXQgYSBzY3JlZW4gc2hh
cmluZyBhcHBsaWNhdGlvbiB0aGF0IHdpbGwgc2VuZCBmb3IgcHJvbG9uZ2VkIGR1cmF0aW9ucyB3
ZWxsIGFib3ZlIGEgcGF0aCdzIGNhcGFjaXR5IGlzIGVpdGhlciBub3Qgb3B0aW1hbGx5IGRlc2ln
bmVkIG9yIG1pcy1jb25maWd1cmVkLiBBcyBJIHdyb3RlIGJlZm9yZSwgSSB1c2VkICh0aGUgZnJl
ZSB2ZXJzaW9uIG9mIG5vbWFjaGluZSdzKSBOWCByZW1vdGUgY29udHJvbCBhY3Jvc3MgdGhlIEF0
bGFudGljIHRvIHNvdXRoZXJuIENhbGlmb3JuaWEsIGFuZCB3aGlsZSBub3QgYWxsIHRoYXQgZW5q
b3lhYmxlIGl0IHdhcyBsZWFwcyBhbmQgYm91bmRzIG1vcmUgdXNhYmxlIHRoYW4gd2hhdCB5b3Ug
ZGVtb25zdHJhdGVkIGluIHRoZSB2aWRlbyBiZWxvdy4gKEkgZGlkIGhvd2V2ZXIgbWFrZSBjb25j
ZXNzaW9ucywgbGlrZSBjb25maWd1cmluZyBOWCB0byBleHBlY3QgYSBzbG93IFdBTiBsaW5rIG1h
bnVhbGx5LCBhbmQgZGlkIG5vdCBjb25maWd1cmUgZnVsbCB3aW5kb3cgZHJhZ2dpbmcgb24gdGhl
IHJlbW90ZSBob3N0KS4KCgo+IFN0YWxlIGRhdGEgaXMgbm90IGluZXZpdGFibGUuIEFwcGxpY2F0
aW9ucyBkb27igJl0IG5lZWQgdG8gaGF2ZSBzdGFsZSBkYXRhIGlmIHRoZXkgYXZvaWQgZ2VuZXJh
dGluZyBzdGFsZSBkYXRhIGluIHRoZSBmaXJzdCBwbGFjZS4KCglbU01dIEFsYXMgbm8gYXBwbGlj
YXRpb24gdXNpbmcgYW4gaW50ZXJuZXQgcGF0aCBpcyBpbiBmdWxsIGNvbnRyb2wgb2YgYXZvaWRp
bmcgcXVldWVpbmcuIFF1ZXVlcyBoYXZlIGEgcmVhc29uIHRvIGV4aXN0IChJIHBlcnNvbmFsbHkg
bGlrZSBOaWNob2xzL0phY29ic2VuIGRlc2NyaXB0aW9uIG9mIHF1ZXVlcyBhY3RpbmcgYXMgc2hv
Y2sgYWJzb3JiZXJzKSwgZXNwZWNpYWxseSBvdmVyIHNoYXJlZCBwYXRoIHdpdGggY3Jvc3MgdHJh
ZmZpYyAoYXQgbGVhc3QgdW50aWwgd2UgZmluYWxseSByb2xsLW91dCB0aGVzZSBmaW5lIG9yYWNs
ZSBzY2hlZHVsZXJzIHRoYXQgSSBlbmNvdW50ZXIgc29tZXRpbWVzIGluIHRoZSBsaXRlcmF0dXJl
IHRvIGFsbCBlbmRwb2ludHMgOykgKS4KCUkgZG8gYWdyZWUgdGhhdCBhcHBsaWNhdGlvbnMgZ2Vu
ZXJhbGx5IHNob3VsZCB0cnkgdG8gYXZvaWQgZHVtcGluZyBleGNlc3NpdmUgYW1vdW50cyBvZiBk
YXRhIGludG8gdGhlIG5ldHdvcmsuCgo+IAo+IFBsZWFzZSB3YXRjaCB0aGlzIHZpZGVvLCB3aGlj
aCBleHBsYWlucyBpdCBiZXR0ZXIgdGhhbiBJIGNhbiBpbiBhIHdyaXR0ZW4gZW1haWw6Cj4gCj4g
PGh0dHBzOi8vZGV2ZWxvcGVyLmFwcGxlLmNvbS92aWRlb3MvcGxheS93d2RjMjAxNS83MTkvP3Rp
bWU9ODkyPgoKCVtTTV0gQXJnaCwgbm90IGEgcGxlYXNhbnQgc2lnaHQuIEJ1dCBhbHNvIG5vdCBp
bGx1c3RyYXRpbmcgdGhlIGNhc2UgSSB3YXMgdHJ5aW5nIHRvIG1ha2UuIAoKCVRvIGNvbWUgYmFj
ayB0byBteSBwb2ludCwgZm9yIGFuIGFwcGxpY2F0aW9uIHByb2ZpbGUgbGlrZSB0aGUgZ2FtZSB0
cmFmZmljICh0aGF0IGRvZXMgbm90IGV4Y2VlZCBjYXBhY2l0eSBleGNlcHQgaW4gdmVyeSBzaG9y
dCB0aW1lZnJhbWVzKSBhIGZsb3ctcXVldWVpbmcgc2NoZWR1bGVyIGhlbHBzIGEgbG90LCBpbmRl
cGVuZGVudCBvZiB3aGV0aGVyIHRoZSBncmVlZHkgZmxvd3Mgc2hhcmluZyB0aGUgc2FtZSBwYXRo
IGFyZSB3ZWxsIGJlaGF2ZWQgb3Igbm90IChsZXQncyBpZ25vcmUgYWN0aXZlIG1hbGljaW91cyBE
T1MgdHJhZmZpYyBmb3IgdGhpcyBkaXNjdXNzaW9uKS4gT25jZSB5b3UgaGF2ZSBhIGNvbXBldGVu
dCBzY2hlZHVsZXIgdGhlIHF1ZXVlaW5nIHByb2JsZW0gbW92ZXMgZnJvbSBvbmUgInVuZnJpZW5k
bHkiIGFwcGxpY2F0aW9uIGNhbiBydWluIGFuIGFjY2VzcyBsaW5rIGZvciBhbGwgb3RoZXIgZmxv
d3MgdG8gdW5mcmllbmRseSBhcHBsaWNhdGlvbnMgY2FuIG1vc3RseSBtYWtlIHRoZWlyIG93biBs
aXZlIG1pc2VyYWJsZS4gVG8gYmUgY2xlYXIgSSB0aGluayBib3RoIGNvbXBldGVudCBBUU0gYW5k
IGNvbXBldGVudCBzY2hlZHVsaW5nIGFyZSBkZXNpcmFibGUgZmVhdHVyZXMgdGhhdCBjb21wbGVt
ZW50IGVhY2ggb3RoZXIuKgoKCgpSZWdhcmRzCglTZWJhc3RpYW4KCiopIEl0IGdvZXMgd2l0aG91
dCBtdWNoIHNheWluZyB0aGF0IEkgY29uc2lkZXIgTDRTIGFuIHVuZm9ydHVuYXRlIGNvbWJpbmF0
aW9uIG9mIG5vdCBjb21wZXRlbnQgZW5vdWdoIEFRTSB3aXRoIGFuIGluYWRlcXVhdGUgc2NoZWR1
bGVyLCB0aGlzIGlzIElNSE8gInRvbyBsaXR0bGUsIHRvbyBsYXRlIi4gVGhlIGJlc3QgSSB3YW50
IHRvIHNheSBhYm91dCBMNFMgaXMsIHRoYXQgSSB0aGluayB0cnlpbmcgdG8gc2lnbmFsIG1vcmUg
ZmluZS1ncmFpbmVkIHF1ZXVpbmcgaW5mb3JtYXRpb24gZnJvbSB0aGUgbmV0d29yayB0byB0aGUg
ZW5kcG9pbnRzIGlzIGEgZGVjZW50IGlkZWEuIEw0UyBob3dldmVyIGZhaWxzIHRvIGltcGxlbWVu
dCB0aGlzIGlkZWEgaW4gYW4gYWNjZXB0YWJsZSBmYXNoaW9uLiBJbiBtdWx0aXBsZSB3YXlzOyBi
aXQgYmFuZ2luZyB0aGUgcXVldWVpbmcgc3RhdGUgaW4gYSBtdWx0aS1wYWNrZXQgc3RyZWFtIGFw
cGVhcnMgYXQgYmVzdCBzdWItb3B0aW1hbCwgY29tcGFyZWQgdG8gZ2l2aW5nIHNheSBlYWNoIHBh
Y2tldCBldmVuIGZldy1iaXQgYWNjdW11bGF0aXZlIHF1ZXVlLWZpbGxpbmctc3RhdGUgY291bnRl
ci4gV2h5PyBCZWNhdXNlIHN1Y2ggYSBjb3VudGVyIGNhbiBiZSB1c2VkIHRvIGRlZHVjZSBxdWV1
ZSBmaWxsaW5nIHJhdGUgcXVpY2sgZW5vdWdoIHRvIGhhdmUgYSBmaWdodGluZyBjaGFuY2UgdG8g
YWN0dWFsbHkgdGFja2xlIHRoZSAid2hlbiB0byBleGl0IHNsb3ctc3RhcnQiIHF1ZXN0aW9uLCBz
b21ldGhpbmcgdGhhdCBMNFMgZXNzZW50aWFsbHkgcHVudGVkIG9uIChvciBkaWQgSSBtaXNzIGEg
Z3JhbmQgYW5vdW5jZW1lbnQgb2YgcGFjZWQgY2hpcnBpbmcgbWFraW5nIGl0IGludG8gYSBkZXBs
b3llZCBuZXR3b3JrIHN0YWNrPykuCgoKPiAKPiBTdHVhcnQgQ2hlc2hpcmUKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
