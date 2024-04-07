Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 236FD89B2CC
	for <lists+cake@lfdr.de>; Sun,  7 Apr 2024 18:10:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 551B53CB41;
	Sun,  7 Apr 2024 12:10:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1712506208;
	bh=xHFNpBdchvEdHMoqG4LC/FnhOpbtOxY9Vtn/r97hGkQ=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Y8qnmIMc84IH7xmBr7U778ghiy5NHkf9dQfcT5Yi2Nk71/HJXoowvlMuGMOGKwPCP
	 6RCl+kN9szG76vSKKk2EjLaRy27/ni1cjtksE81j6/oFpHG9M6sWfzpry9ca+7dLt1
	 zg4FdngTK8eiEuXt4a1V0XW76n/ragg5UBrocq0RT8BHpe5r0QkTf8giADv7IzpwXQ
	 XFyv2dly+GjZDL1lgD7TWgX/jfLoVG1FiXTh4McR0xYDoacAPRH4nlVls/mr1zHign
	 LCLrktvvX2I3yAz2REVOrVKPa1L8CLU8m9HP8rjmoSjfx3A7nov8oQQJSjZeWukAxG
	 KAzKQoGKdWf4A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A53943CB38
 for <cake@lists.bufferbloat.net>; Sun,  7 Apr 2024 12:10:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1712506205; bh=jRHmiYZioEwTqHzvjz9ABYHfiTrjg7+dvZ5R454o5LU=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=CeTS4FKglAx+piMHVKigJkdCDiiM1bokhQAM9Q5pZWIb4AZP+M8uh0y3zUBI2swey
 1Y5rmf+F3PYKcb9ngrPTadUwe4m0mcsAZwO5BFsGhxXgr1473SlczVyX3X5UnHfDJJ
 FXDPz2t98/zRjgjTMPNDtQZAdA1PX7RidonG7j1GvTXUETxWSBWweovpu7gzxd6I63
 1nGtkjqQoyWImhDp3OTfoVGhybpPro2b0nSgpM+GzeWtMzEOau/1QrpHHIyj5ftP6b
 rQk3oes8bDqLriOLkddTTpQ8gr+NIVy38njV5/ZB06gQKu/hg44FZR6kQtVDAHwUA0
 hqdD0pk/c5FWA==
To: Kuan-Wei Chiu <visitorckw@gmail.com>
In-Reply-To: <20240406235532.613696-1-visitorckw@gmail.com>
References: <20240406235532.613696-1-visitorckw@gmail.com>
Date: Sun, 07 Apr 2024 18:10:04 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87frvxgnmr.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] net: sched: cake: Optimize number of
 calls to cake_heapify()
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

S3Vhbi1XZWkgQ2hpdSA8dmlzaXRvcmNrd0BnbWFpbC5jb20+IHdyaXRlczoKCj4gSW1wcm92ZSB0
aGUgbWF4LWhlYXAgY29uc3RydWN0aW9uIHByb2Nlc3MgYnkgcmVkdWNpbmcgdW5uZWNlc3NhcnkK
PiBoZWFwaWZ5IG9wZXJhdGlvbnMuIFNwZWNpZmljYWxseSwgYWRqdXN0IHRoZSBzdGFydGluZyBj
b25kaXRpb24gZnJvbQo+IG4gLyAyIHRvIG4gLyAyIC0gMSBpbiB0aGUgbG9vcCB0aGF0IGl0ZXJh
dGVzIG92ZXIgYWxsIG5vbi1sZWFmCj4gZWxlbWVudHMuCgpQbGVhc2UgYWRkIGFuIGV4cGxhbmF0
aW9uIGZvciB3aHkgdGhpcyBjaGFuZ2UgaXMgY29ycmVjdCwgYW5kIHdoeSBpdCBpcwpiZW5lZmlj
aWFsLiAiSW1wcm92ZSIgYW5kICJ1bm5lY2Vzc2FyeSIgaXMgd2F5IHRvbyBpbXBsaWNpdC4KCnB3
LWJvdDogY3IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
