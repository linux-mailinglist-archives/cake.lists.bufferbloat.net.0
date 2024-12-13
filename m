Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 004B39FDAAD
	for <lists+cake@lfdr.de>; Sat, 28 Dec 2024 14:25:55 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 476B13CBC5;
	Sat, 28 Dec 2024 08:25:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1735392347;
	bh=CIbXhmcbm2rFstt1eRDVa90tbySYoylrX+cP1nAkNuo=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=CmgrS7l5ZdvL1dS9KltNIfxNvosz1eWnvRJR+NAhi9PrMdBYlD26BawCeFH4M3gXI
	 l5sqiQS/116xzESfWU716iAWDGMdMekCME3WtY2WShD+THk6q+t8cqznBMeHNUI+vG
	 YHssATmRBdfm5XROE+iie3jaYDDbMKDVOxzRHC7cmhR8bP3bIMic6seeMQx9B8Yxyc
	 NCQzMmO698uDnYArgHzK+BhneJfDX7J+Lpnoo4TBSEC8oYVN8c8hBwYaiy45j3v6Zq
	 s1O8c3c7AS/Kreq7GicXZ1/93oh7lZ+Reiug+2QeSDko3x5mRp846xrjPgKqdYiPNW
	 LtpHkI0gpIlhQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D04BA3CB38
 for <cake@lists.bufferbloat.net>; Thu, 12 Dec 2024 21:50:17 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B7A535C6A08;
 Fri, 13 Dec 2024 02:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4B6BC4CED3;
 Fri, 13 Dec 2024 02:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1734058216;
 bh=uF8gD77/oBBSt1MgUvW46lb83D/2Yj1ts134dEabqbU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=XGLk+ELXdFAeSP5NDi5iFSzBT62/HEeRvgGJ0YRBZ9yAYUZ+ldFN6wA8N1OVriokO
 stsDJCkx2JTwDFgqsFB+8rXcK0ZVgChsDeFrUBwsSSPvkI9tnWijLT/MRW+GhNtYr5
 rXhfLDRvKFXAYJFAP3e6Ed52uuwJFo0PUmqI+TlaMofzt/999ZAY19kIcxarNTWkMS
 rNw01B8rvvD9PzJN0cP7/PCIN+o0YQrCM3MjMkXaDe2LmHWg5l47k7RXJ+Z3S6URUe
 d0/oyP30tUo57lxeumTVZUWogXZiD5ivv0rHxeOtjEMCcWMZmutZzzb+x/qYdYA2Ue
 k5tsNZ3x6oZFQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33E6A380A959; Fri, 13 Dec 2024 02:50:34 +0000 (UTC)
MIME-Version: 1.0
Message-Id: <173405823301.2517381.3836983297088707226.git-patchwork-notify@kernel.org>
Date: Fri, 13 Dec 2024 02:50:33 +0000
References: <20241211-cake-drop-reason-v2-1-920afadf4d1b@redhat.com>
In-Reply-To: <20241211-cake-drop-reason-v2-1-920afadf4d1b@redhat.com>
To: =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
X-Mailman-Approved-At: Sat, 28 Dec 2024 08:25:46 -0500
Subject: Re: [Cake] [PATCH net-next v2] net_sched: sch_cake: Add drop reasons
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
From: patchwork-bot+netdevbpf--- via Cake <cake@lists.bufferbloat.net>
Reply-To: patchwork-bot+netdevbpf@kernel.org
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, edumazet@google.com, horms@kernel.org,
 xiyou.wangcong@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKG1h
aW4pCmJ5IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OgoKT24gV2VkLCAxMSBEZWMg
MjAyNCAxMToxNzowOSArMDEwMCB5b3Ugd3JvdGU6Cj4gQWRkIHRocmVlIHFkaXNjLXNwZWNpZmlj
IGRyb3AgcmVhc29ucyBhbmQgdXNlIHRoZW0gaW4gc2NoX2Nha2U6Cj4gCj4gIDEpIFNLQl9EUk9Q
X1JFQVNPTl9RRElTQ19PVkVSTElNSVQKPiAgICAgV2hlbmV2ZXIgdGhlIHRvdGFsIHF1ZXVlIGxp
bWl0IGZvciBhIHFkaXNjIGluc3RhbmNlIGlzIGV4Y2VlZGVkCj4gICAgIGFuZCBhIHBhY2tldCBp
cyBkcm9wcGVkIHRvIG1ha2Ugcm9vbS4KPiAKPiAgMikgU0tCX0RST1BfUkVBU09OX1FESVNDX0NP
TkdFU1RFRAo+ICAgICBXaGVuZXZlciBhIHBhY2tldCBpcyBkcm9wcGVkIGJ5IHRoZSBxZGlzYyBB
UU0gYWxnb3JpdGhtIGJlY2F1c2UKPiAgICAgY29uZ2VzdGlvbiBpcyBkZXRlY3RlZC4KPiAKPiBb
Li4uXQoKSGVyZSBpcyB0aGUgc3VtbWFyeSB3aXRoIGxpbmtzOgogIC0gW25ldC1uZXh0LHYyXSBu
ZXRfc2NoZWQ6IHNjaF9jYWtlOiBBZGQgZHJvcCByZWFzb25zCiAgICBodHRwczovL2dpdC5rZXJu
ZWwub3JnL25ldGRldi9uZXQtbmV4dC9jL2E0MmQ3MWUzMjJhOAoKWW91IGFyZSBhd2Vzb21lLCB0
aGFuayB5b3UhCi0tIApEZWV0LWRvb3QtZG90LCBJIGFtIGEgYm90LgpodHRwczovL2tvcmcuZG9j
cy5rZXJuZWwub3JnL3BhdGNod29yay9wd2JvdC5odG1sCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=
