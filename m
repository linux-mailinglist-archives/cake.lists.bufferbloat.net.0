Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A651289D5C9
	for <lists+cake@lfdr.de>; Tue,  9 Apr 2024 11:45:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0A5DD3CB43;
	Tue,  9 Apr 2024 05:45:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1712655907;
	bh=ScIqjxLebXiOBBRa7+dsIEK0SpKjjEnbamQXwCbIjAg=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=i1BaIn1km7etSjNjupjb1I3i5bDP/AfXg5Xv7QMGb2X0U0J3mJRtcCKvkm9fq/tSs
	 kewAXNWzkfsDxGiBePkkmM5fQSbNZ85Edz7AQqrsjEfxg+55QnT9as9dJUds8PVz+v
	 Q3J9aRq0rLCb2KUmG72FiCjEqoA1/DMXl/ZizhXer3YTjxwTWi0ezmfP/thu3aL70/
	 xn1Oq5XmBPiOiQ5pNHcoeWPoo926ysufRbI9/O+ExofaTqfhJclpYIMImn+hPn4he2
	 xymU/eE1UkTjqLGzyLZOI13ixYwMMDpWSej0iL7Ka0skiAx+KQkUBhSB02VTqEKyzm
	 V3Vlo0l+zPNpw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3686E3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Apr 2024 05:45:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1712655903; bh=7OKr4HycDUeB/zx8rBNu9gxtoijefw8jgpd7xIePUfQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=J1tiPFsk9FCwNjYBmljWSGdsrXeJyiwirEHHvVen2Uh35VRFDdhBPVG/RTTXdPoAX
 TMvFcJZQp1aTUYf7YWbBs0EUMw2yoFF6BqJrv0G/VR2OClsb9aGPFG861t6Y6FGrbG
 DrFBoHao4ZKGjsRrj6QWwLz5FwetZ+g640M8Kg3QKJePV/PTEVpHUjYzoFMKLDmVug
 c4scIHdjgRqCs4saDZgRX/EydaWn/d0G3iqKvciQ00iyzwyQip0TAig02Tih5S0jxQ
 loYscQccqiVg93MfmS+G6HSO2UvFFznIZvVlToA+jujb58tzsTFVcIbPaRLI03zK5j
 gNbooxZuWXj2Q==
To: Kuan-Wei Chiu <visitorckw@gmail.com>
In-Reply-To: <20240408174716.751069-1-visitorckw@gmail.com>
References: <20240408174716.751069-1-visitorckw@gmail.com>
Date: Tue, 09 Apr 2024 11:45:03 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <871q7ehnts.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next v2] net: sched: cake: Optimize the
 number of function calls and branches in heap construction
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 jserv@ccns.ncku.edu.tw, cake@lists.bufferbloat.net, edumazet@google.com,
 Kuan-Wei Chiu <visitorckw@gmail.com>, kuba@kernel.org,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

S3Vhbi1XZWkgQ2hpdSA8dmlzaXRvcmNrd0BnbWFpbC5jb20+IHdyaXRlczoKCj4gV2hlbiBjb25z
dHJ1Y3RpbmcgYSBoZWFwLCBoZWFwaWZ5IG9wZXJhdGlvbnMgYXJlIHJlcXVpcmVkIG9uIGFsbAo+
IG5vbi1sZWFmIG5vZGVzLiBUaHVzLCBkZXRlcm1pbmluZyB0aGUgaW5kZXggb2YgdGhlIGZpcnN0
IG5vbi1sZWFmIG5vZGUKPiBpcyBjcnVjaWFsLiBJbiBhIGhlYXAsIHRoZSBsZWZ0IGNoaWxkJ3Mg
aW5kZXggb2Ygbm9kZSBpIGlzIDIgKiBpICsgMQo+IGFuZCB0aGUgcmlnaHQgY2hpbGQncyBpbmRl
eCBpcyAyICogaSArIDIuIE5vZGUgQ0FLRV9NQVhfVElOUyAqCj4gQ0FLRV9RVUVVRVMgLyAyIGhh
cyBpdHMgbGVmdCBhbmQgcmlnaHQgY2hpbGRyZW4gYXQgaW5kZXhlcwo+IENBS0VfTUFYX1RJTlMg
KiBDQUtFX1FVRVVFUyArIDEgYW5kIENBS0VfTUFYX1RJTlMgKiBDQUtFX1FVRVVFUyArIDIsCj4g
cmVzcGVjdGl2ZWx5LCB3aGljaCBhcmUgYmV5b25kIHRoZSBoZWFwJ3MgcmFuZ2UsIGluZGljYXRp
bmcgaXQgYXMgYQo+IGxlYWYgbm9kZS4gQ29udmVyc2VseSwgbm9kZSBDQUtFX01BWF9USU5TICog
Q0FLRV9RVUVVRVMgLyAyIC0gMSBoYXMgYQo+IGxlZnQgY2hpbGQgYXQgaW5kZXggQ0FLRV9NQVhf
VElOUyAqIENBS0VfUVVFVUVTIC0gMSwgY29uZmlybWluZyBpdHMKPiBub24tbGVhZiBzdGF0dXMu
IFRoZSBsb29wIHNob3VsZCBzdGFydCBmcm9tIGl0IHNpbmNlIGl0J3Mgbm90IGEgbGVhZgo+IG5v
ZGUuCj4KPiBCeSBzdGFydGluZyB0aGUgbG9vcCBmcm9tIENBS0VfTUFYX1RJTlMgKiBDQUtFX1FV
RVVFUyAvIDIgLSAxLCB3ZQo+IG1pbmltaXplIGZ1bmN0aW9uIGNhbGxzIGFuZCBicmFuY2ggY29u
ZGl0aW9uIGV2YWx1YXRpb25zLiBUaGlzCj4gYWRqdXN0bWVudCB0aGVvcmV0aWNhbGx5IHJlZHVj
ZXMgdHdvIGZ1bmN0aW9uIGNhbGxzIChvbmUgZm9yCj4gY2FrZV9oZWFwaWZ5KCkgYW5kIGFub3Ro
ZXIgZm9yIGNha2VfaGVhcF9nZXRfYmFja2xvZygpKSBhbmQgZml2ZSBicmFuY2gKPiBldmFsdWF0
aW9ucyAob25lIGZvciBpdGVyYXRpbmcgYWxsIG5vbi1sZWFmIG5vZGVzLCBvbmUgd2l0aGluCj4g
Y2FrZV9oZWFwaWZ5KCkncyB3aGlsZSBsb29wLCBhbmQgdGhyZWUgbW9yZSB3aXRoaW4gdGhlIHdo
aWxlIGxvb3AKPiB3aXRoIGlmIGNvbmRpdGlvbnMpLgo+Cj4gU2lnbmVkLW9mZi1ieTogS3Vhbi1X
ZWkgQ2hpdSA8dmlzaXRvcmNrd0BnbWFpbC5jb20+CgpBY2tlZC1ieTogVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
