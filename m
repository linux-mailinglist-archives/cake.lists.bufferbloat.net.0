Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9BB45A186
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 12:32:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 375273CB39;
	Tue, 23 Nov 2021 06:32:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637667125;
	bh=8Jr/Si85GXw0uOJGbXkmE7y2BtfpAjfjwC5gLq42LqI=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X+lE7RMj8ciCW3kbLD1Vk7cu8LA3iGQiM2x8dI5W3SOJ1DhDqddmo56MEkm1SHWzT
	 vDhK+VxFiw+JJBnIoqlgZpz/tx6sXQXYNV0lW51nZE9Kr5koOYw9DvHgcdBoFJG3Ko
	 ktlG93axW0ZlICiNNwXywI8BPZV39yzSFNVICD5y54aXDcvMd5xgNgru4ncogH0ZGK
	 byTGfU/aRIvwZHnr8NZdO0OoB4f+5Bu4Y4j9nvLjXd1yu3KW3YhmcXDUtNAhnUZOGr
	 eBq6AuH0VhO8R9+msePUuyj1vTcaipSlSWv8YL0hjmvHVYOj7oFfE8QVHfRgaKUxL/
	 mGW0XGxRq2F1A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 50D8A3CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 06:32:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1637667119;
 bh=31rir3uHMvAu9T5O0tos5XFQzGk+sJTbrSHk0wls5gw=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=WGYYh77Kb7vMpsBvgJDphR4UACCobJwOjReJBj6ptlNYYOyIqiLVjq+KMxuHxMjA8
 iMuJUuvS6ATjE2esDKjwO1g+gyLhvgdbyOsVWCo0iigmyMeVjMQE/eawf9pFd8Ljyu
 hHxV/KLNxB/qQoptWsSR78ntFbp0GLy3C28z/zmw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N4hzj-1mgF8C1wrn-011gnR; Tue, 23
 Nov 2021 12:31:59 +0100
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <87czmrcg0f.fsf@toke.dk>
Date: Tue, 23 Nov 2021 12:31:56 +0100
Message-Id: <3F51069A-D50B-4C09-AF16-FB9AA9E8D59C@gmx.de>
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
 <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de> <87czmrcg0f.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Provags-ID: V03:K1:Hn6kj44IUCxY2nVCX4Lg3PgfCzQrO9o20T4BW8MbOzw9TM6AJ5r
 KS+fNjRIjruxU9UKhuVfvA1a45awYWu7fQxoGxyKFvTaPFZdYwz4aogR5RtWl3dz5ANHnfW
 UBqZGzXmL3Sr36bNAkpWFe7WQEoXgu1ejK6Lyj+uT769Et6lTiItB4A97Rb5ah18/1DDfS6
 hwhFnFSCPfb4/j8O2zqQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:u2MA2qPhvbM=:NOo5oK7AbZapyk2a7vSrCH
 h0hGD4psKdlJWJYoT5kiYSz/jJg+gByW7o/5iViHnHRYIUXKPWyMeMFRFyOa05XcbA3Qqgkcy
 SYVSnsYj7SeJswLBgDn56xwuyzXGcXZpJ06YEQhhNoJxegBjDjVotgpHoQBm0dX9nFX+USjLR
 tu0NqrGwT1FEcDecLJ4cLQ5mGSghpFF3ga4Gb/Gz9cZ2Qb3gmKwUghb8LB97RmCy2nWkkHaCY
 +MTds392//EmJSVvIDCKHVJDwKMXUUPHDf/alFyYopi0MuA38gPlBZo2MmQn89uChYukPZ7tq
 cMcX6PALynCRCMxxrXWsYyGjEvjlQl7s2N/dwXUXtZa1lLPRC4AHgT1YI/nYrrGc1jjvIi8VN
 5T3XbE3nFd8rEY7KWT8KFCqJYm3bGtTOzPP291PSWt/qLuhAIqWtuB2ncH4NpRBeM5K6AN+6Z
 bYBLtTcs/8BM7NGD87yksCS8+YBINUbDbYU2D5iRW0b+XvjfM9ZzAp9proHzVguIySylmInXs
 JIC3w8GsDu6ja2AOPMtfY07NhzOt0ZeorfeLF6MXq/0LLlyEDQFMiHXm6n/z0Muad+YT+6jGx
 v9fmKQkWhTkchWYwmLUp7SQa0olXmAMsivqtDrbvgekz2cL49gU5YNX/5euLQU/Df3obzn3sU
 lmnAA5Jxn4KdorcuzGfJf9FYJitb5cw2affPkxunsLgHzO6sEcfzkiCBjQDaShJyyxjkD9GcA
 2MGV6u4SD15c0221e+cO1XTFbZgo3NYTqtZ8x1yMksSkrHoYEILIU+Tpo3zeLSZTiCOBIuqVi
 tCNG7Qzgl1u+NuxQVXHN/vYqYK9LUAAMlseSPfMNWRFsDhNLWZanxiFsf3WTNFhV6R0rSpg1c
 +SIrL6ac9LwOq3hD8t6Zw/rGCnLIiWdJCpshYp72AGAfTic14XhmWEVT2IIz520tGsQOUAj4P
 BjaLoHNKZh+iD2lYZWDhkQ08nJEKM8HPylOksrAlNJavYeUlhglD8V+2XeS2UX1/7QcIMQ1UL
 3veIFV7wtTIxuW49glAAC3l0f14HXsVxCixXF0qZKxiFA5u4m2BQy73Ea3okQ5lbtHZFx62FA
 0Wc3ekD1jiT/9I=
Subject: Re: [Cake] tossing acks into the background queue
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgVG9rZSwKCgo+IE9uIE5vdiAyMywgMjAyMSwgYXQgMTE6MzksIFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUB0b2tlLmRrPiB3cm90ZToKPiAKPiBTZWJhc3RpYW4gTW9lbGxlciA8bW9l
bGxlcjBAZ214LmRlPiB3cml0ZXM6Cj4gCj4+IEhpIERhdmUsCj4+IAo+PiBPbiAyMyBOb3ZlbWJl
ciAyMDIxIDA4OjMyOjA2IENFVCwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90
ZToKPj4+IFRoZSBjb250ZXh0IG9mIG15IHF1ZXN0aW9uIGlzIGJhc2ljYWxseSB0aGlzOgo+Pj4g
Cj4+PiBJcyBjYWtlIGJha2VkPyBJcyBpdCBkb25lPwo+PiAKPj4gSG93IGFib3V0IHBlciBNQUMg
YWRkcmVzcyBmYWlybmVzcyAodXNlZnVsIGZvciBJU1BzIGFuZCB0byB0cmVhdAo+PiBJUHY0LzYg
ZXF1YWxseSk/Cj4+IAo+PiBIb3cgYWJvdXQgY29uZmlndXJhYmxlIG51bWJlciBvZiBxdWV1ZXMg
KGFnYWluIGhlbHBmdWwgZm9yIElTUHMpPwo+IAo+IEZXSVcgSSBkb24ndCB0aGluayBDQUtFIGlz
IHRoZSByaWdodCB0aGluZyBmb3IgSVNQcywgZXhjZXB0IGluIGEKPiBkZXBsb3ltZW50IHdoZXJl
IHRoZXJlJ3MgYSBzaW5nbGUgQ0FLRSBpbnN0YW5jZSBwZXIgY3VzdG9tZXIuCgpGYWlyIHBvaW50
LiBNeSBvdGhlciByZWFzb24gZm9yIHdhbnRpbmcgdG8gZXhwb3NlIHRoaXMgaXMgdG8gYWxsb3cg
ZWFzaWVyIGV4cGVyaW1lbnRhdGlvbiwgYnV0IEkgY2FuIGJlIGV4cGVjdGVkIHRvIGJ1aWxkIGZy
b20gbW9kaWZpZWQgc291cmNlcyBzbyB0aGF0IGlzIHJhdGhlciB3ZWFrLgoKPiBGb3IKPiBhbnl0
aGluZyBlbHNlIChpLmUuLCBhIHNpbmdsZSBzaGFwZXIgdGhhdCBoYW5kbGVzIG11bHRpcGxlIGN1
c3RvbWVycyksCj4geW91IHJlYWxseSBuZWVkIGhpZXJhcmNoaWNhbCBwb2xpY3kgZW5mb3JjZW1l
bnQgbGlrZSBpbiBhIHRyYWRpdGlvbmFsCj4gSFRCIGNvbmZpZ3VyYXRpb24uIEFuZCByZXRyb2Zp
dHRpbmcgdGhpcyBvbiB0b3Agb2YgQ0FLRSBpcyBnb2luZyB0bwo+IGNvbmZsaWN0IHdpdGggdGhl
IGV4aXN0aW5nIGZ1bmN0aW9uYWxpdHksIHNvIGl0IHByb2JhYmx5IGhhcyB0byBiZSBhCj4gc2Vw
YXJhdGUgcWRpc2MgYW55d2F5LgoKCUkgaGFkIHNvcnQgb2YgaWdub3JlZCB0aGF0IElTUHMgZ2Vu
ZXJhbGx5IGRvIG5vdCBvZmZlciwgZmFpciBzaGFyaW5nIG9mIGEgbGluaydzIGNhcGFjaXR5IGJl
dHdlZW4gYWxsIGNvbm5lY3RlZCB1c2VycyA7KQoKCj4gCj4+IElNSE8gY2FrZSB3b3JrcyBwcmV0
dHkgd2VsbCwgd2l0aCB0aGUgYmlnZ2VzdCBpc3N1ZSBiZWluZyBpdHMgQ1BVCj4+IGRlbWFuZHMu
IEFzIGZhciBhcyBJIHVuZGVyc3RhbmQgaG93ZXZlciwgdGhhdCBpcyBjYXVzZWQgYnkgdGhlIHNo
YXBlcgo+PiBjb21wb25lbnQgYW5kIHRoZXJlIGxvdyBsYXRlbmN5IGFuZCB0aHJvdWdocHV0IGFy
ZSBpbiBkaXJlY3QKPj4gY29tcGV0aXRpb24sIGlmIHdlIHdhbnQgdG8gbG93ZXIgdGhlIENQVSBs
YXRlbmN5IGRlbWFuZHMgd2UgbmVlZCB0bwo+PiBhbGxvdyBmb3IgYmlnZ2VyIGJ1ZmZlcnMgdGhh
dCBrZWVwIHRoZSBsaW5rIGJ1c3kgZXZlbiBpZiBjYWtlIGl0c2VsZgo+PiBpcyBub3Qgc2NoZWR1
bGVkIGFzIHByZWNpc2VseSBhcyB3ZSB3b3VsZCBkZXNpcmUgb3IgYXMgZS5nLiBCUUwKPj4gcmVx
dWlyZXMuCj4gCj4gWWVzLCBhcyBsaW5rIHNwZWVkIGluY3JlYXNlcywgYmF0Y2hpbmcgbmVlZHMg
dG8gaW5jcmVhc2UgdG8ga2VlcCB1cC4KCglZZXMsIGFsbCB0aGUgd2F5IHRocm91Z2ggdGhlIHN0
YWNrLgoKCj4gVGhpcyBkb2VzIG5vdCAqaGF2ZSogdG8gaW1wYWN0IGxhdGVuY3ksIGFzIHRoZSBm
YXN0ZXIgbGluayBzaG91bGQga2VlcAo+IHRoZSBncmFudWxhcml0eSBjb25zdGFudCBpbiB0aGUg
dGltZSBkb21haW4uCgoJTml0LXBpY2s6IGFueSBiYXRjaGluZyBpbXBhY3RzIGxhdGVuY3kgY29t
cGFyZWQgdG8gcGVyZmVjdCBqdXN0IGluIHRpbWUgcHJvY2Vzc2luZywganVzdCBzb21lIGltcGFj
dCBjYW4gZWFzaWx5IGJlIGFjY2VwdGVkL3RvbGVyYXRlZCA7KQoKPiBTbyBleHBlcmltZW50aW5n
IHdpdGggZG9pbmcKPiB0aGlzIGR5bmFtaWNhbGx5IGluIENBS0UgbWlnaHQgYmUgd29ydGh3aGls
ZSwgYnV0IHByb2JhYmx5IG5vdCB0cml2aWFsLgoKCVdlIHRyaWVkIHRvIGRvIHRoZSBzYW1lIGZv
ciBIVEIvZnFfY29kZWwgYW5kIHRlc3Rpbmcgd2FzIGEgYml0IGluY29uY2x1c2l2ZSAodGhlbiBh
Z2FpbiwgYWZmZWN0ZWQgdXNlcnMgd2hlcmUgbm90IHRvIGRlZGljYXRlZCBpbiB0ZXN0aW5nKQoK
PiBBbmQgZWl0aGVyIHdheSwgQ0FLRSBpcyBzdGlsbCBnb2luZyB0byBiZSBsaW1pdGVkIGJ5IGJl
aW5nIHNpbmdsZSBjb3JlCj4gb25seSwgYW5kIGZpeGluZyB0aGF0IHJlcXVpcmVzIHNvbWUgc2Vy
aW91cyBzdXJnZXJ5IHRoYXQgSSBzZWVtIHRvCj4gcmVjYWxsIGxvb2tpbmcgaW50byBhbmQgZ2l2
aW5nIHVwIGF0IHNvbWUgcG9pbnQgOigKCglUaGF0IGlzIHNhZCwgYW5kIHByZXR0eSBtdWNoIHJ1
bGVzIG91dCB0aGF0IEkgY291bGQgbWFrZSBzb21lIHByb2dyZXNzIGluIHRoYXQgZGlyZWN0aW9u
LiBUaGUgbmV4dCBsZXZlbCBpcyBzaGFwaW5nIGF0IH4xR2JwcywgZXZlbiB0aG91Z2ggZmFzdGVy
IGFjY2VzcyBsaW5rcyBiZWNvbWUgYXZhaWxhYmxlLCBsaWtlIDguNS8xMCBHYnBzIChYR1MtUE9O
IGlzIG5vbWluYWxseSAxMEcsIGJ1dCBhZnRlciBGRUMgb25seSB+OC41IEdicHMgYWN0dWFsbHkg
YXJlIHVzYWJsZSkgb3IgZm9yIGEgbHVja3kgZmV3IGV2ZW4gMjUgR2JwcyAuLi4KClJlZ2FyZHMK
CVNlYmFzdGlhbgoKPiAKPiAtVG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
