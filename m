Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC112F23B
	for <lists+cake@lfdr.de>; Fri,  3 Jan 2020 01:35:13 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 77F8F3CB38;
	Thu,  2 Jan 2020 19:35:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578011711;
	bh=MzTd5qa2ln1w5m9/6bwu+1E4gVv8Hu0PrYh/tqZxPg0=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U365nbyTYUU57ZkGZaRpOQ060uhtmFQcwRIGqPGeFbASLdK8mXgEkVNiHSsopGTrT
	 5euIFK/sDUf8DYLRSmiWtD+Vm42Rm51UpBtRflNH6D8ifj2nfQSOKIEpUNv8JusCmU
	 9vPrFwR2RkiRpe71/22PRWUNSp/dihWGS4HTFFDpUlPk3rHvJ7EcIOrS1ujFEHf88b
	 zxT5xPc0WGP24ul28+C/Bp/vsRpMGLZ9AxTghw2ZjNFx/Hv7pcCOMVXN9xeL47ZOdG
	 MXznhhfl3+1nIVHQ0BH446siyzhTEuYfz3PmMeQg6EGc7UnEiqi5g+ICx+MBA06Ej7
	 IfXI6BPvr2RVA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 73FAB3B29E
 for <cake@lists.bufferbloat.net>; Thu,  2 Jan 2020 19:35:10 -0500 (EST)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0F6AA1572A419;
 Thu,  2 Jan 2020 16:35:08 -0800 (PST)
Date: Thu, 02 Jan 2020 16:35:07 -0800 (PST)
Message-Id: <20200102.163507.404343273086201773.davem@davemloft.net>
To: wenyang@linux.alibaba.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200102092143.8971-1-wenyang@linux.alibaba.com>
References: <20200102092143.8971-1-wenyang@linux.alibaba.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 02 Jan 2020 16:35:08 -0800 (PST)
Subject: Re: [Cake] [PATCH] sch_cake: avoid possible divide by zero in
 cake_enqueue()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 cake@lists.bufferbloat.net, ldir@darbyshire-bryant.me.uk,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogV2VuIFlhbmcgPHdlbnlhbmdAbGludXguYWxpYmFiYS5jb20+CkRhdGU6IFRodSwgIDIg
SmFuIDIwMjAgMTc6MjE6NDMgKzA4MDAKCj4gVGhlIHZhcmlhYmxlcyAnd2luZG93X2ludGVydmFs
JyBpcyB1NjQgYW5kIGRvX2RpdigpCj4gdHJ1bmNhdGVzIGl0IHRvIDMyIGJpdHMsIHdoaWNoIG1l
YW5zIGl0IGNhbiB0ZXN0Cj4gbm9uLXplcm8gYW5kIGJlIHRydW5jYXRlZCB0byB6ZXJvIGZvciBk
aXZpc2lvbi4KPiBUaGUgdW5pdCBvZiB3aW5kb3dfaW50ZXJ2YWwgaXMgbmFub3NlY29uZHMsCj4g
c28gaXRzIGxvd2VyIDMyLWJpdCBpcyByZWxhdGl2ZWx5IGVhc3kgdG8gZXhjZWVkLgo+IEZpeCB0
aGlzIGlzc3VlIGJ5IHVzaW5nIGRpdjY0X3U2NCgpIGluc3RlYWQuCj4gCj4gRml4ZXM6IDcyOThk
ZTljZDcyNSAoInNjaF9jYWtlOiBBZGQgaW5ncmVzcyBtb2RlIikKPiBTaWduZWQtb2ZmLWJ5OiBX
ZW4gWWFuZyA8d2VueWFuZ0BsaW51eC5hbGliYWJhLmNvbT4KCkFwcGxpZWQgYW5kIHF1ZXVlZCB1
cCBmb3IgLXN0YWJsZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
