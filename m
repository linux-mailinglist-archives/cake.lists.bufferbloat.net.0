Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C435F9BFE
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 11:33:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D01BB3CB39;
	Mon, 10 Oct 2022 05:33:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665394387;
	bh=D6kwrtYPOkTaOieMQqIVfDvw9/apeBKIleSEPJ1eb/4=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=kVUEQWulob0kJs95bjWLkzRW+1QoP2zBIjlax0yuz4q07npX+6VLpXLSq0fKlvik5
	 D0NeN9znIB9VjCwqyEJJv+qRcNCYLQUfU6gqvSdkUr27H/eywLH537DW/+xfP84bai
	 Gvl983O2H1qnNm951tsGf+c+luUc5G1E7Lkx8VfXP+J3MW7iD284mQA0T0L9t6lRhi
	 lDNK/PyOuZOnvGc62dIROq0kVeAfrTQO/4sUX58U6Gd7pVexWWM8qnHHUuezApFTs5
	 KP24zkSF2kAiwttTePvajjMY5s39xhLvKbxrFxQgCZJVwdeqjyS/XONtxeU6TigPst
	 D6wKI+ro/4tIQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-02.telenor.no (tn-mailgw-02.telenor.no [153.110.76.5])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 30FD03B29E;
 Mon, 10 Oct 2022 05:33:06 -0400 (EDT)
X-IronPort-AV: E=Sophos;i="5.95,173,1661817600"; d="scan'208";a="127800247"
Received: from tns-sko-24-206.corp.telenor.no ([10.179.59.74])
 by tn-mailgw-02.corp.telenor.no with ESMTP; 10 Oct 2022 09:33:04 +0000
Received: from TNS-SKO-24-207.corp.telenor.no (10.179.59.75) by
 TNS-SKO-24-206.corp.telenor.no (10.179.59.74) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38; Mon, 10 Oct 2022 11:33:04 +0200
Received: from outlook.telenor.no (10.179.127.59) by
 TNS-SKO-24-207.corp.telenor.no (10.179.59.75) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38 via Frontend Transport; Mon, 10 Oct 2022 11:33:04 +0200
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex004.nxvp.net (10.149.139.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Mon, 10 Oct 2022 11:32:48 +0200
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2507.012; Mon,
 10 Oct 2022 11:32:48 +0200
To: Sebastian Moeller <moeller0@gmx.de>
Thread-Topic: [Cake] [Bloat] The most wonderful video ever about bufferbloat
Thread-Index: AQHY2+ErAGosfg6SFEi6vdX1Qx5miK4HIU8AgAAVfoCAACf0gA==
Date: Mon, 10 Oct 2022 09:32:47 +0000
Message-ID: <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
In-Reply-To: <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
Accept-Language: nb-NO, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.65.22091101
msip_labels: MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SiteId=1676489c-5c72-46b7-ba63-9ab90c4aad44;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Method=Standard;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ActionId=2bdcc403-c274-4403-9ca7-3724dbac3814;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ContentBits=0;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Name=Internal;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SetDate=2022-10-10T09:24:30Z; 
x-originating-ip: [10.149.139.246]
X-TM-SNTS-SMTP: 16DBCFA0ABF6FC61AE743F576BDE1EC83AEDE2D90E9AE0D67BF78853E20CB80F2000:8
Content-ID: <57D634FA7CC6E04D93AF5AB4B244BCBC@nxvp.net>
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMTAvMTAvMjAyMiwgMTE6MDksICJTZWJhc3RpYW4gTW9lbGxlciIgPG1vZWxsZXIwQGdteC5k
ZT4gd3JvdGU6DQoNCiAgICBOaWNlIQ0KDQogICAgPiBPbiBPY3QgMTAsIDIwMjIsIGF0IDA3OjUy
LCBUYXJhbGRzZW4gRXJpayB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdy
b3RlOg0KICAgID4gDQogICAgPiBJdCB0b29rIGFib3V0IDMgaG91cnMgZnJvbSB0aGUgdmlkZW8g
d2FzIHJlbGVhc2UgYmVmb3JlIHdlIGdvdCB0aGUgZmlyc3QgcmVxdWVzdCB0byBoYXZlIFNRTSBv
biB0aGUgQ1BFJ3MgIHdlIG1hbmFnZSBhcyBhIElTUC4gIEZpbmFsbHkgZ2V0dGluZyBzb21lIGN1
c3RvbWVyIHJlc3BvbnNlIG9uIHRoZSBpc3N1ZS4gDQoNCiAgICAJW1NNXSBXaWxsIHlvdSBiZSBh
YmxlIHRvIGJ1bXAgdGhlc2UgcmVxdWVzdHMgdG8gaGlnaGVyLXVwcyBhbmQgYXQgbGVhc3QgY2hh
bmdlIHNvbWUgcGVyY2VwdGlvbiBvZiBjdXN0b21lciBkZW1hbmQgZm9yIHRpZ2h0ZXIgbGF0ZW5j
eSBwZXJmb3JtYW5jZT8NCg0KVGhhdCB3b3VsZCBiZSB0aGUgaG9wZS4gIFdlIGFjdHVhbGx5IGhh
dmUgZnFfY29kZWwgaW1wbGVtZW50ZWQgb24gdGhlIHR3byBsYXRlc3QgZ2VuZXJhdGlvbnMgb2Yg
RFNMIHJvdXRlcnMuICBVc2Ugc3luYyByYXRlIGFzIGlucHV0IHRvIHNldCB0aGUgcmF0ZS4gIFdv
cmtzIHF1aXRlIHdlbGwuICANCg0KVGhlcmUgaXMgYWxzbyBhIGJpdCBvZiB0cmFjdGlvbiBhcm91
bmQgc3BlZWR0ZXN0Lm5ldCdzIGluY2x1c2lvbiBvZiBsYXRlbmN5IHVuZGVyIGxvYWQgaW50ZXJu
YWxseS4gIE15IGhvcGUgaXMgdGhhdCBzb21lIHB1YmxpY2F0aW9uIGluIE5vcndheSB3aWxsIHBp
Y2sgdXAgb24gdGhhdCBzY29yZSBhbmQgZG8gYSB0ZXN0IGFuZCBnZXQgc29tZSBtYWluc3RyZWFt
IHB1YmxpY2l0eSB3aXRoIHRoZSByZXN1bHRzLg0KDQotRXJpaw0KDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
