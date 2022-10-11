Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 014555FAC30
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 08:08:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C1713CB42;
	Tue, 11 Oct 2022 02:08:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665468530;
	bh=u2PJ7Ka056ISuxMG5jtcbsoysiWPzXNGtV8NYaWt9lU=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=gjkn5WmjZqjo9JoPwAjBgxxo+mpgk9PqjQcbddFIdFlpqJy0sAHvPiYeLRceZCgbq
	 r54RAzu6XLurqt66VWTvmWkMV6iBpKzpD2pdnBQVqgRz2BRTzuDQuAOyeBbmgO1B5F
	 vZcebTMKl/G3dHogq5LrDGwiOJuBSwMMXHnIjX2sfeIU/0hFuMI1yPQmaxdSSwQ2B4
	 rdDGjYNEFlRmJrxauZZgy1z79z7NmC2loN4c9Wu4Jf3+dztose2aB6+qSC87UgNZ1J
	 gi/6H82J4+vPpEZFVSYIvxtvIviM5hGF6ClU2aMh2OH9RcP/3vvhN3LTV+NnNDIh3C
	 l5u/jYuJ5fMqg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-01.telenor.no (tn-mailgw-01.telenor.no [153.110.76.4])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C49483B29D;
 Tue, 11 Oct 2022 02:08:47 -0400 (EDT)
X-IronPort-AV: E=Sophos;i="5.95,175,1661817600"; d="scan'208";a="131876505"
Received: from tns-sko-24-201.corp.telenor.no ([10.179.59.69])
 by tn-mailgw-01.corp.telenor.no with ESMTP; 11 Oct 2022 06:08:45 +0000
Received: from TNS-SKO-24-203.corp.telenor.no (10.179.59.71) by
 TNS-SKO-24-201.corp.telenor.no (10.179.59.69) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38; Tue, 11 Oct 2022 08:08:34 +0200
Received: from outlook.telenor.no (10.179.127.50) by
 TNS-SKO-24-203.corp.telenor.no (10.179.59.71) with Microsoft SMTP Server
 (TLS) id 15.0.1497.38 via Frontend Transport; Tue, 11 Oct 2022 08:08:34 +0200
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex002.nxvp.net (10.149.139.135) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Tue, 11 Oct 2022 08:08:14 +0200
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2507.012; Tue,
 11 Oct 2022 08:08:14 +0200
To: Sebastian Moeller <moeller0@gmx.de>
Thread-Topic: [Cake] [Bloat] The most wonderful video ever about bufferbloat
Thread-Index: AQHY3OYqhtcwrOUMeE+lXMWbOXxQsK4ItR0A
Date: Tue, 11 Oct 2022 06:08:14 +0000
Message-ID: <100AC711-2C3E-4FE4-A1A3-65BC759B9530@telenor.no>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
 <2601A81B-4E21-454C-9959-EDD725547E9E@gmx.de>
In-Reply-To: <2601A81B-4E21-454C-9959-EDD725547E9E@gmx.de>
Accept-Language: nb-NO, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.65.22091101
msip_labels: MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SiteId=1676489c-5c72-46b7-ba63-9ab90c4aad44;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Enabled=true;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Method=Standard;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ActionId=c5919708-8f90-459f-878e-4592be3e7590;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_ContentBits=0;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_Name=Internal;
 MSIP_Label_f604d2c9-1577-460e-b668-57374a0216c3_SetDate=2022-10-11T05:57:04Z; 
x-originating-ip: [10.149.139.241]
X-TM-SNTS-SMTP: B68E240715AF51BDBC0D0AD836DCAFCED2EFAFE6E895F45E605FFDB8EA9FEDC72000:8
Content-ID: <9A7A111C3481844FB36E2A910E24158C@nxvp.net>
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

DQoNCu+7v09uIDEwLzEwLzIwMjIsIDIyOjIzLCAiQ2FrZSBvbiBiZWhhbGYgb2YgU2ViYXN0aWFu
IE1vZWxsZXIgdmlhIENha2UiIDxjYWtlLWJvdW5jZXNAbGlzdHMuYnVmZmVyYmxvYXQubmV0IG9u
IGJlaGFsZiBvZiBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6DQoNCg0KICAgIAlb
U01dIFRyaWNreS4uLiBlLmcuIHZlY3RvcmluZyBlbmFibGVkIENQRSBjYW4gYmUgaW5zdHJ1Y3Rl
ZCBieSB0aGUgRFNMQU0gdG8gc2VuZCBlcnJvciBzYW1wbGVzIGluLWJhbmQgd2l0aCB0aGUgZGF0
YSwgYnV0IHRoYXQgdHJhZmZpYyBpcyBuZXZlciBzZWVuIGJ5IG91ciBzaGFwZXJzLCBzbyB0byBh
Y2NvdW50IGZvciB0aGF0IHdlIG5lZWQgdG8gc2V0IGEgZnJhY3Rpb24gdGhhdCBhbGxvd3MgZm9y
IHRoYXQgKG1vcmUgb3IgbGVzcykgcGVyaW9kaWMgdHJhZmZpYy4gSSBndWVzcyBvbmUgY2FuIHJl
YWNoIGEgcG9pbnQgb2YgImdvb2cgZW5vdWdoIiBldmVuIHdoZW4gaWdub3Jpbmcgc3VjaCBldmVu
dHVhbGl0aWVzLCBlc3BlY2lhbGx5IGlmIGhhdmluZyB0byBjb252aW5jZSB0aHJvdWdoLXB1dCBo
b3Qtcm9kZGVycy4gQWx3YXlzIGludGVyZXN0aW5nIHRvIGhlYXIgZXhwZXJpZW5jZSBmcm9tIHRo
ZSByZWFsIHdvcmxkLCB0aGFua3MhDQoNCkluIG15IGJ1c3NpbmVzcyB3ZSBjYW4ndCBsZXQgcGVy
ZmVjdCBiZSB0aGUgZW5lbXkgb2YgZ29vZC4gSWYgd2Ugd2VyZSB0byB3YWl0IGZvciB0aGUgcGVy
ZmVjdCBmaXJtd2FyZSwgbm9ib2R5IHdvdWxkIGhhdmUgaW50ZXJuZXQgYWNjZXNzIGF0IGFsbC4g
IE91ciB0ZWFtIG1vdG8gaXMgInN1Y2sgbGVzcyIuICBNZWFuaW5nIHdlIGtub3cgdGhlcmUgYXJl
IGlzc3VlcyB3aXRoIGFsbCBwcm9kdWN0cyB3ZSB0YWtlIHRvIG1hcmtldC4gQW5kIHRvIGdldCB0
byBtYXJrZXQgYXQgYWxsIHdlIHVuZm9ydHVuYXRlbHkgbmVlZCB0byBhY2NlcHQgc29tZSBzdWNr
aW5lc3MgaW4gb25lIGRvbWFpbiBvciBhbm90aGVyLiAgU28gd2hlbiB3ZSBmb2xsb3cgdXAgdGhl
IHZlbmRvcnMgZWFjaCBuZXcgZmlybXdhcmUgaGFzIHRvIHN1Y2sgbGVzcy4gDQoNCi1FcmlrDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
