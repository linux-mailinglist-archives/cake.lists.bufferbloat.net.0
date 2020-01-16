Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E720A13E93B
	for <lists+cake@lfdr.de>; Thu, 16 Jan 2020 18:37:13 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6A2963CB38;
	Thu, 16 Jan 2020 12:37:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1579196232;
	bh=ABb8lh+XiB6IdqvPWA8/qKkDoPNiuF1YG/PYQupmdWw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y80NMu0gwauZPqUgLY0pRYJ20l2HY6PGUhWYJmJNOhnjCxnzj/MhkHGH462zeOwoE
	 bmVUmMoR9WuYNJPvICS6jNf8bEQdsRDMdpSWKBhM15zqCW9BS5xJaadmjBjVwTidGR
	 uVrLRV1SrM7Y/mV4hM5kVh4s0UkongKyfEjwDMtS9iDokHRmBZUowBwWFKVf3Oze7t
	 4kJtXO99QalC/8JcK8oM5eqaSV8YiVqD/20P6wDp4ilv2z2DSAXMv1vUerMGMDyV+P
	 TESRaNkPW8PiyQxr5aTHQCS8HIlRhlHzqhzqAPvZ00uBcK7Znb5LoSm1bcrJSTGF7j
	 Ocv91z2zjLPzw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A08E63B2A4
 for <cake@lists.bufferbloat.net>; Thu, 16 Jan 2020 11:54:21 -0500 (EST)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B4C9205F4;
 Thu, 16 Jan 2020 16:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193660;
 bh=bmRdvpHD39WBfm6lyhHhVIBGEfuGksgspOgTMV/qZjA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i/oXsbNinds7DSo4J5C7vSQMg8GB/TGVYrtbnw6yjuyNZO21BnSfgnGc7xgaZKBE0
 LcTvxoluul+X5BeaKI5K61RBHHq/1+qW63EtrHxQWbXif3q4QOpeEH1zRlXms5gaO9
 OBKS1YiRm8+qh7AON7mOCF26Sp7WyWeWfnQGJd/0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 16 Jan 2020 11:42:43 -0500
Message-Id: <20200116164300.6705-188-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Approved-At: Thu, 16 Jan 2020 12:37:10 -0500
Subject: [Cake] [PATCH AUTOSEL 5.4 188/205] sch_cake: Add missing NLA policy
	entry TCA_CAKE_SPLIT_GSO
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Florent Fourcot <florent.fourcot@wifirst.fr>, cake@lists.bufferbloat.net,
 Victorien Molle <victorien.molle@wifirst.fr>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVmljdG9yaWVuIE1vbGxlIDx2aWN0b3JpZW4ubW9sbGVAd2lmaXJzdC5mcj4KClsgVXBz
dHJlYW0gY29tbWl0IGIzYzQyNGViNmExYTNjNDg1ZGU2NDYxOTQxOGE0NzFkZWU2Y2U4NDkgXQoK
VGhpcyBmaWVsZCBoYXMgbmV2ZXIgYmVlbiBjaGVja2VkIHNpbmNlIGludHJvZHVjdGlvbiBpbiBt
YWlubGluZSBrZXJuZWwKClNpZ25lZC1vZmYtYnk6IFZpY3RvcmllbiBNb2xsZSA8dmljdG9yaWVu
Lm1vbGxlQHdpZmlyc3QuZnI+ClNpZ25lZC1vZmYtYnk6IEZsb3JlbnQgRm91cmNvdCA8ZmxvcmVu
dC5mb3VyY290QHdpZmlyc3QuZnI+CkZpeGVzOiAyZGI2ZGMyNjYyYmEgInNjaF9jYWtlOiBNYWtl
IGdzby1zcGxpdHRpbmcgY29uZmlndXJhYmxlIGZyb20gdXNlcnNwYWNlIgpBY2tlZC1ieTogVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IERh
dmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KU2lnbmVkLW9mZi1ieTogU2FzaGEg
TGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQv
c2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IGRkMGU4NjgwYjAzMC4uMjI3
NzM2OWZlYWU1IDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2No
ZWQvc2NoX2Nha2UuYwpAQCAtMjE4NCw2ICsyMTg0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBu
bGFfcG9saWN5IGNha2VfcG9saWN5W1RDQV9DQUtFX01BWCArIDFdID0gewogCVtUQ0FfQ0FLRV9N
UFVdCQkgPSB7IC50eXBlID0gTkxBX1UzMiB9LAogCVtUQ0FfQ0FLRV9JTkdSRVNTXQkgPSB7IC50
eXBlID0gTkxBX1UzMiB9LAogCVtUQ0FfQ0FLRV9BQ0tfRklMVEVSXQkgPSB7IC50eXBlID0gTkxB
X1UzMiB9LAorCVtUQ0FfQ0FLRV9TUExJVF9HU09dCSA9IHsgLnR5cGUgPSBOTEFfVTMyIH0sCiAJ
W1RDQV9DQUtFX0ZXTUFSS10JID0geyAudHlwZSA9IE5MQV9VMzIgfSwKIH07CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
