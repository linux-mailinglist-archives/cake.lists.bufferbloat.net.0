Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4942A5F97F5
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 07:53:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4A9B23CB43;
	Mon, 10 Oct 2022 01:53:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665381180;
	bh=Ww0toVGnBlQoTaYjj53v8SGLYwnYtuzG4m2CQ4FPUz4=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=hjR1vDemX7ruOav7at2LqD1Lu+XZ6Akr4F2W+bYXZ9PvD2PUogQo08Q+6NpOcY4rj
	 kiiVWlOveNeBykKHjZUpKTeRVh4QConXMG0cfa+D9WdWDByGISq+xyIn6Vf3dcJ7fO
	 9jUHbPChxcUTIgDiavDPwMw3S1SGgpqY+eI+zAu/5fMSHe2rvaFUi1KaaZ3Q78QN7C
	 xQXUSgqIa+TCP2Q1DfDD+YdlpUixUgQ7HyXc8tdipzrsT7XHuGED1U6LSQB5AwOWIc
	 rHgbYC4K7dGrTnnqbHp+m1Njx9VaaVHZM6ITx1X4a35XJkVMv3FHAlJeac+hlZFd0M
	 ntfP17LJpVeyQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-04.telenor.no (tn-mailgw-04.telenor.no [153.110.76.7])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5B7743B29E;
 Mon, 10 Oct 2022 01:52:57 -0400 (EDT)
X-IronPort-AV: E=Sophos;i="5.95,173,1661817600"; d="scan'208";a="145172491"
Received: from tns-sko-24-207.corp.telenor.no ([10.179.59.75])
 by tn-mailgw-04.corp.telenor.no with ESMTP; 10 Oct 2022 05:52:55 +0000
Received: from TNS-SKO-24-206.corp.telenor.no (10.179.59.74) by
 TNS-SKO-24-207.corp.telenor.no (10.179.59.75) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38; Mon, 10 Oct 2022 07:52:54 +0200
Received: from outlook.telenor.no (10.179.127.56) by
 TNS-SKO-24-206.corp.telenor.no (10.179.59.74) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38 via Frontend Transport; Mon, 10 Oct 2022 07:52:54 +0200
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex003.nxvp.net (10.149.139.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Mon, 10 Oct 2022 07:52:52 +0200
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2507.012; Mon,
 10 Oct 2022 07:52:52 +0200
To: Dave Taht <dave.taht@gmail.com>, Rpm <rpm@lists.bufferbloat.net>, bloat
 <bloat@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>, Cake List
 <cake@lists.bufferbloat.net>
Thread-Topic: [Bloat] The most wonderful video ever about bufferbloat
Thread-Index: AQHY2+ErAGosfg6SFEi6vdX1Qx5miK4HIU8A
Date: Mon, 10 Oct 2022 05:52:52 +0000
Message-ID: <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
In-Reply-To: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
Accept-Language: nb-NO, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.65.22091101
msip_labels: MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SiteId=1676489c-5c72-46b7-ba63-9ab90c4aad44;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Method=Standard;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ActionId=010aecf3-f981-4c5f-973f-ca4e32f2cd5b;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ContentBits=0;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Name=Internal;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SetDate=2022-10-10T05:51:09Z; 
x-originating-ip: [10.149.139.242]
X-TM-SNTS-SMTP: 2F6A2448E3C26A6DB92000CF70553E7189A9FE302AFA10C198748D6C277F1B1F2000:8
Content-ID: <7537515BD03B5A4A88B4D71A163B2585@nxvp.net>
MIME-Version: 1.0
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
From: Taraldsen Erik via Cake <cake@lists.bufferbloat.net>
Reply-To: Taraldsen Erik <erik.taraldsen@telenor.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SXQgdG9vayBhYm91dCAzIGhvdXJzIGZyb20gdGhlIHZpZGVvIHdhcyByZWxlYXNlIGJlZm9yZSB3
ZSBnb3QgdGhlIGZpcnN0IHJlcXVlc3QgdG8gaGF2ZSBTUU0gb24gdGhlIENQRSdzICB3ZSBtYW5h
Z2UgYXMgYSBJU1AuICBGaW5hbGx5IGdldHRpbmcgc29tZSBjdXN0b21lciByZXNwb25zZSBvbiB0
aGUgaXNzdWUuIA0KDQoNCg0K77u/T24gMDkvMTAvMjAyMiwgMTU6MTUsICJEYXZlIFRhaHQgdmlh
IEJsb2F0IiA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToNCg0KICAgIFRoaXMg
d2FzIHNvIG1hc3NpdmVseSB3ZWxsIGRvbmUsIEkgY3JpZWQuIERvZXMgYW55b25lIGtub3cgaG93
IHRvIGdldA0KICAgIGluIHRvdWNoIHdpdGggdGhlIGlmeGl0IGZvbGs/DQoNCiAgICBodHRwczov
L3d3dy55b3V0dWJlLmNvbS93YXRjaD92PVVJQ2gzU2NmTldJDQoNCiAgICAtLSANCiAgICBUaGlz
IHNvbmcgZ29lcyBvdXQgdG8gYWxsIHRoZSBmb2xrIHRoYXQgdGhvdWdodCBTdGFkaWEgd291bGQg
d29yazoNCiAgICBodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hy
b29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6DQogICAgRGF2ZSBUw6Ro
dCBDRU8sIFRla0xpYnJlLCBMTEMNCiAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KICAgIEJsb2F0IG1haWxpbmcgbGlzdA0KICAgIEJsb2F0QGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldA0KICAgIGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Jsb2F0DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
