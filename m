Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE23968AC
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 20:40:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6EA7C3CB38;
	Tue, 20 Aug 2019 14:40:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566326443;
	bh=7CC86/d1o4hcPLmgjgScWf7R/5fR0J2bTdM3pBFMXmY=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EKcU6sqj/Peg7hU4tnd87IirWWXGXZb95Svm+K+mBTSLsjaLZHjQpvjw5jEOGQd+K
	 K1key4XuoQNVl4XFf+SZ4Yjf58q4reEC5eDKXBiTIpDac6VrZ8spLud8uhluX+1s/J
	 kuAqEZVPNWeNMI5sS7VLhe5tcdEHNf/7yWK/mL1szPfKpNmhHWxkRWWmSEVWkuiCpi
	 xvlseGtZHK+CneP3qPlkpayd9nJhBdgf9y3V+LFr6CBig9oIyQul+wgKowz6R8qiWs
	 MLuKAXaPtF9LO+s0W5M+xR+6QSJmS7xzmo9uYaGQiFRgfKDHrDn/HAzY/qZOUFHovb
	 Mym3paNA2ZHvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 20DE43B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 14:40:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=SS7/6pvYw6y6KLkPkzi/bxQOLTatrYuLfCHJ2TtfdoE=; 
 b=A+JmVf1qqT2SmzQHk2K3zOrhX4/dWJE+82eSAKqnWQPEOSKFFV833WS1ZqTN38zNOoSD2+JZdiRbMxtltW866vAYjc1XUXlUowt32bu5nq1D0gpKJCxfD97w1rKkCrGEsHvZVCA9nwESD24KfwnMnI38CeAmWLxIQh0ZFWFz1TQ=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Dave Taht <dave.taht@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
Date: Tue, 20 Aug 2019 20:39:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87r25fsn70.fsf@toke.dk>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i093n-0003zU-If; Tue, 20 Aug 2019 20:40:47 +0200
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

CkFtIDIwLjA4LjIwMTkgdW0gMjA6MzEgc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdy
aXRlczoKPgo+Pj4+IHdlIGFyZSBhbHJlYWR5IHVzaW5nIGZpbHRlcnMuIHllcy4gaXRzIGp1c3Qg
dGhhdCBjYWtlIGlzIGFjdGluZyBhbHdheXMKPj4+PiBhcyByb290IGFuZCB3ZSBoYXZlIGRpZmZl
cmVudCBzb3J0cyBvZiBxb3MgY29uZmlndXJhdGlvbnMuIHNvIHlvdSBoYXZlCj4+Pj4gd2FuLiBi
dXQgd2UgbWF5IGhhdmUgbXVsdGlwbGUgbGFuIGludGVyZmFjZXMgd2l0aCBpbmRpdmlkdWFsIHFv
cwo+Pj4+IHNldHRpbmdzLiB0aGUgc2FtZSBmb3IgbWFjIC8gaXAgYmFzZWQgdXNlciBzZXR0aW5n
cy4gc28gaW4gZmFjdCB3ZSBuZWVkCj4+Pj4gdG8gY3JlYXRlIGEgaW5kaXZpZHVhbCBxZGlzYyBm
b3IgZWFjaCBvZiB0aGVzZSBzZXR0aW5nIHR5cGVzIGluIHdvcnN0Cj4+Pj4gY2FzZSwgYnV0IGlu
IHRoYXQgY2FzZSB3ZSBjYW5ub3QgdGFrZSBpbiBhY2NvdW50IHRoZSBnbG9iYWwgYXZhaWxhYmxl
Cj4+Pj4gYmFuZHdpZHRoIGFueW1vcmUuCj4+PiBBaCwgcmlnaHQsIEkgc2VlLiBTbyB0aGlzIGlz
IHRoaW5ncyBsaWtlIHVzZXJzIHdhbnRpbmcgdG8gbGltaXQgYQo+Pj4gc3BlY2lmaWMgdHlwZSBv
ZiB0cmFmZmljIHRvIGEgY2VydGFpbiBiYW5kd2lkdGg/Cj4+IGJhc2ljbHkgeWVzLiB0aGVyZSBh
cmUgbXVsdGlwbGUgd2F5cy4gcGxhaW4gdHJhZmZpYyBzaGFwaW5nIGJ5IGxvY2FsCj4+IGludGVy
ZmFjZSBuYW1lLCBieSBsb2NhbCBtYWMsIGJ5IGxvY2FsIGlwL25ldAo+PiBhbmQgaW4gYWRkaXRp
b24gdGhlcmUgaXMgc2hhcGluZyBieSBwb3J0IGJhc2VkIG9yIGRwaSBiYXNlZCBwYWNrZXQKPj4g
ZGV0ZWN0aW9uIGFuZCBzaW5jZSBlYWNoIGluc3RhbmNlIG9mIGNha2UgZG9lc250IGtub3cgb2Yg
YW55IG90aGVyCj4+IHVzZSBvZiBjYWtlIHFkaXNjcyBpdHMgZ2V0dGluZyBjb21wbGljYXRlZC4g
YnV0IHdlIGp1c3Qgc3RhcnRlZCB3aXRoCj4+IHdvcmtpbmcgb24gaXQuIGknbSBzdXJlIGkgZmlu
ZCBhIHNvbHV0aW9uIGZvciBpdAo+IERvIGxldCB1cyBrbm93IGlmIHlvdSBkbyA6KQo+Cj4gSG93
ZXZlciwgSSdkIGFsc28gcG9pbnQgb3V0IHRoYXQgd2hlbiBydW5uaW5nIENBS0UgYSBsb3Qgb2Yg
dGhlc2Uga2luZHMKPiBvZiBzZXR1cHMgYmVjb21lIHNpbXBseSByZWR1bmRhbnQuIEZvciBob21l
IG5ldHdvcmtzIG1vc3Qgb2YgdGhlIHNldHVwcwo+IEkgaGF2ZSBzZWVuIHdpdGggc3VjaCBydWxl
LWJhc2VkIHNoYXBpbmcgaXMgc2ltcGx5IHRoZXJlIHRvIHBhcGVyIG92ZXIKPiB0aGUgdW5kZXJs
eWluZyBidWZmZXJibG9hdCBpc3N1ZS4gT25jZSB5b3Ugc29sdmUgdGhhdCB5b3UgZG9uJ3QgcmVh
bGx5Cj4gbmVlZCBhbGwgdGhlIHBvbGljeS1iYXNlZCBzdHVmZi4KaXRzIG5vdCBqdXN0IGFib3V0
IHBvbGljeSB0byBnZXQgYWxsIG1hbmFnZWQuIGJ1dCB0aGUgcG9pbnQgaXMgdGhhdCBhIApoZWF2
eSBiaXR0b3JyZW50IGRvd25sb2FkZXIgd2lsbCBzdGlsbCBzdGVhbCB0aGUgYmFuZHdpZHRoIG9m
IG15IHNjcCAKc2Vzc2lvbi4Kc28gaXRzIGFib3V0IGNvbnRyb2wgYW5kIG5vdCBqdXN0IGFib3V0
IHRoZSBmbG93IG1hbmFnZW1lbnQKaXMgYWJvdXQgbGltaXRpbmcgcG9ydHMgdG8gYSBzcGVjaWZp
YyBiYW5kd2lkdGguIGZvciBpbnN0YW5jZS4gaSBoYXZlIGEgCmNvbmNlcnQgdmVudWUgYW5kIGkg
bGltaXQgdGhlIGJhY2tzdGFnZSBuZXR3b3JrIHRvIGEgY2VydGFpbiBtYXhpbXVtIApyYXRlIHNp
bmNlIGEgbmVlZCBhIGJ1ZGdlZCBmb3Igb3RoZXIgbmV0d29ya3MKc28gaSBsaW1pdCB0aGUgZXRo
ZXJuZXQgcG9ydCBvZiB0aGlzIG5ldHdvcmsgb24gdGhlIG1haW4gcm91dGVyIHRvIGxldHMgCnNh
eSAxMCBtYml0IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQgcHJpb3JpemUgdG9ycmVudCBhbmQgb3Ro
ZXIgYmFkIApzZXJ2aWNlcyB0byBidWxrLiB3aGljaCBqdXN0IHdvcmtzIGdvb2QgZm9yIGludGVy
bmV0LgpzbyB3ZSBoYXZlIGVub3VnaCBiYW5kd2lkdGggb24gb3VyIG90aGVyIGNhYmxlcyBmb3Ig
ZG9pbmcgNGsgc3RyZWFtcy4KZGQtd3J0IGlzIG5vdCBqdXN0IHVzZWQgb24gdGhlc2UgcGxhc3Rp
YyByb3V0ZXJzIGZvciBob21lIHVzZXJzLiB0aGlzIGlzIApvbmUgb3B0aW9uIGFuZCB3b3JrcyBn
cmVhdCB3aXRob3V0IG11Y2ggcW9zIGNvbmZpZ3VyYXRpb24uIHlvdSdyZSByaWdodC4gCmJ1dCBp
ZiBpdHMgdHVybmluZyBtb3JlIGNvbXBsZXggYW5kIHByb2Zlc3Npb25hbAppdHMgbm90IGVub3Vn
aCBhbnltb3JlLgo+IE5vdywgdGhlcmUgYXJlIG9mIGNvdXJzZSBleGNlcHRpb25zIHRvIHRoaXMg
d2hlcmUgYSBzdHJpY3QgcnVsZS1iYXNlZAo+IHNoYXBpbmcgKmlzKiByZWFsbHkgbmVlZGVkOyBi
dXQgSFRCIGFscmVhZHkgcHJvdmlkZXMgdGhpcyBpbiB0aGUga2VybmVsLAo+IGFuZCB3ZSBkb24n
dCB3YW50IHRvIHJlLWludmVudCB0aGF0LCBzbyBJJ20gbm90IHN1cmUgd2UnbGwgZXZlciBzdXBw
b3J0Cj4gdGhpcyBwcm9wZXJseSBpbiBDQUtFLCBzYWRseS4uLgp0aGlzIGlzIHdoYXQgd2UgYXJl
IGFsc28gZG9pbmcuIGNha2UgaXMgZmluYWxseSBqdXN0IGEgb3B0aW9uLiB5b3UgY2FuIApzZWxl
Y3QgbXVsdGlwbGUgc2NoZWR1bGVycyBhdCB0aGUgZ3VpLiBpbmNsdWRpbmcgY29kZWwuIGZxX2Nv
ZGVsLCAKZnFfY29kZWxfZmFzdCwgY2FrZSAsIHBpZSBldGMuCj4KPiAtVG9rZQo+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK
