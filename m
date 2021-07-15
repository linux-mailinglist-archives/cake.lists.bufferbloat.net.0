Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 614613C9596
	for <lists+cake@lfdr.de>; Thu, 15 Jul 2021 03:27:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6A6FE3CB55;
	Wed, 14 Jul 2021 21:27:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626312443;
	bh=KdqvcUPSK/un+k63cHi9MBZ0BEj0QHMAYq/jN/MGP9o=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eyVFT7WP4ED2MFf3/0t9uufdFK6jlm8QnZewuaBQTIF5dVmA4nlyrCqeJ/QujoWGw
	 3gezwJnDwgVdbwiil0UBtCfP6zs2bXo/UdCS58welm3mi0YINIJQA7hcRcEclsh65q
	 cWLebQCWMTuSdUcN2uNex/ir/GwRF2CgvCam46UvgVWzpA/oWww8929ku97gkE0isT
	 IfMFSLzF0BTNhGLa2c1tEs/FX+TV8CbBoLeCeGnhq7tN+tsCXs6SmAEesi1QXSH4ZX
	 bPhAy8OSt72ibpFqcdH4UgevWAfW/m66Xv9anKGgRKHRbnCpGzsS6sSM28fjGttpSr
	 lmd/4cQ1a7wQg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0b-00190b01.pphosted.com (mx0b-00190b01.pphosted.com
 [IPv6:2620:100:9005:57f::1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9DFA03CB35;
 Wed, 14 Jul 2021 21:27:21 -0400 (EDT)
Received: from pps.filterd (m0122330.ppops.net [127.0.0.1])
 by mx0b-00190b01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16F1NcEG007747; Thu, 15 Jul 2021 02:27:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=9J3E0fpT0x4Q6jHcsidDTiph/Bnh8SVZ359pyelrEtA=;
 b=jXOSNSc4/zSgXEYFAVAt/Xf6ZBMuPgO4ajhwvzMTSv66ILLilARVKtf/5tuVzIy53+Lk
 /cba1k2BK2hx6K8+WXuY31f5uDrPxtYgCOIWyMnSxN9QOevNEk5xBSI8s7CCaDg5OgEg
 Qev1iupQTD4ejpET3uQVPdoAFpOcWlBfmgta4E/JwVt2mxNGurM/4agZ6QazDzRZ3Bay
 7vynImqOeVJ3vl2p1WiWRwsXYGVHGoVmlOfvqfX7PPAGpzEiB4PVyLJeH5DNNT9kmh7M
 LeE5OJrKjtu+zAqwp+Ouy6ENxhzKZ/BEwOfTSClHMNotWzb58/YC2xxpnDBMKYLqV5lQ Bg== 
Received: from prod-mail-ppoint7
 (a72-247-45-33.deploy.static.akamaitechnologies.com [72.247.45.33] (may be
 forged)) by mx0b-00190b01.pphosted.com with ESMTP id 39tbap01d9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 15 Jul 2021 02:27:06 +0100
Received: from pps.filterd (prod-mail-ppoint7.akamai.com [127.0.0.1])
 by prod-mail-ppoint7.akamai.com (8.16.1.2/8.16.1.2) with SMTP id
 16F1JEsD015277; Wed, 14 Jul 2021 21:27:06 -0400
Received: from email.msg.corp.akamai.com ([172.27.165.112])
 by prod-mail-ppoint7.akamai.com with ESMTP id 39sqmhfxpq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 14 Jul 2021 21:27:05 -0400
Received: from USTX2EX-DAG1MB4.msg.corp.akamai.com (172.27.165.122) by
 ustx2ex-dag1mb6.msg.corp.akamai.com (172.27.165.124) with Microsoft SMTP
 Server (TLS) id 15.0.1497.18; Wed, 14 Jul 2021 20:27:05 -0500
Received: from USTX2EX-DAG1MB4.msg.corp.akamai.com ([172.27.165.122]) by
 ustx2ex-dag1mb4.msg.corp.akamai.com ([172.27.165.122]) with mapi id
 15.00.1497.018; Wed, 14 Jul 2021 20:27:05 -0500
To: Bob McMahon <bob.mcmahon@broadcom.com>, "David P. Reed"
 <dpreed@deepplum.com>
Thread-Topic: [Bloat] Little's Law mea culpa, but not invalidating my main
 point
Thread-Index: AQHXeRiECbJyqSvSCEW/iAzXQLSQGQ==
Date: Thu, 15 Jul 2021 01:27:04 +0000
Message-ID: <777A6DD8-94E3-46E6-A2E0-760E214E72CA@akamai.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
 <1626111630.69692379@apps.rackspace.com>
 <CAHb6LvoD+ACc+17WhTVmS8HYnYyboJrCg5zQF8uXtzrmqqKfPA@mail.gmail.com>
 <9c3d61c1-7013-414e-964d-9e83f596e69d@candelatech.com>
 <CAHb6LvpyQtGg3sMF2RV_gMpEcaY32A70VaEwtsnoeq4DHtv7EA@mail.gmail.com>
 <1e8bdf58-2a21-f543-a248-be58bcbddbcf@candelatech.com>
 <02c601d777b6$c4ce5a10$4e6b0e30$@rizk.com.de>
 <CAHb6LvqRyuK1Xzt6mNhAteit3qZ3bD0vKSqHqog6ZqgMaiBu9w@mail.gmail.com>
 <1626198543.007132235@apps.rackspace.com>
 <CAHb6LvoMmU5onHBbXCoqvvbgD=z195WvN2vUyazbcfBBhc0Wyg@mail.gmail.com>
In-Reply-To: <CAHb6LvoMmU5onHBbXCoqvvbgD=z195WvN2vUyazbcfBBhc0Wyg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.50.21061301
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.27.164.43]
Content-ID: <8B77209DB26A714F8FAC2A8AF088E207@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-14_14:2021-07-14,
 2021-07-14 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107150007
X-Proofpoint-GUID: F9x_ZyqVXRgWq4IXXUi4V_mw-RPO-yJY
X-Proofpoint-ORIG-GUID: F9x_ZyqVXRgWq4IXXUi4V_mw-RPO-yJY
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-14_14:2021-07-14,
 2021-07-14 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 mlxscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107150007
X-Agari-Authentication-Results: mx.akamai.com;
 spf=${SPFResult} (sender IP is 72.247.45.33)
 smtp.mailfrom=jholland@akamai.com smtp.helo=prod-mail-ppoint7
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
 but not invalidating my main point
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
From: "Holland, Jake via Cake" <cake@lists.bufferbloat.net>
Reply-To: "Holland, Jake" <jholland@akamai.com>
Cc: "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogQm9iIE1jTWFob24gdmlhIEJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+
DQo+IERhdGU6IFdlZCwyMDIxLTA3LTE0IGF0IDExOjM4IEFNDQo+IE9uZSBjaGFsbGVuZ2UgSSBm
YWNlZCB3aXRoIGlwZXJmIDIgd2FzIGFyb3VuZCBmbG93IGNvbnRyb2wncyBlZmZlY3RzIG9uDQo+
IGxhdGVuY3kuIEkgZmluZCBpZiBpcGVyZiAyIHJhdGUgbGltaXRzIG9uIHdyaXRlcyB0aGVuIHRo
ZSBlbmQvZW5kDQo+IGxhdGVuY2llcywgUlRUIGxvb2sgZ29vZCBiZWNhdXNlIHRoZSBwaXBlIGlz
IGJhc2ljYWxseSBlbXB0eSwgd2hpbGUgcmF0ZQ0KPiBsaW1pdGluZyByZWFkcyB0byB0aGUgc2Ft
ZSB2YWx1ZSBmaWxscyB0aGUgd2luZG93IGFuZCBkcml2ZXMgdGhlIFJUVCB1cC4NCj4gT25lIG1p
Z2h0IGNvbmNsdWRlLCBmcm9tIGEgbmV0d29yayBwZXJzcGVjdGl2ZSwgdGhlIHdyaXRlIHNpZGUg
aXMNCj4gYmV0dGVyLiAgQnV0IGluIHJlYWxpdHksIHRoZSB3cml0ZSByYXRlIGxpbWl0aW5nIGlz
IGp1c3QgcHVzaGluZyB0aGUNCj4gZGVsYXkgaW50byB0aGUgYXBwbGljYXRpb24ncyBsb2dpYywg
aS5lLiB0aGUgcmVsZXZhbnQgYnl0ZXMgbWF5IG5vdCBiZQ0KPiBpbiB0aGUgcGlwZSBidXQgdGhl
eSBhcmVuJ3QgYXQgdGhlIHJlY2VpdmVyIGVpdGhlciwgdGhleSdyZSBzdHVjaw0KPiBzb21ld2hl
cmUgaW4gdGhlICJ0eCBhcHBsaWNhdGlvbiBzcGFjZS4iDQo+DQo+IEl0IHdhc24ndCBvYnZpb3Vz
IHRvIG1lIGhvdyB0byBhZGRyZXNzIHRoaXMuIFdlIGFkZGVkIGJ1cnN0IG1lYXN1cmVtZW50cw0K
PiAoYnVyc3QgeGZlciB0aW1lLCBhbmQgYnVyc3RzL3NlYykgd2hpY2gsIEkgdGhpbmssIGhlbHBz
Lg0KLi4uDQo+Pj4gSSBmaW5kIHRoZSBhc3N1bXB0aW9uIHRoYXQgY29uZ2VzdGlvbiBvY2N1cnMg
ImluIG5ldHdvcmsiIGFzIG5vdCBhbHdheXMNCj4+PiB0cnVlLiBUYWtpbmcgT1dEIG1lYXN1cmVt
ZW50cyB3aXRoIHJlYWQgc2lkZSByYXRlIGxpbWl0aW5nIHN1Z2dlc3RzIHRoYXQNCj4+PiBlcXVh
bGx5IGltcG9ydGFudCB0byBtaXRpZ2F0aW5nIGJ1ZmZlcmJsb2F0IGRyaXZlbiBsYXRlbmN5IHVz
aW5nIGNvbmdlc3Rpb24NCj4+PiBzaWduYWxzIGlzIHRvIG1ha2Ugc3VyZSBhcHBzIHJlYWQgImZh
c3QgZW5vdWdoIiB3aGF0ZXZlciB0aGF0IG1lYW5zLiBJDQo+Pj4gcmFyZWx5IGhlYXIgYWJvdXQg
aG93IGltcG9ydGFudCBpdCBpcyBmb3IgYXBwcyB0byBwcmlvcml0aXplIHJlYWRzIG92ZXINCj4+
PiBvcGVuIHNvY2tldHMuIE5vdCBzdXJlIHdoeSB0aGF0J3Mgb3Zlcmxvb2tlZCBhbmQgYnVmZmVy
YmxvYXQgZ2V0cyBhbGwgdGhlDQo+Pj4gYXR0ZW50aW9uLiBJJ20gcHJvYmFibHkgbWlzc2luZyBz
b21ldGhpbmcuDQoNCkhpIEJvYiwNCg0KWW91J3JlIHJpZ2h0IHRoYXQgdGhlIHNlbmRlciBnZW5l
cmFsbHkgYWxzbyBoYXMgdG8gYXZvaWQgc2VuZGluZw0KbW9yZSB0aGFuIHRoZSByZWNlaXZlciBj
YW4gaGFuZGxlIHRvIGF2b2lkIGRlbGF5cyBpbiBhIG1lc3NhZ2UtDQpyZXBseSBjeWNsZSBvbiB0
aGUgc2FtZSBUQ1AgZmxvdy4NCg0KSW4gZ2VuZXJhbCwgSSB0aGluayBvZiBmYWlsdXJlcyBoZXJl
IGFzIGFwcGxpY2F0aW9uIGZhdWx0cyByYXRoZXINCnRoYW4gbmV0d29yayBmYXVsdHMuICBXaGls
ZSBpbXBvcnRhbnQgZm9yIHVzZXIgZXhwZXJpZW5jZSwgaXQncw0Kc29tZXRoaW5nIHRoYXQgYW4g
YXBwIGRldmVsb3BlciBjYW4gc29sdmUuICBUaGF0J3MgaW1wb3J0YW50bHkNCmRpZmZlcmVudCBm
cm9tIG5ldHdvcmsgYnVmZmVyaW5nLg0KDQpJdCdzIGFsc28gc29tZXdoYXQgcG9zc2libGUgdG8g
YXZvaWQgZ2V0dGluZyBleGNlc3NpdmVseSBiYWNrZWQgdXANCmluIHRoZSBuZXR3b3JrIGJlY2F1
c2Ugb2YgeW91ciBvd24gdHJhZmZpYy4gIEhlcmUgYmJyIHVzdWFsbHkgZG9lcw0KYSBkZWNlbnQg
am9iIG9mIGtlZXBpbmcgdGhlIHF1ZXVlcyBkZWNlbnRseSBsb3cuICAoQW5kIHlvdSdsbCBtYXli
ZQ0KZmluZCB0aGF0IHNvbWUgb2YgdGhlIGJ1ZmZlcmJsb2F0IG1lYXN1cmVtZW50IGVmZm9ydHMg
YXJlIHJlbHlpbmcNCm9uIHRoZSBzZWxmLWNvbmdlc3Rpb24geW91IGdldCBvdXQgb2YgY3ViaWMs
IHNvIGlmIHlvdSBzd2l0Y2ggdGhlbQ0KdG8gYmJyIHlvdSBtaWdodCBub3QgZ2V0IGEgZ29vZCBh
bnN3ZXIgb24gaG93IGJpZyB0aGUgbmV0d29yayBidWZmZXJzDQphcmUuKQ0KDQpJbiBnZW5lcmFs
LCBhbnl0aGluZyBhbG9uZyB0aGVzZSBsaW5lcyBoYXMgdG8gZ2l2ZSBiYWNrcHJlc3N1cmUgdG8N
CnRoZSBzZW5kZXIgc29tZWhvdy4gIFdoYXQgSSdtIGd1ZXNzaW5nIHlvdSBzYXcgd2hlbiB5b3Ug
ZGlkIHJlY2VpdmVyLQ0Kc2lkZSByYXRlIGxpbWl0aW5nIHdhcyB0aGF0IHRoZSBiYWNrcHJlc3N1
cmUgaGFkIHRvIGZpbGwgYnl0ZXMgYWxsDQp0aGUgd2F5IGJhY2sgdG8gYSBmdWxsIHJlY2VpdmUg
a2VybmVsIGJ1ZmZlciAobWFraW5nIGEgMCByd25kIGZvcg0KVENQKSBhbmQgYSBmdWxsIHNlbmQg
a2VybmVsIGJ1ZmZlciBiZWZvcmUgdGhlIHNlbmQgd3JpdGVzIHN0YXJ0DQpmYWlsaW5nIChJIHRo
aW5rIHdpdGggRU5PQlVGUyBpaXJjPyksIGFuZCB0aGF0J3MgdGhlIGZpcnN0IGhpbnQgdGhlDQpz
ZW5kZXIgaGFzIHRoYXQgaXQgY2FuJ3Qgc2VuZCBtb3JlIGRhdGEgcmlnaHQgbm93LiAgVGhlIGFz
c3VtcHRpb24NCnRoYXQgdGhlIHJlY2VpdmVyIGNhbiByZWNlaXZlIGFzIGZhc3QgYXMgdGhlIHNl
bmRlciBjYW4gc2VuZCBpcyBzbw0KY29tbW9uIHRoYXQgaXQgb2Z0ZW4gZ29lcyB1bnN0YXRlZC4N
Cg0KKElmIHlvdSBsb3ZlIHRvIHN1ZmZlciwgeW91IGNhbiBtYXliZSBnZXQgdGhlIGJhY2twcmVz
c3VyZSB0byBzdGFydA0KZWFybGllciwgYW5kIHdpdGggbWF5YmUgYSBsb3dlciBpbXBhY3QgdG8g
eW91ciBhcHAtbGV2ZWwgUlRULCBpZg0KeW91IHRyeSBoYXJkIGVub3VnaCBmcm9tIHRoZSByZWNl
aXZlIHNpZGUgd2l0aCBUQ1BfV0lORE9XX0NMQU1QOg0KaHR0cHM6Ly9tYW43Lm9yZy9saW51eC9t
YW4tcGFnZXMvbWFuNy90Y3AuNy5odG1sIzp+OnRleHQ9dGNwX3dpbmRvd19jbGFtcA0KQnV0IHlv
dSdsbCBzdGlsbCBiZSBsaXZpbmcgd2l0aCBhIGZ1bGwgc2VuZCBidWZmZXIgYWhlYWQgb2YgdGhl
DQptZXNzYWdlLXJlc3BvbnNlLikNCg0KQnV0IHVzdWFsbHkgdGhlIHJpZ2h0IHRoaW5nIHRvIGRv
IGlmIHlvdSB3YW50IHJlY2VpdmVyLWRyaXZlbiByYXRlDQpjb250cm9sIGlzIHRvIHNlbmQgYmFj
ayBzb21lIGtpbmQgb2YgZXhwbGljaXQgInNsb3cgZG93biwgaXQncyB0b28NCmZhc3QgZm9yIG1l
IiBmZWVkYmFjayBhdCB0aGUgYXBwIGxheWVyIHRoYXQgd2lsbCBtYWtlIHRoZSBzZW5kZXIgc2Vu
ZA0Kc2xvd2VyLiAgRm9yIGluc3RhbmNlIG1vc3QgQUJSIHBsYXllcnMgd2lsbCBzaGlmdCBkb3du
IHRoZWlyIGJpdHJhdGUNCmlmIHRoZXkncmUgZmFpbGluZyB0byByZW5kZXIgdmlkZW8gZmFzdCBl
bm91Z2gganVzdCBhcyB3ZWxsIGFzIGlmIHRoZQ0KbmV0d29yayBpc24ndCBmZWVkaW5nIHRoZSB2
aWRlbyBzZWdtZW50cyBmYXN0IGVub3VnaCwgbGlrZSBpZiB0aGV5J3JlDQpDUFUtYm91bmQgZnJv
bSBzb21ldGhpbmcgZWxzZSBjaHVybmluZyBvbiB0aGUgbWFjaGluZS4gIChSVFAtYmFzZWQNCnZp
ZGVvIHBsYXllcnMgYXJlIHN1cHBvc2VkIHRvIHNlbmQgZmVlZGJhY2sgd2l0aCB0aGlzIHNhbWUg
a2luZCBvZg0KInNsb3cgZG93biIgY2FwYWJpbGl0eSwgYW5kIHNvbWV0aW1lcyB0aGV5IGRvLikN
Cg0KQnV0IHdoYXQgeW91IGNhbid0IGZpeCBmcm9tIHRoZSBlbmRwb2ludHMgbm8gbWF0dGVyIGhv
dyBoYXJkIHlvdQ0KdHJ5IGlzIHRoZSBidWZmZXJzIGluIHRoZSBuZXR3b3JrIHRoYXQgZ2V0IGZp
bGxlZCBieSBvdGhlciBwZW9wbGUncw0KdHJhZmZpYy4NCg0KR2V0dGluZyBvdGhlciBwZW9wbGUn
cyB0cmFmZmljIHRvIGF2b2lkIGJyZWFraW5nIG15IGxhdGVuY3kgd2hlbg0Kd2UncmUgc2hhcmlu
ZyBhIGJvdHRsZW5lY2sgcmVxdWlyZXMgZGVwbG95aW5nIHNvbWV0aGluZyBpbiB0aGUgbmV0d29y
aw0KYW5kIGl0J3Mgbm90IHNvbWV0aGluZyBJIGNhbiBmaXggbXlzZWxmIGV4Y2VwdCBpbnNpZGUg
bXkgb3duIG5ldHdvcmsuDQoNCldoaWxlIHRoZSBhcHAtc3BlY2lmaWMgZml4ZXMgd291bGQgbWFr
ZSBmb3IgdmVyeSBmaW5lIGJsb2cgcG9zdHMgb3INCnN0YWNrIG92ZXJmbG93IHF1ZXN0aW9ucyB0
aGF0IGNvdWxkIGhlbHAgc29tZW9uZSB3aG8gbWFuYWdlZCB0byBzZWFyY2gNCnRoZSByaWdodCB0
ZXJtcywgdGhlcmUncyBhIGxvdCBvZiBkaWZmZXJlbnQgYXBwcm9hY2hlcyBmb3IgZGlmZmVyZW50
DQphcHBzIHRoYXQgY2FuIHNvbHZlIGl0IG1vcmUgb3IgbGVzcywgYW5kIGFueW9uZSB3aG8gdHJp
ZXMgaGFyZCBlbm91Z2gNCndpbGwgbGFuZCBvbiBzb21ldGhpbmcgdGhhdCB3b3JrcyB3ZWxsIGVu
b3VnaCBmb3IgdGhlbSwgYW5kIHlvdSBkb24ndA0KbmVlZCBhIHdob2xlIG1vdmVtZW50IHRvIGdl
dCBwZW9wbGUgdG8gbWFrZSBpdCBzbyB0aGVpciBvd24gYXBwIHdvcmtzDQpvayBmb3IgdGhlbSBh
bmQgdGhlaXIgdXNlcnMuICBUaGUgcHJvYmxlbXMgY2FuIGJlIHN1YnRsZSBhbmQgbWF5YmUNCnRo
ZXJlIHdpbGwgYmUgc29tZSBsYXRlIGFuZCBmcnVzdHJhdGluZyBuaWdodHMgaW52b2x2ZWQsIGJ1
dCBhbnlvbmUNCndobyBnZXRzIGl0IHJlcHJvZHVjaWJsZSBhbmQga2VlcHMgZGlnZ2luZyB3aWxs
IHNvbHZlIGl0IGV2ZW50dWFsbHkuDQoNCkJ1dCBnZXR0aW5nIHN0dWZmIGRlcGxveWVkIGluIG5l
dHdvcmtzIHRvIHN0b3AgcGVvcGxlJ3MgdHJhZmZpYw0KYnJlYWtpbmcgZWFjaCBvdGhlcidzIGxh
dGVuY3kgaXMgaGFyZGVyLCBlc3BlY2lhbGx5IHdoZW4gaXQncyBhDQptYWpvciBjaGFsbGVuZ2Ug
Zm9yIHBlb3BsZSB0byBldmVuIGdyYXNwIHRoZSBwcm9ibGVtIGFuZCB1bmRlcnN0YW5kDQppdHMg
Y2F1c2VzLiAgVGhlIG9ubHkgcG9zc2libGUgcGF0aHMgdG8gZ2V0dGluZyBhIHNvbHV0aW9uIHdp
ZGVseQ0KZGVwbG95ZWQgKGFzc3VtaW5nIHlvdSBoYXZlIG9uZSB0aGF0IHdvcmtzKSBzdGFydCB3
aXRoIHRoaW5ncyBsaWtlDQoic3RhcnQgYW4gYWR2b2NhY3kgbW92ZW1lbnQiIG9yICJnZXQgYSBj
b250cm9sbGluZyBpbnRlcmVzdCBpbiBDaXNjbyIuDQoNCkJlc3QsDQpKYWtlDQoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=
