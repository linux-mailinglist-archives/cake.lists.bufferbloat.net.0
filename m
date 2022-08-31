Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF345A7A23
	for <lists+cake@lfdr.de>; Wed, 31 Aug 2022 11:25:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5D9AF3CB40;
	Wed, 31 Aug 2022 05:25:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661937909;
	bh=LSdpJioEGVxXtY+43UNvyyP9h8RpKGr+4+eSbab6lIE=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=jUnG/Nwa/tV+Ndgz33h36DwlUKqyIoF5SFoYLkEtC0X2tv+biX4JjaPwIIrr6mjfa
	 RQI1irDMSt0BImSY11XBPu36GvOEcX/w6ILiLai+s4kXcKeCOzRhSVhNykHjmmF6MH
	 QYu/PFkYVSOhFoB6aGlQr5gE0ApzR54ADh50s8hncohWeThhQYmoW3wXhePB+8SPv2
	 cd3sRNLUNZlte17LEuDqifKl40VdlfLrCJqeLEdA8nSchBTAj4GvM7JlxoqyGBjyuH
	 OH+5ZrCL3YZVVIJuHzZNFaQQ8aNvnDSmOPwoIm6GdUaTd8ZWpNQdD295iStIiCKMyk
	 l11b+i+D+wbgg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0ECE73CB37
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 05:25:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1661937906; bh=I5/fq6vkP/nepW0u+VYbKDlqsot2GVFRmkHvf7btu28=;
 h=From:To:Cc:Subject:Date:From;
 b=n2aBdsTs+5FWQ8G3lzlSO1bc5x/hFjd8HViZvk3u1nY2F6rkvPi7sne3sl2NVuNSZ
 gTXvw2CVzopPKf2KcP5HS706dwlQoZ3zxcrzuw108rPCxY23iFdEnKJ7ntcyqH7vMt
 MNftI5lYo435N2jsMJC51ycDoRXjlUTS4K+hye6vWFrUFZ/jCRAKH26HhBdDHwoutF
 abmw269CNlLMTAqmFoxiiRI7y0hl6i0ZRq7UDtutBlSyrwT0YC9WiWy4Lt4R6MVq6d
 J3j56QiL+7K5g3x9jRHDGvjcX2rRGJOrP9UPZPxT/OlzqNDZL6xFK03eimDLzezg4X
 eB+q6k/Bkf3eA==
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 31 Aug 2022 11:21:03 +0200
Message-Id: <20220831092103.442868-1-toke@toke.dk>
MIME-Version: 1.0
Subject: [Cake] [PATCH net] sch_cake: Return __NET_XMIT_STOLEN when
	consuming enqueued skb
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
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: cake@lists.bufferbloat.net, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2hlbiB0aGUgR1NPIHNwbGl0dGluZyBmZWF0dXJlIG9mIHNjaF9jYWtlIGlzIGVuYWJsZWQsIEdT
TyBzdXBlcnBhY2tldHMKd2lsbCBiZSBicm9rZW4gdXAgYW5kIHRoZSByZXN1bHRpbmcgc2VnbWVu
dHMgZW5xdWV1ZWQgaW4gcGxhY2Ugb2YgdGhlCm9yaWdpbmFsIHNrYi4gSW4gdGhpcyBjYXNlLCBD
QUtFIGNhbGxzIGNvbnN1bWVfc2tiKCkgb24gdGhlIG9yaWdpbmFsIHNrYiwKYnV0IHN0aWxsIHJl
dHVybnMgTkVUX1hNSVRfU1VDQ0VTUy4gVGhpcyBjYW4gY29uZnVzZSBwYXJlbnQgcWRpc2NzIGlu
dG8KYXNzdW1pbmcgdGhlIG9yaWdpbmFsIHNrYiBzdGlsbCBleGlzdHMsIHdoZW4gaXQgcmVhbGx5
IGhhcyBiZWVuIGZyZWVkLiBGaXgKdGhpcyBieSBhZGRpbmcgdGhlIF9fTkVUX1hNSVRfU1RPTEVO
IGZsYWcgdG8gdGhlIHJldHVybiB2YWx1ZSBpbiB0aGlzIGNhc2UuCgpGaXhlczogMGM4NTAzNDRk
Mzg4ICgic2NoX2Nha2U6IENvbmRpdGlvbmFsbHkgc3BsaXQgR1NPIHNlZ21lbnRzIikKU2lnbmVk
LW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Ci0tLQogbmV0
L3NjaGVkL3NjaF9jYWtlLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25l
dC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IGE0M2E1OGE3M2QwOS4uYTA0OTI4MDgyZTRhIDEwMDY0
NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpA
QCAtMTcxMyw2ICsxNzEzLDcgQEAgc3RhdGljIHMzMiBjYWtlX2VucXVldWUoc3RydWN0IHNrX2J1
ZmYgKnNrYiwgc3RydWN0IFFkaXNjICpzY2gsCiAJfQogCWlkeC0tOwogCWZsb3cgPSAmYi0+Zmxv
d3NbaWR4XTsKKwlyZXQgPSBORVRfWE1JVF9TVUNDRVNTOwogCiAJLyogZW5zdXJlIHNoYXBlciBz
dGF0ZSBpc24ndCBzdGFsZSAqLwogCWlmICghYi0+dGluX2JhY2tsb2cpIHsKQEAgLTE3NzEsNiAr
MTc3Miw3IEBAIHN0YXRpYyBzMzIgY2FrZV9lbnF1ZXVlKHN0cnVjdCBza19idWZmICpza2IsIHN0
cnVjdCBRZGlzYyAqc2NoLAogCiAJCXFkaXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coc2NoLCAxLW51
bXNlZ3MsIGxlbi1zbGVuKTsKIAkJY29uc3VtZV9za2Ioc2tiKTsKKwkJcmV0IHw9IF9fTkVUX1hN
SVRfU1RPTEVOOwogCX0gZWxzZSB7CiAJCS8qIG5vdCBzcGxpdHRpbmcgKi8KIAkJY29iYWx0X3Nl
dF9lbnF1ZXVlX3RpbWUoc2tiLCBub3cpOwpAQCAtMTkwNCw3ICsxOTA2LDcgQEAgc3RhdGljIHMz
MiBjYWtlX2VucXVldWUoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IFFkaXNjICpzY2gsCiAJ
CX0KIAkJYi0+ZHJvcF9vdmVybGltaXQgKz0gZHJvcHBlZDsKIAl9Ci0JcmV0dXJuIE5FVF9YTUlU
X1NVQ0NFU1M7CisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIHN0cnVjdCBza19idWZmICpjYWtl
X2RlcXVldWVfb25lKHN0cnVjdCBRZGlzYyAqc2NoKQotLSAKMi4zNy4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==
