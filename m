Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BB220B40F
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 17:00:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 142E73CB38;
	Fri, 26 Jun 2020 11:00:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593183604;
	bh=HLIw+4vfIAfms5TfnIbUx127xjQxXP3UROzhYjTRvTc=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GBEggZO5AqhDl2wk1ocSyjtHpb/Cr+Du0Xm/u4CisGZwlgwkyD932mohel02yPaPU
	 UlzCo1NPmm3K/vBzYouRN2MQa/kugFu6YRPGdJvlrFXkEV0W6imXXAItfBKBahUbnp
	 Ot3GoUxxh49WpaE39l12JEHoMLpRMUlCB4CP3bRWlT2ULIKurxlLmj7e0bdukEpRsR
	 dhl8GfAh2CaIPsHu71h99S2DuvbeGgAIaLOJgWEN4IHSIMnmWTLWrKH+xFocHup+Mv
	 9owo9NqpoFEjJ5bmW1BW9fURsJOy58xzQoeQE80B6u5qVaoaIfdyzpYVXAneerUi6Z
	 Ga4EqF4smwweg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5A4863B29E
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 11:00:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1593183599;
 bh=rHDgWcjfj6clpvRJT1A/epQEimE2z6aZbcIPZpOB0DQ=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=KN6BApRtGaTNCBoa8RKCw3Fxr7mms/JYdtSCfL15prV9HsBEs8pxxj32krqYWAhfD
 +d1EONB8Spe8+YWrtXWakf6f5A+UqCHbUne8MjB6VhREWppf4shf/+SyQz+3Y6XUs0
 oAagdhO9fwxAqmnP26YhcatjmX+hYk4c7QjuSgWo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.250.102] ([134.76.241.253]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mwwdl-1ivmPE2YDz-00yPnx; Fri, 26
 Jun 2020 16:59:59 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <78C16717-5EB2-49BF-A377-21A9B22662E1@gmail.com>
Date: Fri, 26 Jun 2020 16:59:58 +0200
Message-Id: <E6DDAA1E-E7E9-47D2-8616-20B7AADF015A@gmx.de>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
 <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
 <78C16717-5EB2-49BF-A377-21A9B22662E1@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-Provags-ID: V03:K1:OdJXx0IW8uFt+aodC6uFgBqwd8l2rQsI3HNIi9P5mbCNdwSPGsW
 pgn+f5a2i3fvNZrjfyeMXVvSARCx0w2CnYOUS7CbjOyHoCWU76hZwLVl3sA+YTnRBeYA7IU
 WPiNu4OxHYFoNyrm7JtBaGFa20dMZkXePCV/Ilu1O97fvZSLbVVsi6CEACXM8kfPokzxKEG
 g8eiSA/RkFPiKYqB/eQ6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:G+MmjQ8hGZ4=:VcMq9C+T9iCXH1C7rXz+wA
 Y832HDWB7Sri2Qg24ThqmJALAUBYiadfAq42HXFungxgkfjjLy6Rn/18tMQ06JmbRyaQB0LsE
 DnmZiIpoOLjiEleJKDd2H9HGTCiF4k9NGACNld9kQ5CL+44v54rAfaZUDpFXYxFMDlCKmOmgt
 t+EdJ1w5pLMChGQs8MkcJD8lGWvkwohlvGRfq/JaLswcUdaLc/7y0v4FvBWiyLHZia4afeK24
 irSSWSS/Dv1xvzEhFduAgSIMhqenl7NSJ9/p5eytonHCeHpuoFb3Eidqwsia0yyoBwnVvCZo+
 vGhQYcDm9sgnUDgA4x4+6hN5qN2UBRDbc7A/tBpEXzZt9nHLYYGhOWKTD9H/Lm8fvYU++s2Ct
 0hlLs9RQupXVq9GClYfqGGPsq+6WTeQpbf/k1TxXRtXYxWac4vi8pXNuN073YReDF5kHOLhOM
 xb0I+gDnoBIY+pkmF5uFWGgDjNVzNCeTGuNI1tjpMsowzInx2TFNHcQpujFlSGSbnLE3LEt1N
 Ry0Wnewqe8wqqvLAydeR8fiHN4kbSPpq9QfE3GicjR5Eq08oSS5q+G5U75l1UCYzJitMsDrbm
 J5EX4axyCrCCaJMDPUK5yGyPpcAjVLfVjgExDLaRp3w6ZkgcEKd4HzPeYDgoOld+FD/11zcsw
 Guf2MUKmwIq6lOEXQxr1zdVBy1W9E6eiJSWjAatgIltic9DMd7WKvZS04JrbaGINzBUbGJWc1
 EeLXuWZUbYZGC6Zpb8SCJnIzuFTYsufG73qA3qwpeRKd8Id2GMGMIvU/37s66JWlV2GWUQyJ4
 5UC8GeunTaXvw5BEA0d3ifH4IF7ZGaQtP7udLZcbQwDfs21Fe/QnM+6ZlRw2G2ixzAMhB6tHo
 O0r7J5W7DZ7iq/D397cxz5zP8TTZaSHGDV1PdYPE3ezlRjK5d1iltfrnnxSEtwwu/Zk3VJ4lz
 H5ls86V4AAp+AO2e3kQVWO/xfApHGP9+GuSoY+1/3H08aVsAssT8MbUB3n3/OLZ6aIjLOzS5c
 eKwG2husQas7zBVgJvWZRrTHOktynrQF/09n3QNGoVGA6ACog9jg1zU6m2/te/AzhwtC+F+1T
 G4uxHxbGXzSubXmU6WHDz8OfJWFLlw9wDvfVaJGhmx3Wtw2AMnFrac9grVs6LbVzGyJYrI/2D
 Uxx5vcG0KsPFxMnl4POBR8EaZVR3L8NLql2cUofkF/Veype38py7BriEEcvQ1q8uUHTUcAVvN
 yRytIJ9Qt/5v8XsXm
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
 in the presence of VLAN tags
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
Cc: Cake List <cake@lists.bufferbloat.net>, dcaratti@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4sCgp0aGlua2luZyB0aGlzIG92ZXIsIEkgd29uZGVyIHdoZXRoZXIgYSBoeXBv
dGhldGljYWwgY2FycmllciBncmFkZSBjYWtlLCBtaWdodCBub3QgYWN0dWFsbHkgZ3JvdyBhIGNs
YXNzaWZ5LWJ5LXZsYW4tcHJpb3JpdHkga2V5d29yZCB0byBhbGxvdyBzd2l0Y2hpbmcgb3ZlciB0
byB1c2luZyBWTEFOIHByaW9yaXR5IHRhZ3MgaW5zdGVhZCBvZiBkc2Nwcz8gVGhhdCB3b3VsZCBh
dm9pZCB0ZW1wdGluZyBjYXJyaWVycyB0byByZS1tYXAgZGVlZXAtZW5jYXBzdWxhdGVkIGRzY3Bz
IGlmIHRoZXkgY2FuIGp1c3QgaWdub3JlIHRoZW0gZm9yIGdvb2QuIEFuZCBpdCBzY3JhdGNoZXMg
bXkgcGV0IGl0Y2gsIHRoYXQgMyBiaXRzIG9mIGNsYXNzaWZpY2F0aW9uIHNob3VsZCBiZSBlbm91
Z2ggZm9yID44MCAlIG9mIHRoZSBjYXNlcyA7KQoKV2hhdCBkbyB5b3UgdGhpbms/CgpCZXN0IFJl
Z2FyZHMKCVNlYmFzdGlhbgoKUC5TLjogSSByZWR1Y2VkIHRoZSBDQyBsaXN0IHNpbmNlIEkgZG91
YnQgdGhhdCBuZXRkZXYgaXMgdGhlIHJpZ2h0IHZlbnVlIGZvciBtZXJlIGh5cG90aGV0aWNhbHMg
OykKCgo+IE9uIEp1biAyNiwgMjAyMCwgYXQgMTU6MTEsIEpvbmF0aGFuIE1vcnRvbiA8Y2hyb21h
dGl4OTlAZ21haWwuY29tPiB3cm90ZToKPiAKPiBUb2tlIGhhcyBhbHJlYWR5IHJlcGxpZWQsIGJ1
dDoKPiAKPj4gU3VyZSwgbXkgcHJvcG9zYWwgZG9lcyBub3QgY292ZXIgdGhlIHByb2JsZW0gb2Yg
bWFuZ2xpbmcgdGhlIENFIGJpdCBpbnNpZGUKPj4gVkxBTi10YWdnZWQgcGFja2V0cywgaS5lLiBp
ZiB3ZSBzaG91bGQgdW5kZXJzdGFuZCBpZiBxZGlzY3Mgc2hvdWxkIGFsbG93Cj4+IGl0IG9yIG5v
dC4KPiAKPiBUaGlzIGlzIGNsZWFybHkgd3JvbmctaGVhZGVkIGJ5IGl0c2VsZi4KPiAKPiBFdmVy
eXRoaW5nIEkndmUgaGVhcmQgYWJvdXQgVkxBTiB0YWdzIHRodXMgZmFyIGluZGljYXRlcyB0aGF0
IHRoZXkgc2hvdWxkIGJlICp0cmFuc3BhcmVudCogdG8gbm9kZXMgd2hpY2ggZG9uJ3QgY2FyZSBh
Ym91dCB0aGVtOyB0aGV5IGRldGVybWluZSB3aGVyZSB0aGUgcGFja2V0IGdvZXMgd2l0aGluIHRo
ZSBMQU4sIGJ1dCBub3QgaG93IGl0IGJlaGF2ZXMuICBJbiBwYXJ0aWN1bGFyIHRoaXMgbWVhbnMg
dGhhdCBBUU0gc2hvdWxkIGJlIGFibGUgdG8gYXBwbHkgY29uZ2VzdGlvbiBjb250cm9sIHNpZ25h
bHMgdG8gdGhlbSBpbiB0aGUgbm9ybWFsIHdheSwgYnkgbW9kaWZ5aW5nIHRoZSBFQ04gZmllbGQg
b2YgdGhlIElQIGhlYWRlciBlbmNhcHN1bGF0ZWQgd2l0aGluLgo+IAo+IFRoZSBtb3N0IEkgd291
bGQgZW50ZXJ0YWluIGlzIHRvIGluY29ycG9yYXRlIGEgVkxBTiB0YWcgaW50byB0aGUgaGFzaGVz
IHRoYXQgQ2FrZSB1c2VzIHRvIGRpc3Rpbmd1aXNoIGhvc3RzIGFuZC9vciBmbG93cy4gIFRoaXMg
d291bGQgYWNjb3VudCBmb3IgdGhlIGNhc2Ugd2hlcmUgdHdvIGhvc3RzIG9uIGRpZmZlcmVudCBW
TEFOcyBvZiB0aGUgc2FtZSBwaHlzaWNhbCBuZXR3b3JrIGhhdmUgdGhlIHNhbWUgSVAgYWRkcmVz
cy4KPiAKPiAtIEpvbmF0aGFuIE1vcnRvbgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
