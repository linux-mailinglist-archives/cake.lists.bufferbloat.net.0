Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 501C5973C6
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:45:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7D1493CB39;
	Wed, 21 Aug 2019 03:45:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566373510;
	bh=1dI3bkC5LF/u56GDq9ERTJqbnWMG5fSItiUJa88FC0U=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ma7W9PKR8MaXDs4M/xLx9PhsBmrvBv4wRqI2S8h9uElUMhLEi5mEccUE5LTvAKaxx
	 PcmFHTwgEfO4YnP/xPBm5kY5pVumPIPX/B+msEiCQLElItf+VkEq8FQ50e5ssXTRd/
	 zzWI4XDofKs0kEuNArZkI/D7/J7wRyULm5ijzaJNN6iPYxvULpn4Yoo+n8l4v1qhmX
	 aDoPwKcAprKfNj77z82j1eqYTnSqipY1efLHJ0m96iLC1Jk5U9dm4e9AEbOqP0qcPU
	 2+ot4/IrcOXOujlOKLSPsSLn2aYIfliTEY+gFNDcG8aIDtJIMokM/7B2r20cYtQ/BX
	 ZhWKzotyp7RTA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 105753B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:45:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=vQQ8bY9kDhuvFSq5ny7Lzws0vVT5kI/c4wm1837ryMM=; 
 b=kc6rvrvAPXFtkyC6dUEUsV4HAiD0HUS+TLoqBGowim66UMHPoxmJqE6JitbyuFZ1SUBJaQuAM1gQP4CNFJiyC81QPgborVlc5UMDn6KrlnxzENoGdSNpJ606+3Y3Upi+tE1qz2Gs2iKXtBE/hytlpsiQXMF8zb3wzSOUmH2eGOg=;
To: Dave Taht <dave@taht.net>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <871rxfh0n8.fsf@taht.net>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <de030328-2f09-6496-98f0-ce9a9f5c7d0f@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:44:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <871rxfh0n8.fsf@taht.net>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0LIx-0006we-Co; Wed, 21 Aug 2019 09:45:15 +0200
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CnNvbWUgb24gY3B1LgoKPj4gZHNjcCBtaWdodCBiZSBwcm9ibGVtYXRpYyBmb3IgaXNwcyBsaWtl
IG9yYW5nZSBpbiBmcmFuY2UgYW5kIG90aGVyCj4+IGZpYmVyIGlzcHMgaSBoYXZlIGZvdW5kIGlu
IHNwYWluIGFuZCBuZXRoZXJsYW5kcy4KPj4gYWxsIHRoZXNlIGlzcHMgZXhwZWN0IGRzY3AgY2xh
c3NlcyB0byBiZSBzZXQgZm9yIG91dGJvdW5kIHRyYWZmaWMKPj4gZGVwZW5kaW5nIG9uIHRoZSB0
cmFmZmljIHR5cGUuIChpcHR2LCB2b2ljZSBhbmQgaW50ZXJuZXQpLiB0aGlzCj4+IHRvZ2V0aGVy
IGlzIGFsc28KPj4gbWFwcGVkIHRvIHZsYW4gcHJpb3JpdGllcyBhZ2FpbiBpbnRlcm5hbGx5LiBz
byB1c2luZyB0aGUgZHNjcCBiaXRzCj4+IG1pZ2h0IGJlIHByb2JsZW1hdGljIGZvciBjYWtlIHNp
bmNlIGl0IGNsZWFycyBvdXQgdGhlIGRzY3AgZmxhZ3MgYW5kCj4+IHNvIGludGVybmV0IHNpbXBs
eSBkb2VzbnQgd29yayBhbnltb3JlCj4+IGZvciB0aGVzZSBpc3BzIChvciBqdXN0IHdpdGggbW9k
ZW0gNTZrIHNwZWVkKQo+IEkgd291bGQgbG92ZSB0byBrbm93IG1vcmUgYWJvdXQgd2hhdCBkc2Nw
J3MgYXJlIGluIG1vcmUgY29tbW9uIHVzZSBhbmQKPiB3aGF0IGlzcHMgaW50ZW5kIGZvciB0aGVt
IHRvIGJlIGRvaW5nLiBjYWtlJ3MgZGVmYXVsdCBtYXBwaW5ncyBhcmUgdGhlCj4gcmVzdWx0IG9m
IG11Y2ggcmVhZGluZyBvZiBSRkNzLCBkZWJhdGUsIGFuZCBoZWFkYmFuZ2luZy4gVGhlICJtb2Rl
bCIKPiBjb25jZXB0IGlzIGVhc2lseSBleHRlbmRlZAoKYXMgaSBzYWlkLiBvcmFuZ2UgZmlicmUg
bGluZXMgaW4gZnJhbmNlIGFyZSB1c2luZyBkc2NwL3RvcyBtYXJraW5ncyBmb3IgCnZvaWNlLCBp
cHR2IGFuZCBpbnRlcm5ldC4gaWYgaXQgd291bGQgYmUganVzdCBpbmJvdW5kIG5vYm9keSB3b3Vs
ZCBjYXJlLgoKYnV0IG91dGdvaW5nIHRyYWZmaWMgbXVzdCBiZSBtYXJrZWQgYXMgd2VsbC4gZm9y
IGluaXRpYWwgZGhjcCBsZWFzZSBmcm9tIAp0aGlzIGlzcCB5b3UgbmVlZCB0byBtYXJrIGRoY3Ag
bWFya2V0cyB3aXRoIGRzY3AgNiBmb3IgaW5zdGFuY2UuIApvdGhlcndpc2UgeW91IGdldCBubyBy
ZXNwb25zZQp0aGUgZXhhY3Qgc2FtZSBwbGF0Zm9ybSBpcyB1c2VkIGluIHNwYWluIGFuZCBuZXRo
ZXJsYW5kcy4gYnV0IGkgY2Fubm90IApyZW1lbWJlciB0aGUgaXNwIG5hbWVzIGFueW1vcmUuIGJ1
dCBpdCB3YXMgYWx3YXlzIGZvciBmaWJlciBpc3BzCgo+IC9naXRodWIuY29tL2R0YWh0L2ZxX2Nv
ZGVsX2Zhc3QKPj4gaSByZXZpZXdlZCBpdCBhbmQgYWxzbyB0cmllZCB0byBjb21waWxlIGl0IHdp
dGggc3VjY2Vzcy4gcHJvYmxlbSBpcywKPj4gdGhhdCBjb2RlIHBhcnRzIG9mIGl0IGFyZSBsb29r
aW5nIHVuZmluaXNoZWQgd2l0aCBkZWJ1ZyBwcmludGtzIGV0Yy4KPj4gdGhpcyBpcyB3aHkgaSBz
dG9wcGVkIGF0IHRoYXQgcG9pbnQgc2luY2UgaSB0aG91Z2h0IGl0cwo+PiB1bmZpbmlzaGVkLiBi
dXQgaSBoYXZlIGFkZGVkIGl0IGFscmVhZHkgdG8gbXkgY29kZSB0cmVlIGFuZCBhZGRlZCB0aGUK
Pj4gcmVxdWlyZWQgcGFydHMgdG8gY29tcGlsZQo+PiBpdCB3aXRoIGFsbCBvZiBteSBrZXJuZWxz
IChjb21wYXQgbGF5ZXIgZm9yIG9sZGVyIGtlcm5lbHMgb3IgbGV0cyBzYXkKPj4gI2lmZGVmIGhl
bGwpCj4gVGh4ISBJdCdzIHVuZmluaXNoZWQsIGJ1dCBmdW5jdGlvbmFsLCBhcyBJIHNlZW1lZCB0
byBiZSB0aGUgb25seSBvbmUKPiB0aGF0IGhhZCBpbnRlcmVzdCBpbiByZXZpc2luZyBmcV9jb2Rl
bCBmdXJ0aGVyLCBhbmQgbGFjayB0aW1lIHRvCj4gYWN0dWFsbHkgYnVpbGQgYW5kIHByb2ZpbGUg
ZW1iZWRkZWQgdGFyZ2V0cy4KPgo+IEkndmUgbm90IGhlYXJkIG9mICJub3J0aHN0YXIiPwppdHMg
dGhlIGNvZGVuYW1lIGZvciB0aGUgY3B1IGFybXY3IHBsYXRmb3JtIG9mIGJyb2FkY29tIHdoaWNo
IGlzIG91dCAKc2luY2UgbWFueSB5ZWFycy4KCnlvdSBtYXkga25vdyBpdCB1bmRlciB0aGUgbmFt
ZSBiY200NzA5LiB0aGV5IGFyZSBjb21taW5nIGFsbW9zdCB3aXRoIApkdWFsY29yZSBmcm9tIDgw
MCAtIDE0MDAgbWh6CgoKPgo+IEkgaGF2ZSB0byBhZG1pdCBJJ20gbW9zdGx5IGludGVyZXN0ZWQg
aW4gYmVuY2htYXJrcyBmcm9tIHRoZSBuZXdlcgo+IHBsYXRmb3Jtcy4gSGF2ZSBub3QgYmVlbiBr
ZWVwaW5nIHVwIHdpdGggdGhlIHN0YXRlIG9mIHRoZSBhcnQgaGVyZS4KPgo+IEl0IHNlZW1lZCBi
ZXR0ZXIgdG8gbWFrZSBjYWtlIGFzIHBlcmZlY3QgYXMgY291bGQgYmUgYW5kIHdhaXQgZm9yIHRo
ZSBodwo+IHRvIGNhdGNodXAuIEF0IHRoZSB0aW1lLgp0aGUgaHcgb24gdGhlIGhvbWUgbWFya2V0
IGlzIGFscmVhZHkgZmFzdCBlbm91Z2ggdG8gYmVhdCB5b3VyIGFwdTIuIG5vdCAKZXZlcnkgcGxh
c3RpYyByb3V0ZXIgb2YgY2F1c2UKYnV0IHNvbWUgb2YgdGhlbSBhcmUgcmVhbGx5IGhpZ2ggcGVy
Zm9ybWluZwo+IEkga2VlcCBob3BpbmcgdG8gZmluZCB0aGUgcGVyZmVjdCBuZXh0LWdlbiB3aWZp
IDYgd2l0aCBmcV9jb2RlbCBkZXJpdmVkCj4gdGVjaCBldmVyeXdoZXJlIGJveCAuLi4gYW5kIHRv
IGJlIGFibGUgdG8ganVzdCBidXkgaXQgb2ZmIHRoZSBzaGVsZgo+IHRoaXMgY2hyaXN0bWFzLgp3
aWZpIDYgdGhlIG5ldyBidXp6d29yZC4gaSBzdGlsbCBjYWxsIGl0IGF4LsKgIGV2ZXJ5dGltZSBh
IG1hcmtldGluZyAKaWRpb3QgY3JlYXRlcyBhIG5ldyBuYW1lIGZvciBleGlzdGluZyB0ZWNobm9s
b2d5IGkgZ2V0IGdhc3RyaWMgc3Bhc20KY29uc2lkZXIgdGhhdCB3aWZpIDYgYnJpbmdzIGFsbW9z
dCBub3RoaW5nIHVubGVzcyB5b3UncmUgY2xvc2UgdG8gdGhlIApyb3V0ZXIgYW5kIG15IGN1cnJl
bnQgODAyLjExYWMgcm91dGVycyB3aXRoIHFjYTk5ODQgY2hpcHNldHMKYWxyZWFkeSBiZWF0aW5n
IHRoZSBnaWdhYml0IGxpbWl0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
