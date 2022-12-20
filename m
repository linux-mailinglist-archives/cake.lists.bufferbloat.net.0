Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 797016523E8
	for <lists+cake@lfdr.de>; Tue, 20 Dec 2022 16:46:23 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 403E53CB39;
	Tue, 20 Dec 2022 10:46:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1671551181;
	bh=Lzjqn5+Bk9fF/4R7HAoYbVK0f+uZ+6aXoc6BCYey1OY=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=XLjuZ4smLivAfj8YiJ9TaiWsdjY4XKSv9lCKPDWrUBI4eTpBQg62GtSwvLVowQlfF
	 H8/pCuK6jQ8yIAp1YULgSc0TLzKTIOiDVYauBqswVtdvAQl/4ejUytFoFK5VIYgIk8
	 jBdpj3DAnHUKJAikoeC5qWvnyZjouM0/C/vkLwOzG9hLUCRNyLPHTdqTxVr6EzBXwG
	 WgNm3N7/HzeLf32mFKk/6l5VoT7iDKxM3Qc3R7f3Uob/63XYjg/kcHK+W7ys+d2zMF
	 w+BZu8CNzEF68pSErQKBNwF/eSZTqWa366vXuLCClV85jynGc9AcNDi4zI+bABpixu
	 1VAkHv8XH40xg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7055E3B29D
 for <cake@lists.bufferbloat.net>; Tue, 20 Dec 2022 10:46:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1671551179; bh=8kVAtF78efmqIBmmbt/4IWRn54Lyz6wjsF/rLzX5xOc=;
 h=X-UI-Sender-Class:From:Subject:Date:To;
 b=mgTqrdXfepufO7DkeeA0nubldE9SnIsb4fzy7X5A8bY2nKSON42H19Ic+XJ68dcGP
 cuXFZxXhNYGPye8FbaX8aYBjB1yZP+v8RY+VPr5q5m7m4Edh7WqxCB58HSGDWCvJVs
 iwbOUMU11ljP0T5eCqEZAaKE7cxWccWNMws2ClxVF5RxWaay1EDaR6bpWE1PGeUfUU
 EPygTllniupY2tLoUFG/35PQPajYzN6pt5YYgrjj7Upk96FfYUZFIt/chzz+ZMJtdZ
 hS7UU95FrkfBg4SQsIyacoufgMA518gY/fgnDxeTo45SushKSPK6zsWw7+eXtIaR2f
 4W0LK0veesNvA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N8ob6-1on7qH0Wta-015oyn for
 <cake@lists.bufferbloat.net>; Tue, 20 Dec 2022 16:46:19 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Message-Id: <B48E5791-DFD7-4EFF-8B7E-4626CE89954B@gmx.de>
Date: Tue, 20 Dec 2022 16:46:18 +0100
To: Cake List <cake@lists.bufferbloat.net>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Provags-ID: V03:K1:TBDK9y2FSSlBpmZ7YCEot7lNJgiuv1bitJU8FpVdlHDXADK/NIE
 au+8JgHeoQX/Nop+k6kd1z0h+7/ljja0c2SlGlfO2cBsmwLY9oxJ03JUFq1CZBKaKIWiXNN
 Lm+4sAxo+6T3A/Bq7O3oOO0g/pm8veWjqCd1FnhsHlhGuBOnDoJ/tcQH3ptS5Qv//1igngz
 ek5Zn8FOfxqYCdnoAdPKw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:f9QIxhrzN0o=;5jfzBNOEp4AXewuffQVvtepCcQf
 p2r8aQcNH6PilmKgTpb8in0xmXkeiIK9YuVPBcdQosU0KbNhXcC+3GaF80rtwaSfIXaMKmSF0
 T2+/JFMHKE8nQfUD8mp3ON842gv2k/8yiQPEY2sX7yUgxlUzE9eyImom8fIVytBTAGpWNgicR
 7sqiAs5EvqI9RPWxEvFFklVuizULKGbcvOIHLuv+HOxnK/Gv0jsRD+QFMzLWq/zxjU3GDba0o
 RQk8u0K+WLkhVaOeU9zw/IUi6e+H/+5Ye4xozAGRMMacbfsprfe5eNZ8Oh8JQihUZxiRi27HN
 p3ug5rhTX90ib5Y4owGCyQydVWh35Ds/BYFm/DFyC3jIicIwX3QPF9rzNSgAP2saZFlAQxK8R
 lWluPRmtXoUua6bg/jZIE6+jPznA0mrek8EUqm+SdYJWpxbWjZysHE26+HP3gF7/Gz7KPWS8m
 /eyzZdg81KCYjYqtiEkNZbGE2HbRFBw7eid0Th3qKsh3OUam1wvpTICdXMmiyWM7LYpKfyUvh
 XoHC5lMwsTA5kkSNWI9bEeBKyFJ8+w+rZWvbeRDs6fFGyoHrQA7hOV0YCfpNFmrEemwbjNd/i
 YxlXq1Jn8vCAxWY8Kwjb/Ilyg3JjU5Xa6WXQ3SIVOSczu+a6wltVjJcA/S4nU9AXR7BTrqy0I
 zZPxNwpD1V3l3pxbWVawG9IPX8vZQ5+1G0oLX/LnsJwSsAgTcPUUeIa4IrenEQtPOwXKDRtoP
 yhMGcEbUgLdN64zvZnH0R4o1i61VcEfrNvzT7GrgtCoWyFiLsKGV2BEj8uhjooBbLfrVgSYuY
 bBCFupdjt+xDxobw/mnBf6TZob6v3E04ZRG2XdeQxsYrxmLcXSxfMKKUb3PFdGofEl+X+4bD1
 HQzHIp9T8YbKREj+07kjPMX3S2cBifSU8Ln66xWKCBELCdqgVe/2xVH9Ald/5mFeLPGvcDQAr
 9s3YPKgU+eF1umHyWG1ZsLFiVjQ=
Subject: [Cake] AVM seems to be shipping cake
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGVhciBhbGwsCgpqdXN0IGhhZCBhIGxvb2sgaW4gYSByZWNlbnQgZmlybXdhcmUgYXJjaGl2ZSBm
b3IgQVZNJ3MgZnJpdHpib3ggNzUzMCwgYW5kICdzdHJpbmdzIGRzbGQnIChkc2xkIGlzIEFWTSdz
IHNpbmdsZSBibG9iICJtYWdpYyBiaW5hcnkgZHNsIGRlYW1vbiIgdGhhdCBlbmNhcHN1bGF0ZXMg
YSBsb3Qgb2YgdGhlaXIgdmFsdWUgcHJvcG9zaXRpb24pIHJldmVhbHMgdGhhdCB0aGV5IGxpa2Vs
eSBhcmUgdXNpbmcgY2FrZSo6CgpxZGlzYyBhZGQgZGV2ICVzIGhhbmRsZSAxMDowIHJvb3QgY2Fr
ZSBiYW5kd2lkdGggJXVrYml0IGJlc3RlZmZvcnQgJXMgJXMgZHVhbC1kc3Rob3N0IGluZ3Jlc3Mg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIApxZGlzYyBhZGQgZGV2ICVzIGhhbmRsZSAxMDowIHJvb3QgY2FrZSBi
YW5kd2lkdGggJXVrYml0IGJlc3RlZmZvcnQgb3ZlcmhlYWQgJWQgZHVhbC1kc3Rob3N0IGluZ3Jl
c3MgIAoKCkkgZmFpbGVkIHRvIGZpbmQgdGhlIG1hdGNoaW5nIGR1YWwtc3JjaG9zdCBlbnRyeSBz
byB0aGV5IG1pZ2h0IHVzZSBzb21ldGhpbmcgZWxzZSBmb3IgZWdyZXNzLiBJIGhhdmUgbm8gaW5z
aWdodCB3aGV0aGVyL2hvdyB0aGlzIGNhbiBiZSBhY3RpYXRlZCAobm90IHVzaW5nIGEgZmI3NTMw
IG15c2VsZiksIGJ1dCBhdCBsZWFzdCB0aGlzIGlzIG1ha2luZyBpdCBvdXQgdG8gdGhlIHVud2Fz
aGVkIG1hc3NlcyBpbiBHZXJtYW55Li4uIChUaGUgRkI3NTMwIGlzIHRoZSAidmFsdWUiIGJveCBm
b3IgdGhlIG1vc3QgcmVjZW50IERTTCB2YXJpYW50IGRlcGxveWVkIGluIEdlcm1hbnksIHByb2Zp
bGUgMzViIHZlY3RvcmluZywgc29sZCB1bmRlciB0aGUgbW9uaWtlciAic3VwZXItdmVjdG9yaW5n
IikuCgoKKikgbWFrZXMgc2Vuc2Ugc29tZSBtb250aHMgYWdvIHRoZXkgcG9zdGVkIGEgdmlkZW8g
cHJvbWlzaW5nIGVuaGFuY2VzIGZhaXJuZXNzIGZvciBpbnRlcm5hbCB1c2VycywgSSB3YXMgcHV6
emxlZCBhdCB0aGUgdGltZSBob3cgdGhleSB3b3VsZCBpbXBsZW1lbnQgdGhhdCwgYnV0IGl0IHNl
ZW1zIHRoYXQgdGhleSBkaWQgbm90IHJlLWludmVudCB0aGUgd2hlZWwgaGVyZSBidXQgd2VudCBm
b3IgCgpSZWdhcmRzCglTZWJhc3RpYW4KClAuUy46IFRvIG15IGpveSB0aGV5IGFsc28gc2VlbSB0
byBkaWxpZ2VudGx5IHNldCBvdmVyaGVhZCwgZm9yIHRoZWlyIEhUQi9UQkYgaW5zdGFuY2VzIHVz
aW5nIHRjLXN0YWIuLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
