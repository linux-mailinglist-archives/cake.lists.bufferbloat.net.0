Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AB220A918
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 01:31:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA8CB3CB38;
	Thu, 25 Jun 2020 19:31:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593127916;
	bh=UOGUpasb8rAQz5eKWowuxIzOODtd8O/eTQ9sHzWMZGM=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HtS+gefcbZzyffdv9FgmqiNcZb1wpFKqOVka6OeondD1Wa5UOQEfmaj3te41c9yL0
	 zbl02ln2fbFRu3eWKBg4pWDLg5ZPxgaAxSSvVVfCPpdM7i0j1PxjUxf/fhCIyqbIUX
	 3nmkqHHMsE+NGYZ9u5+qaJP5B9iqlVLugkYF0VC2cuVZwOd/MHV9KnOVgqwa9kHF+i
	 m3PJbcJf7D5qh/41cOGxMXVcQ1TT4r0Sw8BRem1BvZtOg/DDf2TknDuKhc1qJK0Gs0
	 9LGe52vHDlIcDSyim2Xfwt5x4Bn04tnztDmJnh4e0SeU3LD1HyCNb1/ahTKDxeT9lt
	 bP08GjEbQOscg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0C5D33B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 19:31:55 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0BD5E154FE830;
 Thu, 25 Jun 2020 16:31:55 -0700 (PDT)
Date: Thu, 25 Jun 2020 16:31:54 -0700 (PDT)
Message-Id: <20200625.163154.920576324128273596.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200625201800.208689-1-toke@redhat.com>
References: <20200625201800.208689-1-toke@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 25 Jun 2020 16:31:55 -0700 (PDT)
Subject: Re: [Cake] [PATCH RESEND net-next] sch_cake: add RFC 8622 LE PHB
 support to CAKE diffserv handling
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 ldir@darbyshire-bryant.me.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IFRo
dSwgMjUgSnVuIDIwMjAgMjI6MTg6MDAgKzAyMDAKCj4gRnJvbTogS2V2aW4gRGFyYnlzaGlyZS1C
cnlhbnQgPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUudWs+Cj4gCj4gQ2hhbmdlIHRpbiBtYXBw
aW5nIG9uIGRpZmZzZXJ2MywgNCAmIDggZm9yIExFIFBIQiBzdXBwb3J0LCBpbiBlc3NlbmNlCj4g
bWFraW5nIExFIGEgbWVtYmVyIG9mIHRoZSBCdWxrIHRpbi4KPiAKPiBCdWxrIGhhcyB0aGUgbGVh
c3QgcHJpb3JpdHkgYW5kIG1pbmltdW0gb2YgMS8xNnRoIHRvdGFsIGJhbmR3aWR0aCBpbiB0aGUK
PiBmYWNlIG9mIGhpZ2hlciBwcmlvcml0eSB0cmFmZmljLgo+IAo+IE5COiBEaWZmc2VydiAzICYg
NCBzd2FwIHRpbiAwICYgMSBwcmlvcml0aWVzIGZyb20gdGhlIGRlZmF1bHQgb3JkZXIgYXMKPiBm
b3VuZCBpbiBkaWZmc2VydjgsIGluIGNhc2UgYW55b25lIGlzIHdvbmRlcmluZyB3aHkgaXQgbG9v
a3MgYSBiaXQgb2RkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtldmluIERhcmJ5c2hpcmUtQnJ5YW50
IDxsZGlyQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPgo+IFsgcmV3b3JkIGNvbW1pdCBtZXNzYWdl
IHNsaWdodGx5IF0KPiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRv
a2VAcmVkaGF0LmNvbT4KCkFwcGxpZWQsIHRoYW5rcyEKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
