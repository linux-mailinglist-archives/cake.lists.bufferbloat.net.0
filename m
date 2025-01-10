Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2649AA09B8E
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 20:06:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A4ED73CB39;
	Fri, 10 Jan 2025 14:06:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736536003;
	bh=HqWKISWbXziGnBIA1OfnVBeLEXmfL6jLFDB9D7+g2jo=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BlFj9Iju2FphTR4vDg4XPVejOGpFyR9oizldp5Yxoy1r9X8sHW0gz4nVBLcA0wayW
	 uhuHvsEjwI2KdmjuHA7WJWTXUxdg4cCAjty4h+8l4VZYEFarAHHqv/Db2xWw0p7rTx
	 ZulIrEFK/W0BBvT940xhWLWBBmmH0541+7MjPGxNx1F9C6rtUDO34Qxame/c1hRSfl
	 cL21oSG48QJXNIDHpY8d38Bd6HKNH6oouKTC5YI/lTrF5k6Q51sIP0yYh3U2tbnEb1
	 ngR6O5p6TiByKo6cM5Rx2r5IF6c5pjOHkYIxy8IpcQM6K5wAV8xgZUKBwlEys+x/Md
	 0Jl0bOM2e60yg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 759E83B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 14:06:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1736536000; bh=qvX1+j6yNE11POaTQoCavgYvPEMbYzdCpCYQFl5ghoY=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=zDJZBpUcuz/1hL7DlgLKlCao4Z1JqaJcZlWVI12ZHKWHKbZkhPSnzViEpTG07Ag9O
 cV23fGTC1YuoprIYl5HrGoLX31gTJYdBp3fnZ3MFRiXQZJAQ5Hl0njpnn7w8VsZD9m
 tMsmQWzDbgTlCDu5m8KA779wZCooZbnQ03CDBVKjXU/X40Mk/a18vWdkNqYBKTaZPB
 yQwfA2QHbG4ZDv9lW4GbNGmLITrCJVxQBx+vJe9lda7qXS2+93xDbJwvfUnSwd2Pbc
 mheHZBBYDwlGHicoVgyWZsE25OH4wekRwqBwtaNl+dnecwRtvku6IWvhB9MkvjdsjU
 0j/VDvQZtNo9A==
To: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>
In-Reply-To: <20250110155531.300303-1-toke@redhat.com>
References: <20250110155531.300303-1-toke@redhat.com>
Date: Fri, 10 Jan 2025 20:06:40 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87plkuh4jj.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
Cc: netdev@vger.kernel.org, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gRnJv
bTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+Cj4gQ2FrZSdzIGRpZmZzZXJ2NCBt
b2RlIGF0dGVtcHRlZCB0byBmb2xsb3cgdGhlIElFVEYgd2VicnRjCj4gUW9TIG1hcmtpbmcgc3Rh
bmRhcmRzLCBSRkM4ODM3Lgo+Cj4gSXQgdHVybnMgb3V0IFdpbmRvd3MgUW9TIGNhbiBvbmx5IHVz
ZSBDUzAsIENTMSwgQ1M1LCBhbmQgQ1M3Lgo+Cj4gWm9vbSBkZWZhdWx0cyB0byB1c2luZyBDUzUg
Zm9yIHZpZGVvIGFuZCBzY3JlZW4gc2hhcmluZyB0cmFmZmljLgo+Cj4gQnVtcCBDUzQsIENTNSwg
YW5kIE5RQiB0byB0aGUgdmlkZW8gdGluICgyKSBpbiBkaWZmc2VydjQgbW9kZSwgZm9yCj4gbW9y
ZSBiYW5kd2lkdGggYW5kIGxvd2VyIHByaW9yaXR5Lgo+Cj4gVGhpcyBhbHNvIGJldHRlciBhbGln
bnMgd2l0aCBob3cgV2lGaSBwcmVzZW50bHkgdHJlYXRzIENTNSBhbmQgTlFCLgo+Cj4gU2lnbmVk
LW9mZi1ieTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgoKQWxyaWdodCwgdGhl
cmUgd2FzIHNvbWUgZGlzY3Vzc2lvbiBvbiB0aGUgY2FrZSBsaXN0IHJlOiB0aGlzLiBQbGVhc2UK
ZHJvcC4KCnB3LWJvdDogY2hhbmdlcy1yZXF1ZXN0ZWQKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
