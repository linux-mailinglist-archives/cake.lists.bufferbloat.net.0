Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B8C2141E6
	for <lists+cake@lfdr.de>; Sat,  4 Jul 2020 01:10:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 906253CB45;
	Fri,  3 Jul 2020 19:09:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593817799;
	bh=X5XOMRXYwvuluFXz1O+/c3RFqQHO7DhA9AYsZcmJZxc=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d0K7/jQMHd4NT5OCUEsg9Yf2eewCrbvQjn4tgHJd9oWZk145qqB8bru4X6nGimNOE
	 RzDQAXfGGLpdKy0Drl/hiUJjNMtedbUkRKZpYsgf5+OaUxPI+qitYq1BCQbbwWvqBy
	 DwvfPIFmmP7owrcXe/T98Xi2wn9orlIjjtX3xCnofJ6RDBZpvdvIOrQmvnj2fcAM73
	 eMsDppGf0NwEZkZPskWuvbeg4e/HBW/pbrDrPCUrexwtdi7Yh4gtfAXnc/7u8vEWNE
	 qoym2cyW60cyXph7SOpC88828QTqarroFJc3ZBsoST2mbU81zOnz6/TSwBlz4f/CSR
	 V7wuBxJF6kjXA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 723C73B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 17:35:42 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0F60F155CAC70;
 Fri,  3 Jul 2020 14:35:41 -0700 (PDT)
Date: Fri, 03 Jul 2020 14:35:38 -0700 (PDT)
Message-Id: <20200703.143538.815540028775269364.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200703202643.12919-1-toke@redhat.com>
References: <20200703202643.12919-1-toke@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 Jul 2020 14:35:41 -0700 (PDT)
X-Mailman-Approved-At: Fri, 03 Jul 2020 19:09:58 -0400
Subject: Re: [Cake] [PATCH net v3] sched: consistently handle layer3 header
 accesses in the presence of VLANs
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
Cc: brakmo@fb.com, dcaratti@redhat.com, jiri@resnulli.us,
 netdev@vger.kernel.org, jhs@mojatatu.com, cake@lists.bufferbloat.net,
 mrv@mojatatu.com, i.ponetaev@ndmsystems.com, xiyou.wangcong@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IEZy
aSwgIDMgSnVsIDIwMjAgMjI6MjY6NDMgKzAyMDAKCj4gVGhlcmUgYXJlIGEgY291cGxlIG9mIHBs
YWNlcyBpbiBuZXQvc2NoZWQvIHRoYXQgY2hlY2sgc2tiLT5wcm90b2NvbCBhbmQgYWN0Cj4gb24g
dGhlIHZhbHVlIHRoZXJlLiBIb3dldmVyLCBpbiB0aGUgcHJlc2VuY2Ugb2YgVkxBTiB0YWdzLCB0
aGUgdmFsdWUgc3RvcmVkCj4gaW4gc2tiLT5wcm90b2NvbCBjYW4gYmUgaW5jb25zaXN0ZW50IGJh
c2VkIG9uIHdoZXRoZXIgVkxBTiBhY2NlbGVyYXRpb24gaXMKPiBlbmFibGVkLiBUaGUgY29tbWl0
IHF1b3RlZCBpbiB0aGUgRml4ZXMgdGFnIGJlbG93IGZpeGVkIHRoZSB1c2VycyBvZgo+IHNrYi0+
cHJvdG9jb2wgdG8gdXNlIGEgaGVscGVyIHRoYXQgd2lsbCBhbHdheXMgc2VlIHRoZSBWTEFOIGV0
aGVydHlwZS4KPiAKPiBIb3dldmVyLCBtb3N0IG9mIHRoZSBjYWxsZXJzIGRvbid0IGFjdHVhbGx5
IGhhbmRsZSB0aGUgVkxBTiBldGhlcnR5cGUsIGJ1dAo+IGV4cGVjdCB0byBmaW5kIHRoZSBJUCBo
ZWFkZXIgdHlwZSBpbiB0aGUgcHJvdG9jb2wgZmllbGQuIFRoaXMgbWVhbnMgdGhhdAo+IHRoaW5n
cyBsaWtlIGNoYW5naW5nIHRoZSBFQ04gZmllbGQsIG9yIHBhcnNpbmcgZGlmZnNlcnYgdmFsdWVz
LCBzdG9wcwo+IHdvcmtpbmcgaWYgdGhlcmUncyBhIFZMQU4gdGFnLCBvciBpZiB0aGVyZSBhcmUg
bXVsdGlwbGUgbmVzdGVkIFZMQU4KPiB0YWdzIChRaW5RKS4KPiAKPiBUbyBmaXggdGhpcywgY2hh
bmdlIHRoZSBoZWxwZXIgdG8gdGFrZSBhbiBhcmd1bWVudCB0aGF0IGluZGljYXRlcyB3aGV0aGVy
Cj4gdGhlIGNhbGxlciB3YW50cyB0byBza2lwIHRoZSBWTEFOIHRhZ3Mgb3Igbm90LiBXaGVuIHNr
aXBwaW5nIFZMQU4gdGFncywgd2UKPiBtYWtlIHN1cmUgdG8gc2tpcCBhbGwgb2YgdGhlbSwgc28g
YmVoYXZpb3VyIGlzIGNvbnNpc3RlbnQgZXZlbiBpbiBRaW5RCj4gbW9kZS4KPiAKPiBUbyBtYWtl
IHRoZSBoZWxwZXIgdXNhYmxlIGZyb20gdGhlIEVDTiBjb2RlLCBtb3ZlIGl0IHRvIGlmX3ZsYW4u
aCBpbnN0ZWFkCj4gb2YgcGt0X3NjaGVkLmguCj4gCj4gdjM6Cj4gLSBSZW1vdmUgZW1wdHkgbGlu
ZXMKPiAtIE1vdmUgdmxhbiB2YXJpYWJsZSBkZWZpbml0aW9ucyBpbnNpZGUgbG9vcCBpbiBza2Jf
cHJvdG9jb2woKQo+IC0gQWxzbyB1c2Ugc2tiX3Byb3RvY29sKCkgaGVscGVyIGluIElQeyw2fV9F
Q05fZGVjYXBzdWxhdGUoKSBhbmQKPiAgIGJwZl9za2JfZWNuX3NldF9jZSgpCj4gCj4gdjI6Cj4g
LSBVc2UgZXRoX3R5cGVfdmxhbigpIGhlbHBlciBpbiBza2JfcHJvdG9jb2woKQo+IC0gQWxzbyBm
aXggY29kZSB0aGF0IHJlYWRzIHNrYi0+cHJvdG9jb2wgZGlyZWN0bHkKPiAtIENoYW5nZSBhIGNv
dXBsZSBvZiAnaWYvZWxzZSBpZicgc3RhdGVtZW50cyB0byBzd2l0Y2ggY29uc3RydWN0cyB0byBh
dm9pZAo+ICAgY2FsbGluZyB0aGUgaGVscGVyIHR3aWNlCj4gCj4gUmVwb3J0ZWQtYnk6IElseWEg
UG9uZXRheWV2IDxpLnBvbmV0YWV2QG5kbXN5c3RlbXMuY29tPgo+IEZpeGVzOiBkOGI5NjA1ZDI2
OTcgKCJuZXQ6IHNjaGVkOiBmaXggc2tiLT5wcm90b2NvbCB1c2UgaW4gY2FzZSBvZiBhY2NlbGVy
YXRlZCB2bGFuIHBhdGgiKQo+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUByZWRoYXQuY29tPgoKTG9va3MgZ29vZCwgYXBwbGllZCBhbmQgcXVldWVkIHVwIGZv
ciAtc3RhYmxlLgoKVGhhbmtzIQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
