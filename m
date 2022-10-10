Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CDB5FA610
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 22:23:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 09FC63CB47;
	Mon, 10 Oct 2022 16:23:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665433402;
	bh=4T7z/+vCa9KFee5XaO5loRknzsFia/ppMl/2sTl14kM=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=EOdLEU2sGpthG/YwLQ9nPz8LuLEXm+9YcudFJrnfXXBcqQrCSTjV8ysf1dg3B+Qez
	 eOnAlGWPyF13w24tQaBrdLrGgTvzTjfwgNEzeRxPBkdujOygVD53PJebYFOiFFZAhS
	 YZ/34yDIZnI/Ek1FPsjxI5GAL8r2flCSt0me3AKH8A2k+HXsB85xEA4oBX+7QgwfNm
	 N0p0Adz/dAF+c3IwjwqvejHyxGK1XJ8U57nhMu42coC4f2op/iolzlb+72ZI2LqBxC
	 olqD4mMc0AepnjAcTnw+pCuDK6RBTw5QormC7didKYuBqnqLPyfZhByfPBRt6hr5wk
	 lOIVNx6Y8LfIw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D95D33B29D;
 Mon, 10 Oct 2022 16:23:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1665433398;
 bh=Z78L8QyOE4oPsAAJwd5M08PYtVyYOgqDC3zhk6teKfQ=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=CK3HHUuUKHSR0et4l0Jpavlztl2o0lVsqaVv5AOFq4tm2zvrKzb8CWLE+sOA6tWc1
 FTCkqE20bs1qJAV9LGu8PWHFeVLoiLMIBDw4hV6zOtRRSf62PZIhdZLAKQUmViVB+Q
 DmppSfhKH6gwRR5Twl6PR7KTUiOaGd+79FRxpGCE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([95.116.112.62]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MwQT9-1oypGd0rav-00sREZ; Mon, 10
 Oct 2022 22:23:18 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
Date: Mon, 10 Oct 2022 22:23:16 +0200
Message-Id: <2601A81B-4E21-454C-9959-EDD725547E9E@gmx.de>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
To: Taraldsen Erik <erik.taraldsen@telenor.no>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:+tVbWq9RuFXFbft+1mgrVNiwfzkJy/9L7BwnZFLEKlVm5PAjBgl
 A8IxgQ9nf1FqKgTjarL2nb8aimkjsK1V10TTKYvv9LhLrgKmBMusGTn65yGeOnsZN5WngOi
 VeX/KJR08JzumaEaf+pi6n2ILL5NbJNBfHYb0KN9MYwqnPfgaovpAx/e9Z3IaT9eIJ1K1IB
 pd9Ca3evJlrp5l6siMvpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AMjKkhyutuI=:a52kUOIom90oZascjjWDYn
 RuYHlSK9eKYomd6UtJxMKVXpyOkCTKJbHLxamDoiaeVq7udDkx30Tws+ABUPFyuqyW0t6C0Np
 AKU5F1dZvJ4x3u7mWS/Icb/CU200pK+ZNpGfVynwmiD1cboSBSPlIslgTeb194Nf36Tv27mSo
 9aiESf2OBc7hOYre7ZisdG9rnmEjHwB63J8VWP9AHLSfQ1Tmmg94S0frC+Y2cyDqW698+5BIn
 Az+3bwr/8cpDkg/5Rw1olX1oefDhlKpAu7DtetN1uEnokT/637geNnsER33iyiCctnXiy6YDm
 7nh9qsyur98dU+Ghe4/uD0I9+Njn4KrIRfmvPdpqaQpp6pyFNuNiylQY9jCJVrTdUNWXFEljg
 0diYTjQZfPmJGc95E6/yxEI56jb1Zy2BUuiaeNkXrkT47c8k7lFPskrsHYDnWKWc8xgGHd68R
 nIIpqV8ce/WC2HM36b2ub3BhdPRQUHbtq8Jrb89Y2DG/VdTQ0rQc4hYx/KqO24sYf7/4KWXj/
 s9mqSqnY25E6joRnDzUdwk1oz86f5G2B58qP6uaRneT1j7MX8U1eARRy7h+5tEIgH1VbMGQjf
 y/0v9fQZzxhjfv2EJoz0qSe+y7w1eczpsAUjSPwmuaV2Nx2J8Ftrk53DkRJC+HbNpxGgeGPeQ
 +hNBEMVfGQbYWC3XBOMffzUhqpTpD+2IzFCP1BC/x3v4QYLPXXuz430AS/oOrJU9qA89myIPh
 YDXbh5LJ9uHVJ0AJmQA4/glxD3ZZ+OamikR8UbymMxr7vsa8B14W5ExNkz4mN/62Y69tjBxpf
 Q87RvWyuKwl9SBvNwwMets0FFbk/J/q3nDN2HLI1k5ARO7MLuSDWV9wc3eE+2a2+4gvmYoJ9Y
 wsMOJpNYTT9hv9IZ9Xas/6Ir/zuHMeAIqruShdusZgaIP2A1LSKbBWgRrO8ppn6gcE2kJvF/3
 4WMFLchgQL4zt54OARiHzscw7GuVdOecJbycRhEANba3sXvuDEM6uBQmxPsP/7dMQSSmvd2rC
 S1K4+VgwdOR/Wr/Tq8waH4xjZNlc0vd3p7fQK19plNjGxB83c8nKH2AxCiLrsMn+jXAzMvb2T
 zU5Mz91BgGMeDXmC6dvoxm+a8Zy3dMvU6AafG6oVWpdrEIFtJxo1JDwfg+wd7KZeiKFJoJuUP
 nRJupP/aW2txj+4j0+yERHTe8yatznNWdItbVP7a88Q/Wbap2b85s9TM9nFU8rE+onxFQH7b3
 kc5FbZoLMycW8TRZhjwv0ry0F7296N94QT8wW2qLP55C/J6+/bf2E3AJ+eobcIGLpL4O0X0k5
 /pP8ia3Z9+vUnpJUoSFgLa/QfuY9zMg/2p7aTNWR/WFe56z0wYKI3FodndXY5pPLMlfc1dfRX
 33PtOBI3HlLUE/ept417Zh/kfCV+2OuEyiihcLLlAuV98WAnhFGt53fBUplEx63iq8xRHNdL8
 n/klwkmVVDiIUiBZxovQJJjsdV7Go7dyfa004wJqUjeD8fA6yd2SmlH641k8xrEz5EKswmCG8
 ye8wQTdK4vrEdkPm264Cnm8u1CCNqM27jfnNv7kW3Wjnm
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

SGkgRXJpaywKCgo+IE9uIE9jdCAxMCwgMjAyMiwgYXQgMTM6NDYsIFRhcmFsZHNlbiBFcmlrIDxl
cmlrLnRhcmFsZHNlbkB0ZWxlbm9yLm5vPiB3cm90ZToKPiAKPiAKPiAKPiDvu79PbiAxMC8xMC8y
MDIyLCAxMTo0MSwgIkJsb2F0IG9uIGJlaGFsZiBvZiBTZWJhc3RpYW4gTW9lbGxlciB2aWEgQmxv
YXQiIDxibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCBvbiBiZWhhbGYgb2YgYmxv
YXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiAKPiAgICAJW1NNXSBDb29sLCBpZiBJ
IG1pZ2h0IGFzayB3aGF0IGZyYWN0aW9uIG9mIHRoZSBzeW5jIGFyZSB5b3Ugc2V0dGluZyB0aGUg
dHJhZmZpYyBzaGFwZXIgZm9yIGFuZCBhcmUgeW91IGRvaW5nIGZpbmUgZ3JhaW5lZCBvdmVyaGVh
ZCBhY2NvdW50aW5nIChvciBzaW1wbHkgZm9sZCB0aGF0IGludG8gYSBncmFuZCAiZGUtcmF0aW5n
Ii1mYWN0b3IpPwo+IAo+IFdlIGVuZGVkIHVwIGp1c3QgdXNpbmcgYSBmcmFjdGlvbi4gIAoKCVtT
TV0gRmFpciBlbm91Z2gsIGZvciBBVE0vQUFMNSB0aGF0IGlzIGNoYWxsZW5naW5nIGJ1dCBmb3Ig
VkRTTDIvUFRNIHRoYXQgc2VlbXMgd29ya2FibGUuLi4KCj4gQ2FuJ3QgcmVtZW1iZXIgdGhlIGV4
YWN0IGZyYWN0aW9uLCBidXQgd2Ugd2VyZSBub3QgY29uc2VydmF0aXZlLiAgSXQgd2FzIGhhcmQg
dG8gcHVzaCB0aHJvdWdoIHRoaXMgY2hhbmdlIHNvIGxlYXZpbmcgYW55IGJ3IG9uIHRoZSB0YWJs
ZSB3YXMgc2FjcmlsZWdpb3VzIHRvIGEgbG90IG9mIHBlb3BsZS4KCglbU01dIFRyaWNreS4uLiBl
LmcuIHZlY3RvcmluZyBlbmFibGVkIENQRSBjYW4gYmUgaW5zdHJ1Y3RlZCBieSB0aGUgRFNMQU0g
dG8gc2VuZCBlcnJvciBzYW1wbGVzIGluLWJhbmQgd2l0aCB0aGUgZGF0YSwgYnV0IHRoYXQgdHJh
ZmZpYyBpcyBuZXZlciBzZWVuIGJ5IG91ciBzaGFwZXJzLCBzbyB0byBhY2NvdW50IGZvciB0aGF0
IHdlIG5lZWQgdG8gc2V0IGEgZnJhY3Rpb24gdGhhdCBhbGxvd3MgZm9yIHRoYXQgKG1vcmUgb3Ig
bGVzcykgcGVyaW9kaWMgdHJhZmZpYy4gSSBndWVzcyBvbmUgY2FuIHJlYWNoIGEgcG9pbnQgb2Yg
Imdvb2cgZW5vdWdoIiBldmVuIHdoZW4gaWdub3Jpbmcgc3VjaCBldmVudHVhbGl0aWVzLCBlc3Bl
Y2lhbGx5IGlmIGhhdmluZyB0byBjb252aW5jZSB0aHJvdWdoLXB1dCBob3Qtcm9kZGVycy4gQWx3
YXlzIGludGVyZXN0aW5nIHRvIGhlYXIgZXhwZXJpZW5jZSBmcm9tIHRoZSByZWFsIHdvcmxkLCB0
aGFua3MhCgpSZWdhcmRzCglTZWJhc3RpYW4KCj4gIAo+IAo+IAo+IC1FcmlrIAo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=
