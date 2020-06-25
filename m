Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE2B20A8C9
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 01:25:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 50B7A3CB38;
	Thu, 25 Jun 2020 19:25:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593127526;
	bh=8Fqgo4n0XGSn5m93XWFjhx1MdiIzbgQQ1ks3kjnO68I=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H3iiyt7i0wQCg05J1TpsZEWMy5Zv3O6v7ZkDZVo83RDi2yM4ZnWRORvApXdPOSFgg
	 u2qB+NCkwdBahH0qATtONTCvxr+EJS2mPh1dirVXwwuayELG0+NvWJcLL/rdGfAVOg
	 YB1pOL2+jRC7qaep/VluMaOWRKY9VeQnvgBoy9zo/AVpZaI83B70V6AUV5tn7UC3ws
	 fzNW1cNTp3ZnihJBfjEoxVW+JvBD1aq98rrq6MKBNc0me8v1X0pfIbRyBx6THAVRQj
	 I/ArQIsRLxB2jqOY1GcWK6xQbc9manBoj/PzxZD6PpCF1115DzrPgtn7/PESk4SVW+
	 5HrpXqYUHAR1w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5F79C3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 19:25:25 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BB294154B29C4;
 Thu, 25 Jun 2020 16:25:22 -0700 (PDT)
Date: Thu, 25 Jun 2020 16:25:21 -0700 (PDT)
Message-Id: <20200625.162521.1969089330932064146.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <159311592607.207748.5904268231642411759.stgit@toke.dk>
References: <159311592607.207748.5904268231642411759.stgit@toke.dk>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 25 Jun 2020 16:25:22 -0700 (PDT)
Subject: Re: [Cake] [PATCH net 0/3] sched: A couple of fixes for sch_cake
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IFRo
dSwgMjUgSnVuIDIwMjAgMjI6MTI6MDYgKzAyMDAKCj4gVGhpcyBzZXJpZXMgY29udGFpbnMgYSBj
b3VwbGUgb2YgZml4ZXMgZm9yIGRpZmZzZXJ2IGhhbmRsaW5nIGluIHNjaF9jYWtlIHRoYXQKPiBw
cm92aWRlIGEgbmljZSBzcGVlZHVwICh3aXRoIGEgc29tZXdoYXQgcGVkYW50aWMgbml0IGZpeCB0
YWNrZWQgb24gdG8gdGhlIGVuZCkuCj4gCj4gTm90IHF1aXRlIHN1cmUgYWJvdXQgd2hldGhlciB0
aGlzIHNob3VsZCBnbyB0byBzdGFibGU7IGl0IGRvZXMgcHJvdmlkZSBhIG5pY2UKPiBzcGVlZHVw
LCBidXQgaXQncyBub3Qgc3RyaWN0bHkgYSBmaXggaW4gdGhlICJjb3JyZWN0bmVzcyIgc2Vuc2Uu
IEkgbGVhbiB0b3dhcmRzCj4gaW5jbHVkaW5nIHRoaXMgaW4gc3RhYmxlIGFzIHdlbGwsIHNpbmNl
IG91ciBtb3N0IGltcG9ydGFudCBjb25zdW1lciBvZiB0aGF0Cj4gKE9wZW5XcnQpIGlzIGxpa2Vs
eSB0byBiYWNrcG9ydCB0aGUgc2VyaWVzIGFueXdheS4KClNlcmllcyBhcHBsaWVkIGFuZCBxdWV1
ZWQgdXAgZm9yIC1zdGFibGUsIHRoYW5rcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
