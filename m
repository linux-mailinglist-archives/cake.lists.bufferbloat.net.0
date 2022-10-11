Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C235FB18C
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 13:35:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 018A83CB39;
	Tue, 11 Oct 2022 07:34:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665488096;
	bh=eaI4fpvwhc3E7uMYE8tbhbrcztNtM8oMwv1eTfO0Nu4=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=V33GgWOV733qrB0aMYpEQyY5PUZ/Nc2KWVmu4j97KBQmkH0i7nwqoAPbzVMi++ilJ
	 JSrNYqutS19pxoAMJVA3Xw3/tZHwt/0gBBRLDrzmz6FiOMQPH53tQfEcVPcAiI1HJR
	 l6qif/qbLmh48oFHX6LIX3ft5UopTHUu6SQIDWRpjIN5YwGI2ZAQVXICzXoFTmcPm+
	 G5KM62+PJ9AfBpMIEiLL4ne8RqzmBkobqn9aQ7nZGb/+wq9/EXghjhKou4Z/pacXlP
	 noEaDJCAdWCtJC06zjBkEyhd2nk7zson7v879UzqyP++SPsHlBp+n07nt4kQRB9Xyx
	 LlIbEJ8jwCw1g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-03.telenor.no (tn-mailgw-03.telenor.no [153.110.76.6])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1BC833B2A4;
 Tue, 11 Oct 2022 07:34:54 -0400 (EDT)
X-IronPort-AV: E=Sophos;i="5.95,176,1661817600"; d="scan'208";a="128018346"
Received: from tns-sko-24-202.corp.telenor.no ([10.179.59.70])
 by tn-mailgw-03.corp.telenor.no with ESMTP; 11 Oct 2022 11:34:52 +0000
Received: from TNS-SKO-24-205.corp.telenor.no (10.179.59.73) by
 TNS-SKO-24-202.corp.telenor.no (10.179.59.70) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38; Tue, 11 Oct 2022 13:34:52 +0200
Received: from outlook.telenor.no (10.179.127.61) by
 TNS-SKO-24-205.corp.telenor.no (10.179.59.73) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38 via Frontend Transport; Tue, 11 Oct 2022 13:34:52 +0200
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex002.nxvp.net (10.149.139.135) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Tue, 11 Oct 2022 13:34:49 +0200
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2507.012; Tue,
 11 Oct 2022 13:34:49 +0200
To: Dave Taht <dave.taht@gmail.com>, Sebastian Moeller <moeller0@gmx.de>
Thread-Topic: [Bloat] [Cake] The most wonderful video ever about bufferbloat
Thread-Index: AQHY3TwNKKpB1v9mPkiTNAKH+Q66b64JEHcA
Date: Tue, 11 Oct 2022 11:34:48 +0000
Message-ID: <846803D7-48E7-44E8-8A54-B5490D0BB421@telenor.no>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
 <2601A81B-4E21-454C-9959-EDD725547E9E@gmx.de>
 <100AC711-2C3E-4FE4-A1A3-65BC759B9530@telenor.no>
 <E667667F-DFC0-4C2E-866E-ACE4C4DE24D8@gmx.de>
 <CAA93jw7Rvx6aBeQAbG5QNm4S6MTqW=Sm3zK5NC6LEEqz-dz-QA@mail.gmail.com>
In-Reply-To: <CAA93jw7Rvx6aBeQAbG5QNm4S6MTqW=Sm3zK5NC6LEEqz-dz-QA@mail.gmail.com>
Accept-Language: nb-NO, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.65.22091101
msip_labels: MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SiteId=1676489c-5c72-46b7-ba63-9ab90c4aad44;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Method=Standard;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ActionId=28685d9f-981f-4a40-b125-36c6e1bf044c;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ContentBits=0;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Name=Internal;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SetDate=2022-10-11T11:18:32Z; 
x-originating-ip: [10.149.139.246]
X-TM-SNTS-SMTP: A8102ED4D229715E53D413241A70E68A14937C06FF99470152E7D4A18FC9F47E2000:8
Content-ID: <D87035D49A57A544995F49BFDC908D3E@nxvp.net>
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

Tm8gd2UgZG9uJ3QuICBJIHRoaW5rIHNvbWVvbmUgd2l0aG91dCBhbGwgdGhlIGxlZ2FjeSBpbXBv
c2VkIG9uIGFuIG9sZCBJU1AgYXMgVGVsZW5vciBuZWVkcyB0byBnbyBmb3IgdGhhdCBtYXJrZXQu
DQoNCkFuZCB3aGVuIEkgc2VlIGhvdyBkaWZmaWN1bHQgaXQgaXMgdG8gZ2V0IGN1c3RvbWVyIHRv
IHN3YXAgZGV2aWNlcyBldmVuIHdoZW4gd2UgZ2l2ZSBpdCB0byB0aGVtIGZvciBmcmVlIC0gSSBk
b24ndCBzZWUgYSB2aWFibGUgYnVzaW5lc3MgbWFkZSBmcm9tIHNlbGxpbmcgQ1BFcyB3aGVuIG5v
dCBiYWNrZWQgYnkgdGhlIHN1YnNpZHkgb2YgdGhlIGFjY2VzcyBwcm9kdWN0LiANCg0KLUVyaWsN
Cg0KDQoNCu+7v09uIDExLzEwLzIwMjIsIDA4OjM4LCAiRGF2ZSBUYWh0IiA8ZGF2ZS50YWh0QGdt
YWlsLmNvbT4gd3JvdGU6DQoNCiAgICBJIGd1ZXNzIG15IHF1ZXN0aW9uIGlzLCBlcmlrLCBkbyB5
b3Ugc2VsbCB0aGVzZSByb3V0ZXJzIGNvbW1lcmNpYWxseT8NCiAgICBUaGVyZSBpcyBhIGh1Z2Ug
bGF0ZW50IG1hcmtldCBpbiB0aGUgVVMgdGhhdCBjb3VsZCB1c2UgdXBncmFkZXMuLi4uLg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
