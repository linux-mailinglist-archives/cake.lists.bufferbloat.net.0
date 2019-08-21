Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 812E498014
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:29:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8407C3CB38;
	Wed, 21 Aug 2019 12:29:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566404983;
	bh=9mEtJrGs+Nt3rlfdWuj4VOveET+27PEg8woAXL3chmo=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U5FXAug8ha1r0CmF4ZBB9P+gAsG8zKchRHXR3P9KRQmpz2FtfXIGfClKHtqWGEK83
	 m56qm8DYiy482ouIDAjZ0nKbfGYExL3F5z15nyEAsw6S0oveFcsK+YS99e53e8JidS
	 HKO1C38Hm/9gXSca6YBLnk+lROFi/Jt0g191Lfr4iIQrD1t8ZRVjjj7zDqsvhffUUQ
	 wztRI4Ob50C/faNSRZow84VJg5iI+qCsMTTpliS+kDgqIZj36YL7esM5hArE0e7Rij
	 +lAjkjF5UdZX8z3m1248c10WlA3imQMiL/rU7WXLvkmYs7iwDAxSu0S45YggDtAw5i
	 HiwJ8fANS+XpQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 759B33CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 12:29:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=VFNcIwxkfHBccozRe2YXQUySEO3SMQyWz90AEquOtHw=; 
 b=g3nORIU3IyFTzms5nDoBnaJJwr0xmHNdAZ65jUeBYMD6vC30hKytVvmUkzycMvpRfffw0OAE13cmWFtCW/Mmx4wBZSbD+8p/+a+5yvlj1W424LOwRkvLeu/lWfD3AAwajPWcj3xOrJ++4IuBFniS8vSzccrLPXNLVZ/8HIYl/lM=;
To: Sebastian Moeller <moeller0@gmx.de>, cake@lists.bufferbloat.net,
 Dave Taht <dave.taht@gmail.com>, Jonathan Morton <chromatix99@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
Date: Wed, 21 Aug 2019 18:28:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0TUa-00082M-SC; Wed, 21 Aug 2019 18:29:48 +0200
Subject: Re: [Cake] pie in dd-wrt
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIxLjA4LjIwMTkgdW0gMTg6MjEgc2NocmllYiBTZWJhc3RpYW4gTW9lbGxlcjoKPgo+IE9u
IEF1Z3VzdCAyMSwgMjAxOSA2OjEyOjAzIFBNIEdNVCswMjowMCwgU2ViYXN0aWFuIEdvdHRzY2hh
bGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+PiB0aGF0cyByYXRoZXIg
b2xkLiBpIHJld3JvdGUgYWxsIHRoZSBxb3MgY29kZSBpbiB0aGUgbGFzdCA0IG9yIDUgZGF5cy4K
Pj4gc28KPj4gdGhpbmdzIG1pZ2h0IGJlIGNoYW5nZWQuIG5leHQgcGhhc2UgaXMgYnJpbmdpbmcg
YWxsIHRoZSBsaW5rIGxldmVsCj4+IGRldGFpbCBjb25maWd1cmF0aW9uIHN0dWZmIGludG8gdGhl
IGd1aSB3aGljaCB3aWxsIGJlIGRvbmUKPj4gdG9tb3Jyb3cgb3IgYXQgbGVhc3Qgc3RpbGwgd2l0
aGluIHRoaXMgd2Vlay4KPj4gaSBhbHNvIGFkZGVkIG5vdyBjYWtlIHRvIHNvbWUgc21hbGxlciBs
b3cgYnVkZ2VkIHJvdXRlcnMgd2l0aCBsaW1pdGVkCj4+IHJlc291cmNlcywgc28gc2VlIGhvdyBp
dCBydW5zLiBpIGhhZCBiYWQgZXhwZXJpZW5jZXMgd2l0aCBmcV9jb2RlbCBpbgo+PiB0aGUgcGFz
dCBkdWUgc29tZSBoaWdoIG1lbW9yeSB1c2FnZS4KPj4gZXNwZWNpYWxseSBzaW5jZSBpdHMgaGFy
ZCBjb2RlZCBzb21ld2hhdCBpbnRvIHRoZSB3aXJlbGVzcyBhdGg5awo+PiBkcml2ZXIuCj4+IHNv
IGkgYWxyZWFkeSBtb2RkZWQgaXQgZm9yIG1vcmUgZWZmaWNpZW50IGhhbmRsaW5nLiA0IG1iIG1h
eCBwZXIgcXVldWUKPj4gaXMgc2ltcGx5IHRvbyBtdWNoIGZvcsKgIGEgMzIgbWIgcmFtIGJhc2Vk
IHJvdXRlci4KPiBUaGlzIGlzIHdoeSBJJ20gc3FtIHdlIHJlZHVjZWQgdGhlIHF1ZXVlZCBwYWNr
ZXQgbWF4aW11bSBtIHRvIGFyb3VuZCAxMDAwLCBhbmQgYWxzbyB3aHkgY2FrZSBoYXMgYW4gZXhw
bGljaXQgbWVtbGltaXQga2V5d29yZC4KeWVhaCBidXQgZG9lcyB0aGlzIGhlbHAgaWYgZnFfY29k
ZWwgaXMgaGFyZGNvZGVkIGludG8gbWFjODAyMTE/IGZxX2NvZGVsIApoYXMgYSBtZW1saW1pdMKg
IGtleXdvcmQgdG9vIGJ0dy4gaXRzIGZpeGVkIHRvIDRNQi4gaSByZWR1Y2VkIGl0IHRvIDI1Nmti
IApvbiBsb3cgbWVtb3J5IGFyY2hpdGVjdHVyZXMuIG5vIG90aGVyIHdheSB0byBnZXQgYXJvdW5k
IE9PTSBwcm9ibGVtcwptYWM4MDIxMcKgIGRvZXMgYWx3YXlzIG1ha2UgdXNlIG9mIGZxX2NvZGVs
LiBpdCBoYXMgYSBvd24gYnVpbGQgaW4gCmltcGxlbWVudGF0aW9uCj4KPiBCZXN0IFJlZ2FyZHMK
PiAgICAgICAgICBTZWJhc3RpYW4KPgo+Cj4+Cj4+IFNlYmFzdGlhbgo+Pgo+PiBBbSAyMS4wOC4y
MDE5IHVtIDE3OjQyIHNjaHJpZWIgRGF2ZSBUYWh0Ogo+Pj4gdGhpcyBzaG93cyBzb21lIGdvb2Qg
cmVzdWx0cyB3aXRoIHBpZSBvbiB0aGUgZG93bmxvYWQKPj4+Cj4+Pgo+PiBodHRwczovL2ZvcnVt
LmRkLXdydC5jb20vcGhwQkIyL3ZpZXd0b3BpYy5waHA/dD0zMTM4ODYmcG9zdGRheXM9MCZwb3N0
b3JkZXI9YXNjJnN0YXJ0PTMwJnNpZD00ZDRkMmE1ODNhZmFkNzM3NTljYmVlZTFhOGY0YjMyOQo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IENh
a2UgbWFpbGluZyBsaXN0Cj4+PiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+Pj4gaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBDYWtlIG1haWxpbmcgbGlzdAo+PiBD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
