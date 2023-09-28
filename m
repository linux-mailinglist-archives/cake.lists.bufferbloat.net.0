Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F677B1D60
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 15:08:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7F3133CB39;
	Thu, 28 Sep 2023 09:08:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695906507;
	bh=myyGNWq0IjjhTrn9clLNq+7qzqWYsl5UcLHZOdEasoA=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iQKiz/qtPCNArkDXkCq6iuxE0nUsEniZSK7Xjjig2eNlQzMss7fMuzdZVxP6JUcxC
	 OEiyuuzdRaD+oprftNcCaWuIbLdXgYwuSzDh+vrqE/xUd6lYWJSHoqrHxm77DEGbew
	 p3tfGKap1an4pmu8dNl1mafb+eNMENRVcLaGbiBVZPOPXFOvCElncXuoH2fnxgFl/W
	 6BCQXRZtSWMiNAzf9zNgBVyWpI8LTM7Llox12Kv7uilN5iFjHUSVZ6s7EB8+Lcrv/h
	 JdoxzwCoA8vA4yCzZpQVe6XqawCID4JSYQtoK0xcMfFOKXPdNIp7plAGU36T2+SWwX
	 APAe9Tl8ZwFlg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8F5283B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 09:08:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1695906501; x=1696511301; i=moeller0@gmx.de;
 bh=g8GdAGHVMmE6cN7drWzyL9bZUW1wUK0xGyz+v3zZKqY=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=myESZuELslP5yaBGYL7brUiiR/BEAHOtVbypKzfitoRaJ8Wr2LmHC3l5E8Nw3AvU92oVAX3S4Vg
 69ufLgIzecny+cnwfK780EeJCEgjkWEzdijqRxuu4fYBWy8yUCx7XlBOVUjex943+S+KvO/K3uyx2
 TtNd7lugTUWfvHpwRU6XaUMEtsrnsw1bytk9PHMbv+8jT3PsMeCNHq1fb+sZtBDWhJ+V9NaS6dRHP
 KeB7exHyBCTVFAE+nZmHywLRkg17cHIQ5Tf1lUAjSMM67d7XwKVLj9zL3m/TiZkgRYAYjDbTgY3+y
 iDhUkuf9cFQSaz5Iko6vAbcSsM4wk6b6GUCw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MeCpb-1rKMYV3ULH-00bHkh; Thu, 28
 Sep 2023 15:08:20 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
X-Priority: 3 (Normal)
In-Reply-To: <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
Date: Thu, 28 Sep 2023 15:08:20 +0200
Message-Id: <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-Provags-ID: V03:K1:GBU+U3aUegTnawnnz6m3U61LKv0gtotLAB5shK65cOzXD/q4TIb
 ANnGyD+M80rcdmCZmgKjema9dLccQzz+jKzRndIQpeccfOhu1h4FCdU4zeEpPlsl7yhE1hN
 OW+OXf70MHfUp+P3aqKzWdupMSpMDwuOnfQKFHUx1X7lQ17hV6hjM/g7GN2F0+4zTIotmpX
 8jC+3/XuLzNpc1EP6+3XQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:fw4GRwip4Kk=;IFDS62aETR2qAW9Bbp1r3orOT2g
 EKdYwnQ9H5G1M1sHyNfU9/GutI71/4260ErQSIO/72gSXHce2/rjya3fKTX3XP5u5HTE29WDq
 nEZ0S1gc9M5PXjLcepGKzsB2blxk3x2H4gtTTya0fAbylHmPm9HJPg2jkuQvXPpYTGroDMOGQ
 Q6i05K1Y2h2XZAPf5sigfPqi7HFEvkkbdgJxUV9u8/8az8MePIvTJoQO5kEHSWkIeU1ynWgFU
 2hoywCkyNCdCrzknd3J9Fhn8JoLRszkbCY8u80G9lEN3zbv/L+XkOS1Ua5SMU3YLi15DZWm4Y
 H/FNAcOPzC/HUZtY950gBP+CL5erQdOnjEq6vnA7N8kKmk/AFDnP0LaXxy8H23O+XtUl7mQFs
 EUUood8FvKcN0M2LxgOz+yAIjnXrosO1Lzv1/gbdizi+DCCrCuAOfIeQ/JkPXo26841pfEQaO
 3Mowx7okkzeKixc2+41APthovDDM4k7Uv82d0Te0sy3hgLbqHhXOX7vZsY6FqD7KDKASUPqJk
 ypiEiDbN6sAbM7JZErbOdmO7AABWm5EMozWXV2xmP55zAFAvqJRg9pk8tY6U0ygwyL9tfdfqK
 9uLnig0AvsQAlH3UcXzp5AQxFeglbb2o48M/0BmNiS3UT0VHFMWYoQdmn4FQUXLT9D2ZTMRSp
 4SVrRtU5cdRoWo8FB+82a7EdSXiSXQYMTFATklkvGL6njTm/SXlmbhB740Lsn8XhioXdS+MAy
 rDLMy2TYW6im1x8nG//JvkiwRGk7HU6XaWCoFJcBSOHG+lowtxbNiJfBL28I79KN+87a+D56y
 O8/oI+iIocj8/qHFHUPRngb43743yEKGVNi5dU7MRPXVcd7O2JfXL9ygJpenlY/kVhsaH/Uks
 fRkKNYgZHeiL6GyYOZA/5d5osGXGknxgze0LRwgyJJ153XM5m3+/vAMDGctYTx9mVApgTtCNm
 ssQjrngbubUDeS47OOA2UCUcO1Q=
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4sCgoKPiBPbiBTZXAgMjgsIDIwMjMsIGF0IDE0OjMzLCBKb25hdGhhbiBNb3J0
b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4+IE9uIDI4IFNlcCwgMjAyMywg
YXQgMzoxNSBwbSwgU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6Cj4+
IAo+PiBUaGlzIHByb21pc2VzIGV2ZW4gYmV0dGVyIHBlcmZvcm1hbmNlIGZvciBsb2FkcyBsaWtl
IGNha2UgdGhhbiB0aGUgYWxyZWFkeSBwcmV0dHkgbmlmdHkgcGk0Qgo+IAo+IFdlbGwsIGluY3Jl
YXNlZCBjb21wdXRpbmcgcGVyZm9ybWFuY2UgaXMgYWx3YXlzIHdlbGNvbWUgLSBidXQgYXMgSSd2
ZSBzYWlkIGJlZm9yZSwgaW4gbW9zdCBjYXNlcyBJIGRvbid0IHRoaW5rIENQVSBwZXJmb3JtYW5j
ZSBpcyB0aGUgbGltaXRpbmcgZmFjdG9yIGZvciBDQUtFLgo+IAo+IFdoZW4gdGhlIENQVSBsb2Fk
IGdvZXMgdXAgYXMgbmV0d29ya2luZyB0aHJvdWdocHV0IHJlYWNoZXMgdGhlIHBoeXNpY2FsIGxp
bWl0IG9mIHRoZSBpbnRlcmZhY2UgKG9yIHRoZSBJL08gc3Vic3lzdGVtKSwgd2hhdCB5b3UncmUg
c2VlaW5nIGlzIHRoZSBDUFUganVzdCBzcGlubmluZyBpdHMgd2hlZWxzIHdoaWxlIHdhaXRpbmcg
Zm9yIGEgbXV0ZXggdG8gdW5ibG9jay4gIFNwaW5uaW5nIGZhc3RlciBkb2Vzbid0IG1ha2UgdGhl
IG11dGV4IHVuYmxvY2sgc29vbmVyIQoKCVtTTV0gSSB0aGluayB0aGF0IHRoZSBpbXByb3ZlbWVu
dHMgb2YgY2FjaGUgYW5kIG1lbW9yeSBoaWVyYXJjaHkgYW5kIHRocm91Z2hwdXQgd2lsbCBiZSBo
ZWxwZnVsLCBjdXJyZW50bHkgc29tZSBwZW9wbGUgcmVwb3J0IG9kZCBpc3N1ZXMgd2l0aCBycGk0
QnMgZGVwZW5kaW5nIG9uIGhvdyBtYW55IGFuZCB3aGljaCBjb3JlcyBhcmUgdXNlZCwgSSBob3Bl
IHRoYXQgdGhlIHJwaTUgYW1lbGlvcmF0ZXMgdGhlc2UgaXNzdWVzLiBUaGUgZ2lnYWJpdCBldGhl
cm5ldCBhZGFwdGVyIHdhcyBhbHJlYWR5IGNvbm5lY3RlZCB3ZWxsIHRvIHRoZSBTb0Mgc3RhcnRp
bmcgd2l0aCB0aGUgcnBpNCB3aGVuIHRoZXkgZGl0Y2hlZCB0aGUgVVNCMiBidXMgdXNlZCBieSBl
YXJsaWVyIHBpcyB0byBjb25uZWN0IHRoZSBldGhlcm5ldC4gQnV0IEkgYWdyZWUgaXQgd2lsbCBy
ZXF1aXJlIHJlYWwgYmVuY2htYXJrcyB0byBzZWUgaWYgdGhlIG5ld2VyIGRlc2lnbiB0cnVseSBk
ZWxpdmVycyBtb3JlIGNha2UgcGVyZm9ybWFuY2UgYW5kIGlmIHllcywgaG93IG11Y2ggbW9yZS4g
KEFuZCBJIGFsc28gbm90ZSB0aGF0IHRoZSBycGk0QiBpcyBub3QgZG9pbmcgYmFkbHkgYXQgMSBH
YnBzIGV0aGVybmV0IGVpdGhlciwgYXQgbGVhc3QgZm9yICJub3JtYWwiIG51bWJlcnMgb2YgcGFy
YWxsZWwgZmxvd3MuCglSZWdhcmRpbmcgYSBmdWxsIGR1YWwgKG9yIHRyaXBsZSkgaW50ZXJmYWNl
IHJvdXRlciwgSSBoYXZlIGhvcGVzIHRoYXQgYSBQQ0llIGNvbm5lY3RlZCBOSUMgbWlnaHQgYmUg
Z2VuZXJhbGx5IGJldHRlciB0aGFuIGEgVVNCMyBkb25nbGUgKGV2ZW4gdGhvdWdoIFVTQjMgb24g
cGFwZXIgaGFzIHBsZW50eSBjYXBhY2l0eSBmb3IgZ2lnYWJpdCBldGhlcm5ldCkuCgpSZWdhcmRz
CglTZWJhc3RpYW4KClAuUy46IEkgYW0gdGVtcHRlZCwgYnV0IHdpbGwgbGlrZWx5IHdhaXQgdW50
aWwgdGhleSBhcmUgYXZhaWxhYmxlIGluIHF1YW50aXR5IGFuZCBob3BlIHRoYXQgdGhlIHN0cmVl
dCBwcmljZSBjb21lcyBkb3duIGEgYml0IGJlZm9yZSBnZXR0aW5nIG9uZSA7KQoKCgo+IAo+IC0g
Sm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
