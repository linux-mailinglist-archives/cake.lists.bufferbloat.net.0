Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 16515BAC430
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 11:23:20 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 1FB8F70E79E;
	Tue, 30 Sep 2025 11:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759224199;
	bh=JgjqQrASruvbne1raPC9zqcufp1Sn5RugjicrDIdTGc=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LBR8tZZ/Q62Ri0rXA/SlN6952mtCuieeroUPlSDUdWtda8Ewg2sIhBG7qRvvhhoFe
	 BXquSKuIRYqQa3U6EbTdPYNiPTsXnV1mG9gH42nbPJ3VS4RrVacCUkGcbBZJw6Zvzj
	 0hPK8vrzfQ7jo9Su3I9x726qopBTxsaULgc6GPfrTaZEa1wx2Xa7NgnAeK86yE5I0Y
	 PrKXHMzRZzQmeumVgVMCQ8SXEfw/rQqF0m/QWF6xkKObF5Uob2CY4+Znyoe7PQPjXP
	 6FpKrTq0fFljmBDLkFF7ersvE5n5zPIzpticjGbwbEAMy3K2RB4AT7d69+bVdG2GES
	 zaYZgDDcPF34A==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759224199;
 b=gKsEazVPlJKCHfMOLtiN/yOhRTkmLtsJvLRJF89s4EMcS06O6hgU1xMcJuheHsMWR8/IS
 A32LM/4SqFIBQzojng2uTvOTp2mSHz4274/mLySPgzMvLr3i1Tr8cYfng/inp/dD3kUXGQk
 KC1rJLT37u9wkVzQf+OWlewmeC3MY0s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759224199; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JgjqQrASruvbne1raPC9zqcufp1Sn5RugjicrDIdTGc=;
 b=lqOmZHkBoix8+h6AXu4SGSfeKobWuqK6lt22u9CxJ6YF4fY8q1Xm6nhSYW63hjxltHSpH
 F+guzn5DnKKEQ3RdVOEe62rpLfk6CpOeVGe/cvt/TM7Rs7GJnrJ+CUuBZSIfcTAjp4bxUSn
 rp6K7OmINXqR7bYuws/I7nKJYEzcOKo=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1759224197; bh=sgPyA27LdphefuhDD8iMIzFjwbyr69ZQO5Gt89Fxl1A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ZN++dTzowfv8DBbuxeVsupMN+uFUsPdaRAucTQMrIZarVl0zQaTWdmXIt8khSsZkj
	 tiJrUxDKD8s6PqqH8gdGL2vPgeUvEZmPALSTIuU4yH9g/O2eYmlpZPupNm/RWceqo1
	 GZExrIQ2jwrPwIRvwVZyi4leZG0ulKlxiwJL4k3bxDxJpy+SmMCqoRFWf+dAxA7YBj
	 IZal6gvytxKLpTn+6qby1re66Jge3zPgcv9Zkaewl9oqOdlte0QdGqZvaRy+4GR27y
	 8u6in8WJSbcnMRJxNLegzyTJ3nWVppTI2SViElJBeePyCTBPTQlLhbob+hitRtNhkw
	 0ONistyu03uNg==
To: Sebastian Moeller <moeller0@gmx.de>
Cc: cake@lists.bufferbloat.net
In-Reply-To: <837EA4ED-26D3-4D83-84D9-5C0C75CFB80D@gmx.de>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <06DAA0CB-70EF-4FDD-BD3D-16A4FC28AD12@gmx.de>
 <alpine.DEB.2.02.2509280513450.14652@nftneq.ynat.uz>
 <87zfacmhuc.fsf@toke.dk> <837EA4ED-26D3-4D83-84D9-5C0C75CFB80D@gmx.de>
Date: Tue, 30 Sep 2025 11:23:16 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87v7l0mgzf.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: MBGNY2UAJ6UK4HEEMOS5CURCQEIASBJ2
X-Message-ID-Hash: MBGNY2UAJ6UK4HEEMOS5CURCQEIASBJ2
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87v7l0mgzf.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOg0KDQo+IEhpIFRva2Us
DQo+DQo+DQo+PiBPbiAzMC4gU2VwIDIwMjUsIGF0IDExOjA0LCBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gPHRva2VAdG9rZS5kaz4gd3JvdGU6DQo+PiANCj4+IERhdmlkIExhbmcgPGRhdmlkQGxh
bmcuaG0+IHdyaXRlczoNCj4+IA0KPj4+IFNlYmFzdGlhbiBNb2VsbGVyIHdyb3RlOg0KPj4+IA0K
Pj4+PiBIaSBEYXZpZCwNCj4+Pj4gDQo+Pj4+IHdoaWxlIEkgaGF2ZSBubyByZWFsIGFuc3dlciBm
b3IgeW91ciBxdWVzdGlvbnMgKGR1ZSB0byBuZXZlciBoYXZpbmcgaGFkIHRoYXQga2luZCBvZiBs
b2FkIGluIG15IGhvbWUgbmV0d29yayA7KSApIEkgd291bGQgbGlrZSB0byBhc2sgeW91IHRvIG1h
a2UgdGFrZSBzY3JpcHRlZCBjYXB0dXJlcyBvZiB0YyAtcyBxZGlzYyBmb3IgdGhlIHdhbiBpbnRl
cmZhY2UgaXMgcmVhc29uYWJsZSBzaG9ydCBpbnRlcnZhbHMgKHNheSBldmVyeSAxMCBtaW51dGVz
PykgYXMgdGhhdCBtaWdodCBiZSBqdXN0IHdoYXQgd2UgbmVlZCB0byBhY3R1YWxseSBhbnN3ZXIg
eW91ciBxdWVzdGlvbi4NCj4+PiANCj4+PiBJIHdpbGwgZG8gdGhhdCwgaG93ZXZlciB0aGUgbmV0
d29yayBpcyBvbmx5IHVwIHVuZGVyIGxvYWQgZm9yIDQgZGF5cyBhIHllYXIsIHNvIA0KPj4+IGl0
J3MgYSBzbG93IGZlZWRiYWNrIGxvb3AgOi0pDQo+Pj4gDQo+Pj4gSSB3b3VsZCB3ZWxjb21lIGFu
eSBvdGhlciBzdWdnZXN0aW9ucyBmb3IgZGF0YSB0byBnYXRoZXIuDQo+PiANCj4+IEhhdmluZyBx
dWV1ZSBzdGF0aXN0aWNzIGF0IGEgc2NhbGUgYXMgZ3JhbnVsYXIgYXMgeW91IGNhbiBtYW5hZ2Ug
d291bGQNCj4+IGJlIGNvb2wuIEl0J3MgYXJvdW5kIH40MDAgYnl0ZXMgb2YgcmF3IGRhdGEgcGVy
IHNhbXBsZSBDYXB0dXJpbmcgdGhhdA0KPj4gZXZlcnkgMTAwbXMgZm9yIGZvdXIgZGF5cyBpcyBv
bmx5IGFyb3VuZCAxLjQgR0Igb2YgZGF0YTsgc2hvdWxkDQo+PiB0aGVvcmV0aWNhbGx5IGJlIG1h
bmFnZWFibGU/IDopDQo+PiANCj4+IE5vdGUgdGhhdCB0aGUgNDAwIGJ5dGVzIGlzIHRoZSBpbi1r
ZXJuZWwgYmluYXJ5IHJlcHJlc2VudGF0aW9uOyB0aGUNCj4+IG91dHB1dCBvZiBgdGMgLXNgIGlz
IHNvbWV3aGF0IG1vcmU7IHVzaW5nIEpTT04gb3V0cHV0IChgdGMgLWogLXNgKSBhbmQNCj4+IGNv
bXByZXNzaW5nIHRoZSBvdXRwdXQgbWF5IGdldCB3aXRoaW4gc29tZXRoaW5nIHRoYXQgc2VydmVy
LWdyYWRlDQo+PiBoYXJkd2FyZSBzaG91bGQgaGFuZGxlIGp1c3QgZmluZS4NCj4+IA0KPj4+Pj4g
T24gMjguIFNlcCAyMDI1LCBhdCAxMzowNiwgRGF2aWQgTGFuZyA8ZGF2aWRAbGFuZy5obT4gd3Jv
dGU6DQo+Pj4+PiANCj4+Pj4+IEknbSBzdGFydGluZyB0byBwcmVwYXJlIGZvciB0aGUgbmV4dCBT
Y2FsZSBjb25mZXJlbmNlIGFuZCB3ZSBhcmUgc3dpdGNoaW5nIGZyb20gSnVuaXBlciByb3V0ZXJz
IHRvIExpbnV4IHJvdXRlcnMuIFRoaXMgZ2l2ZXMgbWUgdGhlIGFiaWxpdHkgdG8gaW1wbGVtZW50
IGNha2UuDQo+Pj4+PiANCj4+Pj4+IE9uZSBwcm9ibGVtIHdlIGhhdmUgaXMgY2xhc3NlcyB0aGF0
IHRlbGwgZXZlcnlvbmUgJ2dvIGRvd25sb2FkIHRoaXMnIHRoYXQgdHJpZ2dlciBodW5kcmVkcyBv
ZiBwZW9wbGUgdG8gaGFtbWVyIHRoZSBuZXR3b3JrIGF0IHRoZSBzYW1lIHRpbWUgKHRoaXMgaXMg
Ym90aCBhIHdpZmkgYW5kIGEgbmV0d29yayBiYW5kd2lkdGggaXNzdWUsIHdpZmkgaXMgYmVpbmcg
d29ya2VkIG9uKQ0KPj4+PiANCj4+PiANCj4+Pj4gU28gb25lIGlzc3VlIG1pZ2h0IGJlIHRoYXQg
d2l0aCBzZXZlcmFsIDEwMCB1c2VycyB0aGUgZGVmYXVsdCBjb21waWxlLXRpbWUgDQo+Pj4+IHNp
emUgb2YgcXVldWVzICgxMDI0LCBJSVJDKSB0aGF0IGNha2Ugd2lsbCBlbnRlcnRhaW4gbWlnaHQg
YmUgdG9vIGxpdHRsZSwgZXZlbiANCj4+Pj4gaW4gbGlnaHQgb2YgdGhlIDggd2F5IGFzc296aWF0
aXZlIGhhc2hpbmcgZGVzaWduLiBJIGJlbGlldmUgdGhpcyBjYW4gYmUgDQo+Pj4+IGNoYW5nZWQg
KHdpdGhpbiBsaW1pdHMpIG9ubHkgYnkgbW9kaWZ5aW5nIGF0IHNvdXJjZSBhbmQgcmVjb21waWxh
dGlvbiBvZiB0aGUgDQo+Pj4+IGtlcm5lbCwgaWYgdGhhdCBzaG91bGQgYmUgbmVlZGVkIGF0IGFs
bC4NCj4+PiANCj4+PiBjdXN0b20gY29tcGlsaW5nIGEga2VybmVsIGlzIHZlcnkgbXVjaCBhbiBv
cHRpb24gKGFuZCB0aGlzIHNvcnQgb2YgdHdlYWtpbmcgaXMgDQo+Pj4gdGhlIHNvcnQgb2YgdGhp
bmcgSSdtIGV4cGVjdGluZyB0byBuZWVkIHRvIGRvKQ0KPj4+IA0KPj4+IFRoZSBjb25mZXJlbmNl
IGlzIGluIE1hcmNoLCBzbyB3ZSBoYXZlIHNvbWUgdGltZSB0byB0aGluayBhYm91dCB0aGlzIGFu
ZCANCj4+PiBjdXN0b21pemUgdGhpbmdzLCBqdXN0IG5vIGNoYW5jZSB0byB0ZXN0IGJlZm9yZSB0
aGUgc2hvdy4NCj4+PiANCj4+Pj4gSSB3b25kZXIgd2hldGhlciBtdWx0aS1xdWV1ZSBjYWtlIHdv
dWxkIG5vdCBzb2x2ZSB0aGlzIHRvIHNvbWUgZGVncmVlLCBhcyBJIA0KPj4+PiBhc3N1bWUgZWFj
aCBxdWV1ZSdzIGluc3RhbmNlIHdvdWxkIGJyaW5nIGl0cyBvd24gaW5kZXBlbmRlbnQgc2V0IG9m
IDEwMjQgYmlucz8NCj4+PiANCj4+PiBnb29kIHRob3VnaHQNCj4+IA0KPj4gV2hpbGUgSSBjZXJ0
YWlubHkgd291bGRuJ3QgbWluZCBoYXZpbmcgYSBsYXJnZS1zY2FsZSB0ZXN0IG9mIHRoZQ0KPj4g
bXVsdGktcXVldWUgdmFyaWFudCBvZiBjYWtlLCBJIGRvbid0IHJlYWxseSB0aGluayBpdCdzIG5l
Y2Vzc2FyeSBhdCAxRy4NCj4+IEFzc3VtaW5nIHlvdSdyZSB1c2luZyBzZXJ2ZXIvZGVza3RvcC1n
cmFkZSBoYXJkd2FyZSBmb3IgdGhlIGdhdGV3YXlzLA0KPj4gQ0FLRSBzaG91bGQgc2NhbGUganVz
dCBmaW5lIHRvIDFHYml0Lg0KPj4gDQo+PiBTZWJhc3RpYW4gaXMgcmlnaHQgdGhhdCB0aGUgTVEg
dmFyaWFudCB3aWxsIGluc3RhbGwgaW5kZXBlbmRlbnQgQ0FLRQ0KPj4gaW5zdGFuY2VzIG9uIGVh
Y2ggaGFyZHdhcmUgcXVldWUsIHdoaWNoIHdpbGwgZ2l2ZSB5b3UgbW9yZSBmbG93IHF1ZXVlcy4N
Cj4+IEhvd2V2ZXIsIHRoZSByb3VuZC1yb2JpbiBkZXF1ZXVlaW5nIGFtb25nIHRob3NlIHF1ZXVl
cyB3aWxsIGFsc28gYmUNCj4+IGNvbXBsZXRlbHkgaW5kZXBlbmRlbnQsIHNvIHlvdSB3b24ndCBn
ZXQgZmFpcm5lc3MgYW1vbmcgdGhlbSBlaXRoZXINCj4+IChvbmx5IGJldHdlZW4gdGhlIGZsb3dz
IHRoYXQgc2hhcmUgYSBIV1EpLg0KPj4gDQo+PiBBcyBmb3IgY29sbGlzaW9uIHByb2JhYmlsaXR5
LCB3ZSBhY3R1YWxseSBoYXZlIGEgY2FsY3VsYXRpb24gb2YgdGhpcyBpbg0KPj4gdGhlIG9yaWdp
bmFsIENBS0UgcGFwZXJbMF0sIGluIGZpZ3VyZSAxLiBXaXRoIHNldC1hc3NvY2lhdGl2ZSBoYXNo
aW5nLA0KPj4gY29sbGlzaW9uIHByb2JhYmlsaXR5IG9ubHkgc3RhcnQgdG8gcmlzZSBhcm91bmQg
NTAwIHNpbXVsdGFuZW91cyBmbG93cy4NCj4+IEFuZCBiZWFyIGluIG1pbmQgdGhhdCB0aGVzZSBu
ZWVkIHRvIGJlIGFjdGl2ZSBmbG93cyAqZnJvbSB0aGUgUG9WIG9mIHRoZQ0KPj4gcm91dGVyKi4g
SS5lLiwgdGhleSBuZWVkIHRvIGFsbCBiZSBhY3RpdmVseSB0cmFuc21pdHRpbmcgZGF0YSBhdCB0
aGUNCj4+IHNhbWUgdGltZTsgZXZlbiB3aXRoIGxvdHMgb2YgdXNlcnMgd2l0aCBhY3RpdmUgY29u
bmVjdGlvbnMgYXMgc2VlbiBmcm9tDQo+PiB0aGUgZW5kcG9pbnQsIHRoZSBudW1iZXIgb2YgYWN0
aXZlIGZsb3dzIGluIHRoZSByb3V0ZXIgc2hvdWxkIGJlIHdheQ0KPj4gc21hbGxlciAodGhlcmUn
cyBhIHBhcGVyIGRpc2N1c3NpbmcgdGhpcyB0aGF0IEkgY2FuJ3QgZmluZCByaWdodCBub3cpLg0K
Pg0KPiBNYXliZSBMdWNhJ3MgIkV2YWx1YXRpbmcgdGhlIE51bWJlciBvZiBBY3RpdmUgRmxvd3Mg
aW4gYSBTY2hlZHVsZXINCj4gUmVhbGl6aW5nIEZhaXIgU3RhdGlzdGljYWwgQmFuZHdpZHRoIFNo
YXJpbmciIGZyb20gMjAxMz8NCj4gaHR0cHM6Ly90ZWFtLmlucmlhLmZyL3JhcC9maWxlcy8yMDEz
LzEyL0tNT1IwNWIucGRmDQoNCll1cCwgdGhhdCB3YXMgZXhhY3RseSB0aGUgb25lIEkgd2FzIHRo
aW5raW5nIGFib3V0IC0gdGhhbmsgeW91IGZvcg0KZGlnZ2luZyB1cCB0aGUgbGluayENCg0KKEFk
ZGluZyBiYWNrIHRoZSBsaXN0IHRvIENjIHNvIG90aGVycyBjYW4gc2VlIGl0IHRvbykuDQoNCi1U
b2tlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
