Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E48209DE4
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 13:55:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 485F13CB48;
	Thu, 25 Jun 2020 07:55:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593086113;
	bh=sAdf+LAo0hZvwVNchZt0bQDGBa3liVZpLpNZhukfH4E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T+OTAHAEowgZDpLFgM8hIghd7lJIOgmqYers7iNIins8zThRLHNJ+dKMDuuo2D4CC
	 Wof0HGflq2kuuERS5udCntvGmg77HGh6kuQTSMnyzKnzYSgEnjg+Q+k1YCR4eeFZEn
	 ExnDFQW5hh1uq/5LlY83gpuLZuSbWFnV+rNwCw+xvrNHQRlhudEqPgudOHrTtcrS2P
	 1iJj/ZzPPgfDU1rhqx7qwt6hUC7p4QArtEojy+Spy4wzTKM3SwdLmiwTYHW0CKsxAd
	 Jj1psCllvWr0+eUAL/qBA2UTrWZS85jrScXJbBl0SXlaL8pDAI38ctDRxPcS1/KJDt
	 VZzaMDT9yEWSw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E5E7E3CB38
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 07:55:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593086111;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=FrhYzHLW7BVQFkvK7yiMz5rnJnbaI4pxVM6OhAm1FIw=;
 b=bBF/5aUn09rERubYnv0kx2jRm4sCPYqSH6AsszuQ0VoZUI5eINgbo1blNVIyeIG1BILjno
 lWXrF99WE0gVduWXeLei9DFD23zOtDqeKQHrWT9ysQ2Wo29ZYuDL1qeVldlIaE8Wajqkp1
 razKo7Rc3pcS3nmqEVbS/n4HPchfb8o=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-303-TVKS-ZJbNJqdelKcxelBUA-1; Thu, 25 Jun 2020 07:55:08 -0400
X-MC-Unique: TVKS-ZJbNJqdelKcxelBUA-1
Received: by mail-wm1-f71.google.com with SMTP id v6so4595377wmg.1
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 04:55:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=FrhYzHLW7BVQFkvK7yiMz5rnJnbaI4pxVM6OhAm1FIw=;
 b=WrxCFnsTFa2kRh3vWkTIhhasu90aRdG1UpGv6pbf9dUDBJU8WBldnaVvG6vKdIi1RK
 FxMzW82I8r5FTKi8rmuMgzSIL6ou7GtcOYMFqs9YXmEAFBce92mzcSmLb3KOt1In/E3g
 9Nf6hZbVsToXz6eTHR1AekpTe/Ylxwupz3oOnnzP6Z3nZna7Tn+HqpDDrobYyTvzAVmS
 ZoG9ZxUWf9i0e+vJkm0nRy5AJ9AkENirF6y5g1HbBSMdKc7gantAdFrW5CEu/zKRzMrJ
 Qp0E481WTrKgwer7xLnvxAO3Jj018BINCH/APpyv7tA5O5Hm5n/S/3O7lI5SYZqIfBYc
 fymg==
X-Gm-Message-State: AOAM5327PWTuWgwCdMX/iHi8cH0JADn7D2Yc7lWBCBN5ILmsJDNa0kxd
 XIZ/HFId8wHwXUqaN4zkZO4mcdL7Tc6haQu+4TVNjD5pHa+W42VFola210OXfBbc1E7ZDKzAjXP
 WXrjn4wDBgPsXRJUyiUbdCQ==
X-Received: by 2002:a1c:a512:: with SMTP id o18mr2957476wme.101.1593086107906; 
 Thu, 25 Jun 2020 04:55:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzghTwCojJWr3fMyWpX7kfDT3VpN5vDKr5bfXVlyuC67AIo1/1PaZuCytx1yQTaYI+YKNmIyA==
X-Received: by 2002:a1c:a512:: with SMTP id o18mr2957454wme.101.1593086107643; 
 Thu, 25 Jun 2020 04:55:07 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id u65sm12700916wmg.5.2020.06.25.04.55.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 04:55:06 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DADD71814F9; Thu, 25 Jun 2020 13:55:02 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 13:55:02 +0200
Message-ID: <159308610282.190211.9431406149182757758.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next 0/5] sched: A series of fixes and
 optimisations for sch_cake
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

SGkgRGF2ZQoKVGhpcyBzZXJpZXMgY29udGFpbnMgYSBudW1iZXIgb2YgZml4ZXMgYW5kIG9wdGlt
aXNhdGlvbnMgZm9yIHNjaF9jYWtlIHRoYXQgd2UndmUKYWNjdW11bGF0ZWQgaW4gdGhlIG91dC1v
Zi10cmVlIHZlcnNpb24uIFNlZSB0aGUgaW5kaXZpZHVhbCBwYXRjaCBkZXNjcmlwdGlvbnMKZm9y
IG1vcmUgZGV0YWlscy4KClRoZSBmaXJzdCB0aHJlZSBwYXRjaGVzIGluIHRoZSBzZXJpZXMgYXJl
IGNhbmRpZGF0ZXMgZm9yIGluY2x1c2lvbiBpbnRvIHN0YWJsZS4KCi1Ub2tlCgotLS0KCklseWEg
UG9uZXRheWV2ICgyKToKICAgICAgc2NoX2Nha2U6IGZpeCBJUCBwcm90b2NvbCBoYW5kbGluZyBp
biB0aGUgcHJlc2VuY2Ugb2YgVkxBTiB0YWdzCiAgICAgIHNjaF9jYWtlOiBkb24ndCB0cnkgdG8g
cmVhbGxvY2F0ZSBvciB1bnNoYXJlIHNrYiB1bmNvbmRpdGlvbmFsbHkKCktldmluIERhcmJ5c2hp
cmUtQnJ5YW50ICgxKToKICAgICAgc2NoX2Nha2U6IGFkZCBSRkMgODYyMiBMRSBQSEIgc3VwcG9y
dCB0byBDQUtFIGRpZmZzZXJ2IGhhbmRsaW5nCgpUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gKDIp
OgogICAgICBzY2hfY2FrZTogZG9uJ3QgY2FsbCBkaWZmc2VydiBwYXJzaW5nIGNvZGUgd2hlbiBp
dCBpcyBub3QgbmVlZGVkCiAgICAgIHNjaF9jYWtlOiBmaXggYSBmZXcgc3R5bGUgbml0cwoKCiBu
ZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDY2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRp
b25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
