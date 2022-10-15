Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CD35FFBFF
	for <lists+cake@lfdr.de>; Sat, 15 Oct 2022 23:25:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 121723CB39;
	Sat, 15 Oct 2022 17:25:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665869121;
	bh=RkLvBBGLwN6ANczOepBkuRabrpQsFjZ0JTurqGtRkN4=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Sv6yhURyANYrIVtsfx8yMObA2xgEDS3RGrGOgN0z9plq8LDI6DmIq3ik6gU04Q4AZ
	 ctH4Z2O8IEtGjDw5rakkhCH3pClxwcHrnwcpLpDsp5ncw7uCII/kkoKrBfjAtvQ2p1
	 y3dex9HQujkD96SlIsIACTDhFIf2+PxYkpdZcPS0LB8lZQ3dg93ZNKUvTL5M/JV62i
	 Fe8yUP+rWeyd1SiBk3n8IdQEsFBEkchk4gJYMgSt+JoKXVZXeRwsZtpmFkqgGQjw8f
	 dn1cZqvwVUPaEwTSgfN9OZq+Ut8PqG3IV3lKXAV3NeGNKLGPMzp3JoeoZgE6U63yqh
	 oBi+PmIdizFJg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from web.heavenlysanctuary.com (web.heavenlysanctuary.com
 [131.239.108.70])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 642073B29E
 for <cake@lists.bufferbloat.net>; Sat, 15 Oct 2022 17:25:19 -0400 (EDT)
Received: from [192.168.10.101] (unknown [47.145.161.70])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by web.heavenlysanctuary.com (Postfix) with ESMTPSA id 4MqbrZ4Nnxz5DlXJ
 for <cake@lists.bufferbloat.net>; Sat, 15 Oct 2022 14:25:18 -0700 (PDT)
Message-ID: <0a6b898a-1a4c-0134-369b-26cb6bca3b06@heavenlysanctuary.com>
Date: Sat, 15 Oct 2022 14:25:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: cake@lists.bufferbloat.net
References: <CAA93jw7RfrLMrAEzT7-_rrtOM2-7-kUy3HDfDqy+S0uydWfFsA@mail.gmail.com>
In-Reply-To: <CAA93jw7RfrLMrAEzT7-_rrtOM2-7-kUy3HDfDqy+S0uydWfFsA@mail.gmail.com>
X-Spam-Status: No, score=-1.0 required=3.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=4.0.0-rc3
X-Spam-Checker-Version: SpamAssassin 4.0.0-rc3 (2022-09-22) on
 web.heavenlysanctuary.com
Subject: Re: [Cake] cake anecdote from firewalla
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
From: Marco Belmonte via Cake <cake@lists.bufferbloat.net>
Reply-To: Marco Belmonte <marco@heavenlysanctuary.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TE9MISBMb3ZlIHJlYWRpbmcgc3R1ZmYgbGlrZSB0aGlzIC0gdGhhbmtzIGZvciBzaGFyaW5nLCBE
YXZlIQoKT24gMTAvMTQvMjAyMiA0OjQyIFBNLCBEYXZlIFRhaHQgdmlhIENha2Ugd3JvdGU6Cj4g
Ik15IGZhdm9yaXRlIGFuZWNkb3RlIHJlZ2FyZGluZyBDQUtFIGlzIG9uZSB0aW1lIEkgc3RhcnRl
ZCBhIEIyIGJhY2t1cAo+IGZyb20gbXkgTkFTIGFuZCByZW1vdmVkIGFsbCBkZXZpY2Utc2lkZSB1
cGxvYWQgcmVzdHJpY3Rpb25zICh3aGljaAo+IHdvdWxkIG5vcm1hbGx5IHJlbmRlciB0aGUgaW50
ZXJuZXQgdW51c2FibGUgZnJvbSB0aGF0IHBvaW50IG9uKS4gVGhlbgo+IEkgZmlyZWQgdXAgbnZp
ZGlhJ3MgZ2FtZSBzdHJlYW1pbmcgb24gdGhlIFNoaWVsZCB0byB0cnkgdGhlIFRvbWIKPiBSYWlk
ZXIgZGVtby4gTG9uZyBzdG9yeSBzaG9ydCwgYW4gaG91ciBpbnRvIHRoZSBnYW1lcGxheSBJIGZv
cmdvdCBJCj4gd2FzIGV2ZW4gcnVubmluZyB0aGUgYmFja3VwICh3aGljaCB3YXMgc3RpbGwgcnVu
bmluZyBmdWxsIHRpbHQpLiBUaGF0Cj4gd2FzIHRoZSBtb21lbnQgSSBrbmV3IENBS0Ugd2FzIHRo
ZSBoaWxsIEkgd291bGQgZGllIG9uLiIgLQo+IGh0dHBzOi8vd3d3LnJlZGRpdC5jb20vci9maXJl
d2FsbGEvY29tbWVudHMveTIyNTd2L2Nha2VfZm9yX3NtYXJ0X3F1ZXVlcy8KPgo+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
