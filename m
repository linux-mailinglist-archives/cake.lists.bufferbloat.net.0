Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 804AD5FACE9
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 08:36:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BD7E93CB47;
	Tue, 11 Oct 2022 02:35:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665470158;
	bh=m1nbuexMQibPhg1QNgrisY8eYA6sXTulSX+BK8CM/0E=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=NZLEnulMRwHIrun57SnQfGGly30XkU17z38Cfy6wt6pgoIOAOoPd5wl3tIeEY4Kpv
	 MQtbtp2bl/NKKDSJKG/5ffGri017H6tgPTQO/lMft2jATgFNXoFRzaPjWDPA2HvEwV
	 URLpeetHCbCRKWS5o7Hct1DMkYgThsiza6Wg8MsYN9Y9KNIPDfmHgAXE+0uE/GNV6A
	 aDjphanW/aqyowzdxPRF7tiLo5t1crr/G/aMXBM5+G/+wP0AKxThOg6Nd/SRyzZaS+
	 bvLu0RSBHwxBOfOb4pfKQfGSyROcorN5eNoTXeE2Uta88zj5Ky/129qnpxqO8Ospzg
	 227l6DEcJ8mFQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 514933B29D;
 Tue, 11 Oct 2022 02:35:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1665470154;
 bh=Y03uEEoxz7SFJcBHOeqHBsUPyICZ2GEUzd0muPlquAI=;
 h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References;
 b=Plt1US2gv5iH7THB/JDe90yFqCgaSrz1yMm/l9wt6XFMUcu5mJmW3X5Xha0kfyzJQ
 H5eC7V04B3tuqFl5BTbtPc5npfN8pfRJrx9MUAGdVJv3p9jnXqvzgS1znbybRxUV8Y
 nd2Zkjdb5zZZUR0WXxR5Wb5HHWeLuT+iLpkfNyYo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [127.0.0.1] ([80.187.111.72]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAONX-1otRPV2Qqx-00BpPr; Tue, 11
 Oct 2022 08:35:54 +0200
Date: Tue, 11 Oct 2022 08:35:52 +0200
To: Taraldsen Erik <erik.taraldsen@telenor.no>
User-Agent: K-9 Mail for Android
In-Reply-To: <100AC711-2C3E-4FE4-A1A3-65BC759B9530@telenor.no>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
 <2601A81B-4E21-454C-9959-EDD725547E9E@gmx.de>
 <100AC711-2C3E-4FE4-A1A3-65BC759B9530@telenor.no>
Message-ID: <E667667F-DFC0-4C2E-866E-ACE4C4DE24D8@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:+7l9VsZwUOYDCI4Wu2uHe3MInaa7DenssqAPxLbrmS7mIrzVIp7
 TsKoMzVhqxBPke3ZVck1wPzORidh10HwWkQHjauW+/gwiNnSt7HssU3CX57aUmkc83/BGbY
 mU+pTKV3ETyYWNa3ReARdyiXthf0qCc/Kg6ZhvUHEZZFRgbRSwaFSwxOmadjT1Vnt79KwDb
 +P7o6GvtbCFekZQjmNHfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IxB27b2cM2U=:lbnfhGEqzLbiVCIUd8N7hN
 /A799DBjaU9EANjVyes6CmXRmbCczNpni8Rj4D4NCkHDA7a7it3q/4pq0a9g/5pdOvrpP6JzH
 /h2/KqJUTKdzbLx48JQVnD+AJvC8+Fsl4GCceaJfygCkVlnKRd23P96BpTOSEDP13BLbtlUDa
 csZ0wdctvjbXWFnPeB11Em9m9QJsw4KypvlYm74wkeqajjBn6jOPXvVGTMPql95f381MfewrN
 lil2jncv0ERTg88SJdUTOxwCsM/I3kCZk178mokCteCfLtvru0T++MPnZV0BUmL8Ek8jxOelc
 h6tpIEyPbFgLPxYO7wz7DKMz3oj4/1X5irrfbCzeEqvxtJMaAK/iY6oaLAT2yvlpnIfnWWtWM
 ofQzwQ9Mnj1I7y4ptRoRAmEkYjiynQaVFKY4g4VyrbKbeRl1gDO8ZGp3ukWu4DNHN7H32W8LC
 Up5mVlRZ57bGTriioJKrK+Tj3K+v997fcN1cPM9uAaQ0XFA65ml2ty7KPRN/uAOFurcb66INi
 /K3OrnQhynlIqAHu5rlgO4kWmgcOrlYe+2svo9XK2nw3NTxTQqpgSgqxOQwDFzvqgRtZPGQiy
 55zl/6dLZkHWj1gwH0UOuoPT7bsYPcmf0r5cOnYpZChrnaEjxMwx6zGgbsOYm/TWFJKjUR2HQ
 nGyh/c+gGqSv7wUqUY1bDyg10PVNOBLfYvpp1jDOEZEpEcwLxW1TXEFeo8K8MlGD4QI0LL4oO
 hugIxG7BtwrHulyw/tyFLwi6Az027jPPkGb9cf1i/ks6/uICtvGcBw1ddTxYiy7hYZnnu9/DI
 RSNcXfuiIjycZsGNxEToNKr0HqWQ+xZ6l+VWRp8fc4GttfE53qsfSsZCS2mVZ/KDludfPDivk
 GMsl0HuUMnIuo35uh1XcgAqi6kq1nGEEdpumjGdM2til9XWxM0QzX8nEEwiPMmnCtxDfRYjJD
 R/aLLOFw4cPpT/URmoeHqaTZZeHmf6uAucYu0emeykh7Ntb6Jwukg64LUANVAp43MCnUuluPv
 iK9iXwqkVFbvfTwr+CLDebAqU/TE9izGH2SD+7x/BGLF8EMS1aMjr7xgl+he9u2GkVBH0SBXR
 UgUlkR0nY2cLJrX96WOIJOsHzfHHz3vE5HQbtOZTmsq+ZIxdjdqI32N836xocbzKqCBWmvL7N
 /uTurZ48ZUwByWRQefpEJUV6MXMJqcvdO/n6gQWQfMqYohdlIhntZxuiI2IEuPSDqnDIfJl69
 mbY6Lro17/xQjueqWhFmKbdtThcCARScubVvkFHmx6In0ZyPKym5YSE6Wni2EB+uZYsiycbQS
 A8I45NPZcvGnNljW7hDcj+VCYq803aZUoR8e9xxMeNXqUluhJXGV0maez9aSNUs0LotMjw/D1
 TmUSz1AVMY5+T73OXDFDfuAEqZAnAQvOG0nKAZlQPR+ktGqdUOvOxHCQUCj/zBmnkwUQagS2e
 MR75seeeYH8nOK0EP5FqsvUHWlwp3oT2N08XHYUyhXj3g9xvpknV8s1JV0SiAoOpa3axEA1sU
 dNSdAYtEWV/ipDx0LU48jNQc2NrgbY07jgKDS7ZB+xUyT
Subject: Re: [Cake] [Bloat] The most wonderful video ever about bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRXJpaywKCk9uIDExIE9jdG9iZXIgMjAyMiAwODowODoxNCBDRVNULCBUYXJhbGRzZW4gRXJp
ayA8ZXJpay50YXJhbGRzZW5AdGVsZW5vci5ubz4gd3JvdGU6Cj4KPgo+77u/T24gMTAvMTAvMjAy
MiwgMjI6MjMsICJDYWtlIG9uIGJlaGFsZiBvZiBTZWJhc3RpYW4gTW9lbGxlciB2aWEgQ2FrZSIg
PGNha2UtYm91bmNlc0BsaXN0cy5idWZmZXJibG9hdC5uZXQgb24gYmVoYWxmIG9mIGNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+Cj4gICAgCVtTTV0gVHJpY2t5Li4uIGUuZy4g
dmVjdG9yaW5nIGVuYWJsZWQgQ1BFIGNhbiBiZSBpbnN0cnVjdGVkIGJ5IHRoZSBEU0xBTSB0byBz
ZW5kIGVycm9yIHNhbXBsZXMgaW4tYmFuZCB3aXRoIHRoZSBkYXRhLCBidXQgdGhhdCB0cmFmZmlj
IGlzIG5ldmVyIHNlZW4gYnkgb3VyIHNoYXBlcnMsIHNvIHRvIGFjY291bnQgZm9yIHRoYXQgd2Ug
bmVlZCB0byBzZXQgYSBmcmFjdGlvbiB0aGF0IGFsbG93cyBmb3IgdGhhdCAobW9yZSBvciBsZXNz
KSBwZXJpb2RpYyB0cmFmZmljLiBJIGd1ZXNzIG9uZSBjYW4gcmVhY2ggYSBwb2ludCBvZiAiZ29v
ZyBlbm91Z2giIGV2ZW4gd2hlbiBpZ25vcmluZyBzdWNoIGV2ZW50dWFsaXRpZXMsIGVzcGVjaWFs
bHkgaWYgaGF2aW5nIHRvIGNvbnZpbmNlIHRocm91Z2gtcHV0IGhvdC1yb2RkZXJzLiBBbHdheXMg
aW50ZXJlc3RpbmcgdG8gaGVhciBleHBlcmllbmNlIGZyb20gdGhlIHJlYWwgd29ybGQsIHRoYW5r
cyEKPgo+SW4gbXkgYnVzc2luZXNzIHdlIGNhbid0IGxldCBwZXJmZWN0IGJlIHRoZSBlbmVteSBv
ZiBnb29kLiBJZiB3ZSB3ZXJlIHRvIHdhaXQgZm9yIHRoZSBwZXJmZWN0IGZpcm13YXJlLCBub2Jv
ZHkgd291bGQgaGF2ZSBpbnRlcm5ldCBhY2Nlc3MgYXQgYWxsLiAgT3VyIHRlYW0gbW90byBpcyAi
c3VjayBsZXNzIi4gIE1lYW5pbmcgd2Uga25vdyB0aGVyZSBhcmUgaXNzdWVzIHdpdGggYWxsIHBy
b2R1Y3RzIHdlIHRha2UgdG8gbWFya2V0LiBBbmQgdG8gZ2V0IHRvIG1hcmtldCBhdCBhbGwgd2Ug
dW5mb3J0dW5hdGVseSBuZWVkIHRvIGFjY2VwdCBzb21lIHN1Y2tpbmVzcyBpbiBvbmUgZG9tYWlu
IG9yIGFub3RoZXIuICBTbyB3aGVuIHdlIGZvbGxvdyB1cCB0aGUgdmVuZG9ycyBlYWNoIG5ldyBm
aXJtd2FyZSBoYXMgdG8gc3VjayBsZXNzLiAKCltTTV0gR3JlYXQgSSBsaWtlIHRoZSBmb2N1cyBv
biBpbXByb3ZlbWVudCEgSSB3aXNoIG15IElTUCB3ZXJlIHNpbWlsYXJseSBlbmxpZ2h0ZW5kLgoK
UmVnYXJkcwogICAgICAgU2ViYXN0aWFuCgoKPgo+LUVyaWsKPgoKLS0gClNlbnQgZnJvbSBteSBB
bmRyb2lkIGRldmljZSB3aXRoIEstOSBNYWlsLiBQbGVhc2UgZXhjdXNlIG15IGJyZXZpdHkuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK
