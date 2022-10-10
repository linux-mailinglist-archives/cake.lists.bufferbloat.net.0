Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 220065F9DE7
	for <lists+cake@lfdr.de>; Mon, 10 Oct 2022 13:47:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 34DD13CB43;
	Mon, 10 Oct 2022 07:47:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665402421;
	bh=uBmC44VjzVOA6+LwqyDhvZHCW7HhTQH57KgzLRipmhM=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Q691pVwXQ/xnXYPBEcyN0TH7irMnUltK/LBpv1xsPcVip3yzyn1eik2QbD3LazI9c
	 GCl8NKohTfJ0Vf4X+8PgBkLZWeddH83ePOjmMfH89O2fZ+w25r+V+xOseeHDNW+rzb
	 YR6WA32ji5DTdLMjkVRfH6EjpoaJ/kKGyx8lSfnpwixps5PJgTVJJGcsIc0mwIpkYP
	 OasbuT++3d8SzbVLHa7lKVuiZAp9GRfuzx/QVuVDRS4vuYVQkJDTw3ky2VBRJLGr4b
	 Zq1mHRQoOQMLiBj/iE6M8qYrofkJ39UUUGfqWkP6obLR9fqvygZS2kXPAFXjj2IAuh
	 LbbUg1MNDZyig==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-01.telenor.no (tn-mailgw-01.telenor.no [153.110.76.4])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 141033B29D;
 Mon, 10 Oct 2022 07:46:58 -0400 (EDT)
X-IronPort-AV: E=Sophos;i="5.95,173,1661817600"; d="scan'208";a="131788546"
Received: from tns-sko-24-209.corp.telenor.no ([10.179.59.77])
 by tn-mailgw-01.corp.telenor.no with ESMTP; 10 Oct 2022 11:46:57 +0000
Received: from TNS-SKO-24-213.corp.telenor.no (10.179.59.81) by
 TNS-SKO-24-209.corp.telenor.no (10.179.59.77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38; Mon, 10 Oct 2022 13:46:57 +0200
Received: from TNS-SKO-24-201.corp.telenor.no (10.179.59.69) by
 TNS-SKO-24-213.corp.telenor.no (10.179.59.81) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38; Mon, 10 Oct 2022 13:46:56 +0200
Received: from outlook.telenor.no (10.179.127.58) by
 TNS-SKO-24-201.corp.telenor.no (10.179.59.69) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38 via Frontend Transport; Mon, 10 Oct 2022 13:46:57 +0200
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex003.nxvp.net (10.149.139.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Mon, 10 Oct 2022 13:46:56 +0200
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2507.012; Mon,
 10 Oct 2022 13:46:56 +0200
To: Sebastian Moeller <moeller0@gmx.de>
Thread-Topic: [Bloat] [Cake] The most wonderful video ever about bufferbloat
Thread-Index: AQHY3IxqaFDhvVYJAUaP9p/tPmhqhK4HguSA
Date: Mon, 10 Oct 2022 11:46:56 +0000
Message-ID: <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
In-Reply-To: <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
Accept-Language: nb-NO, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.65.22091101
msip_labels: MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SiteId=1676489c-5c72-46b7-ba63-9ab90c4aad44;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Method=Standard;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ActionId=ae34b554-46ef-41ca-b980-6f89a380b096;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ContentBits=0;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Name=Internal;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SetDate=2022-10-10T11:42:13Z; 
x-originating-ip: [10.149.139.243]
X-TM-SNTS-SMTP: AA595AB053EF4BF15530D0CD41A0BB8E580FA9D6E7657779C03749E24A3A8EA42000:8
Content-ID: <21548EC6CC6B7B4E91FDF0E900525D68@nxvp.net>
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

DQoNCu+7v09uIDEwLzEwLzIwMjIsIDExOjQxLCAiQmxvYXQgb24gYmVoYWxmIG9mIFNlYmFzdGlh
biBNb2VsbGVyIHZpYSBCbG9hdCIgPGJsb2F0LWJvdW5jZXNAbGlzdHMuYnVmZmVyYmxvYXQubmV0
IG9uIGJlaGFsZiBvZiBibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOg0KDQogICAg
CVtTTV0gQ29vbCwgaWYgSSBtaWdodCBhc2sgd2hhdCBmcmFjdGlvbiBvZiB0aGUgc3luYyBhcmUg
eW91IHNldHRpbmcgdGhlIHRyYWZmaWMgc2hhcGVyIGZvciBhbmQgYXJlIHlvdSBkb2luZyBmaW5l
IGdyYWluZWQgb3ZlcmhlYWQgYWNjb3VudGluZyAob3Igc2ltcGx5IGZvbGQgdGhhdCBpbnRvIGEg
Z3JhbmQgImRlLXJhdGluZyItZmFjdG9yKT8NCg0KV2UgZW5kZWQgdXAganVzdCB1c2luZyBhIGZy
YWN0aW9uLiAgQ2FuJ3QgcmVtZW1iZXIgdGhlIGV4YWN0IGZyYWN0aW9uLCBidXQgd2Ugd2VyZSBu
b3QgY29uc2VydmF0aXZlLiAgSXQgd2FzIGhhcmQgdG8gcHVzaCB0aHJvdWdoIHRoaXMgY2hhbmdl
IHNvIGxlYXZpbmcgYW55IGJ3IG9uIHRoZSB0YWJsZSB3YXMgc2FjcmlsZWdpb3VzIHRvIGEgbG90
IG9mIHBlb3BsZS4gIA0KDQoNCi1FcmlrIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
