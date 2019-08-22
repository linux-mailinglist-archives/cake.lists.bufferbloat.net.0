Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09F98F18
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 11:18:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 829883CB38;
	Thu, 22 Aug 2019 05:18:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566465523;
	bh=hDszyvuJ8i6iCHQGAoJkeTDETuCv2OUiPS80n72h+Is=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R1X7QQW3YVtTPbW0Tg6eN3Y4/sBnAiKJwc79IBYhCw9M5JztYGjORWhrivqruxqrC
	 h/hp6AUElogay+JofZlEZ2srktFWvbPW8HUB8Ep1xkx8tJaWHodZ35z0WpVSigVWQj
	 5wH8vEXOIj+JdFs6YRrFmuzQ+6dMUVVQ2+kzODSK3v8OPl7sJtK2NUfvAjLbf67xH5
	 KaonTGYKgjwH+p/I36ZeMzAv8IOFpV801g4gWi5tyjgx+PSfGCkMy1ZESGuhwOO+Cp
	 jf7Ly5Y/qK2RpUZDqaIKAuJdJgxHK+RKja9o1pkwSQhs9Ke/+IBbYkLFR92YtHe0ZQ
	 chRh/NA8+rMhA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8AA063CB35
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 05:18:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=DOuixlDBPwBh5bJ4UIdRG5mEuv4h2RuOwM5DeKpK544=; 
 b=iIBmGOy7RkmN7dGwXHyNM0Es0BR1DpohCmXE+ZIoszCK28aNZ3pP/x87uT/KT9YXjYDvdmfEbgK1+SdwfuP1fR29ohgNiS0W+C+QrIdomoLt8egRuGYq8mvBNWj0ZVLGH2OTyCgBDx+Mct4f0lnO1UlaQXw9jLqOygslT+91tDM=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Sebastian Moeller <moeller0@gmx.de>, cake@lists.bufferbloat.net,
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
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87wof6p595.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <0cd1c3ea-6ef5-3293-0b65-58cb1e4871eb@newmedia-net.de>
Date: Thu, 22 Aug 2019 11:17:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87wof6p595.fsf@toke.dk>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0jF2-0003J9-4z; Thu, 22 Aug 2019 11:18:48 +0200
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

CkFtIDIxLjA4LjIwMTkgdW0gMjM6Mzkgc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdy
aXRlczoKPgo+PiBBbSAyMS4wOC4yMDE5IHVtIDE4OjIxIHNjaHJpZWIgU2ViYXN0aWFuIE1vZWxs
ZXI6Cj4+PiBPbiBBdWd1c3QgMjEsIDIwMTkgNjoxMjowMyBQTSBHTVQrMDI6MDAsIFNlYmFzdGlh
biBHb3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPj4+PiB0
aGF0cyByYXRoZXIgb2xkLiBpIHJld3JvdGUgYWxsIHRoZSBxb3MgY29kZSBpbiB0aGUgbGFzdCA0
IG9yIDUgZGF5cy4KPj4+PiBzbwo+Pj4+IHRoaW5ncyBtaWdodCBiZSBjaGFuZ2VkLiBuZXh0IHBo
YXNlIGlzIGJyaW5naW5nIGFsbCB0aGUgbGluayBsZXZlbAo+Pj4+IGRldGFpbCBjb25maWd1cmF0
aW9uIHN0dWZmIGludG8gdGhlIGd1aSB3aGljaCB3aWxsIGJlIGRvbmUKPj4+PiB0b21vcnJvdyBv
ciBhdCBsZWFzdCBzdGlsbCB3aXRoaW4gdGhpcyB3ZWVrLgo+Pj4+IGkgYWxzbyBhZGRlZCBub3cg
Y2FrZSB0byBzb21lIHNtYWxsZXIgbG93IGJ1ZGdlZCByb3V0ZXJzIHdpdGggbGltaXRlZAo+Pj4+
IHJlc291cmNlcywgc28gc2VlIGhvdyBpdCBydW5zLiBpIGhhZCBiYWQgZXhwZXJpZW5jZXMgd2l0
aCBmcV9jb2RlbCBpbgo+Pj4+IHRoZSBwYXN0IGR1ZSBzb21lIGhpZ2ggbWVtb3J5IHVzYWdlLgo+
Pj4+IGVzcGVjaWFsbHkgc2luY2UgaXRzIGhhcmQgY29kZWQgc29tZXdoYXQgaW50byB0aGUgd2ly
ZWxlc3MgYXRoOWsKPj4+PiBkcml2ZXIuCj4+Pj4gc28gaSBhbHJlYWR5IG1vZGRlZCBpdCBmb3Ig
bW9yZSBlZmZpY2llbnQgaGFuZGxpbmcuIDQgbWIgbWF4IHBlciBxdWV1ZQo+Pj4+IGlzIHNpbXBs
eSB0b28gbXVjaCBmb3LCoCBhIDMyIG1iIHJhbSBiYXNlZCByb3V0ZXIuCj4+PiBUaGlzIGlzIHdo
eSBJJ20gc3FtIHdlIHJlZHVjZWQgdGhlIHF1ZXVlZCBwYWNrZXQgbWF4aW11bSBtIHRvIGFyb3Vu
ZCAxMDAwLCBhbmQgYWxzbyB3aHkgY2FrZSBoYXMgYW4gZXhwbGljaXQgbWVtbGltaXQga2V5d29y
ZC4KPj4geWVhaCBidXQgZG9lcyB0aGlzIGhlbHAgaWYgZnFfY29kZWwgaXMgaGFyZGNvZGVkIGlu
dG8gbWFjODAyMTE/IGZxX2NvZGVsCj4+IGhhcyBhIG1lbWxpbWl0wqAga2V5d29yZCB0b28gYnR3
LiBpdHMgZml4ZWQgdG8gNE1CLiBpIHJlZHVjZWQgaXQgdG8gMjU2a2IKPj4gb24gbG93IG1lbW9y
eSBhcmNoaXRlY3R1cmVzLiBubyBvdGhlciB3YXkgdG8gZ2V0IGFyb3VuZCBPT00gcHJvYmxlbXMK
Pj4gbWFjODAyMTHCoCBkb2VzIGFsd2F5cyBtYWtlIHVzZSBvZiBmcV9jb2RlbC4gaXQgaGFzIGEg
b3duIGJ1aWxkIGluCj4+IGltcGxlbWVudGF0aW9uCj4gVGhlIG1hYzgwMjExIGltcGxlbWVudGF0
aW9uIGFsc28gaGFzIGEgbWVtbGltaXQgcGFyYW1ldGVyLiBZb3UgY2FuIHNldAo+IGl0IHRocm91
Z2ggZGVidWdmcyAtIDJNQiB3b3VsZCBiZToKPgo+IGVjaG8gMjA5NzE1MiA+IC9zeXMva2VybmVs
L2RlYnVnL2llZWU4MDIxMS9waHkwL2FxbQo+Cj4gb3IgdGhyb3VnaCBpdzoKPgo+IGl3IHBoeSBw
aHkwIHNldCB0eHEgbWVtb3J5X2xpbWl0IDIwOTcxNTIKPgo+IFRoZSBubDgwMjExIGF0dHJpYnV0
ZSBpcyBjYWxsZWQgTkw4MDIxMV9BVFRSX1RYUV9NRU1PUllfTElNSVQuCmFzIGkgc2FpZCBpIGFs
cmVhZHkgbW9kaWZpZWQgbWFjODAyMTEgaW4gYSB3YXkgdGhhdCBpdCBzZXRzIHNhbmUgbWVtb3J5
IApsaW1pdHMgZGVwZW5kaW5nIG9uIHRoZSBhcmNoaXRlY3R1cmUuIGRldmljZXMgd2l0aCBqdXN0
IDMyIG1iIHJhbSBydW4gCm9ubHkgc3RhYmxlIHdpdGggMjU2a2IgbWVtb3J5IGxpbWl0LgpzbyBp
IGNvbmZpZ3VyZWQgZGlmZmVyZW50IGRlZmF1bHRzLiBidXQgdGhlIHBvaW50IGlzIHN0aWxsIHRo
YXQgZm9yIGEgCnN0YW5kYXJkIHVzZXIgKGxldHMgc2F5IGluIG9wZW53cnQpIHRoZSBjdXJyZW50
IGltcGxlbWVudGF0aW9uIGlzIG5vdCAKZ29vZC4gc29tZXdoZXJlIGluIHRoZSBvcGVud3J0IGNv
bW11bml0eSBpIHdhcyByZWFkaW5nIHRoYXQgc3VjaCBkZXZpY2VzIApzaG91bGQgbm90IGJlIHVz
ZWQgYW55bW9yZSBmb3Igb3BlbndydCBkdWUgdGhlIG1lbW9yeSBsaW1pdGF0aW9ucy4gYnV0IAp0
aGF0cyBubyBzb2x1dGlvbiBmb3IgbWUgaWYgaXQgd2FzIHdvcmtpbmcgYmVmb3JlIHRoZSBpbnRy
b2R1Y3Rpb24gb2YgCmZxX2NvZGVsIGluIG1hYzgwMjExCj4KPiAtVG9rZQo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
