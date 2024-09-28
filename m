Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E394F989176
	for <lists+cake@lfdr.de>; Sat, 28 Sep 2024 23:07:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DDD213CB43;
	Sat, 28 Sep 2024 17:07:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1727557634;
	bh=51Q+KVAfYFvxkKPMN5nZs7tCpPNepy9brKvCUx2+5RY=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iigS9YiedDUB6OEmxrIH2Ib4jXrb1zDFVu61Y3MGGfA5dYdPDyCSdIqVMyfJthOcg
	 6V+t1sKC6Ebr1oagXJpctGgv1KYGcfcjWoXOCobJwQD1szliJ9Kl9DhOU6DERR4zrv
	 O87GLeueZxzsemZncHn5EPOAX5bnCpJ7ABbaOk/kPR4XWrUlYDlpMNsqxcLxDwv6xM
	 qxaG2xTPV4QRmkBL+j9yZgEkjaPQc/zlib+zy6SVnkydIqOeDzBHHxpgnJO/nVjsDX
	 RUpX3eg13d5HEAAZz4af/I9LjM5D9wrL7FV+SMMLCYc4/7528xmx/VCirL3FV8BcjD
	 tw0yMXK02mmyA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp86.iad3a.emailsrvr.com (smtp86.iad3a.emailsrvr.com
 [173.203.187.86])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3AF833B2A4
 for <cake@lists.bufferbloat.net>; Sat, 28 Sep 2024 17:07:13 -0400 (EDT)
Received: from app31.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp27.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id C359A23AFC;
 Sat, 28 Sep 2024 17:07:12 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app31.wa-webapps.iad3a (Postfix) with ESMTP id 956592221E;
 Sat, 28 Sep 2024 17:07:12 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 28 Sep 2024 17:07:12 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 28 Sep 2024 17:07:12 -0400 (EDT)
To: "David Lang" <david@lang.hm>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <qpr4r78o-9640-ps6p-qpo2-94p0897298n5@ynat.uz>
References: <CAA93jw46jpOcMYTb9vmyw6ywAvMkmQb3jnmbu4G-2k97PyrjmA@mail.gmail.com> 
 <1727471439.369527853@apps.rackspace.com> 
 <qpr4r78o-9640-ps6p-qpo2-94p0897298n5@ynat.uz>
X-Client-IP: 209.6.168.128
Message-ID: <1727557632.49023402@apps.rackspace.com>
X-Mailer: webmail/19.0.25-RC
X-Classification-ID: fb0eda4f-f2df-45bd-b2d1-1e2ba650ff05-1-1
Subject: Re: [Cake] bbr vs all the aqms, cake winning...
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CgpPbiBGcmlkYXksIFNlcHRlbWJlciAyNywgMjAyNCAxNzo0MywgIkRhdmlkIExhbmciIDxkYXZp
ZEBsYW5nLmhtPiBzYWlkOgoKPiAKPiBjb3VsZCB0aGUgY29tbXVuaXR5IHRyeSBhbmQgcHJvZHVj
ZSAndHJhZmZpYyBzaW11bGF0b3JzJyB0aGF0IGltcGxlbWVudCB0aGVzZQo+IHZhcmlvdXMgcHJv
dG9jb2xzIHdpdGggYSBtb3JlIHJlYWxpc3RpYyB0cmFmZmljIHBhdHRlcm4/IHNvbWV0aGluZyB0
aGF0IGNhbiBiZQo+IHR1cm5lZCB1cCBvciBkb3duIHdpdGggYSBmZXcgcHJlc2V0cyBvZiB0aGUg
bWl4IHRoYXQgd2UgY2FuIG1ha2UgYXZhaWxhYmxlIGZvcgo+IHRoZSBhY2FkZW1pY3MgdG8gdXNl
IGZvciB0aGVpciB0ZXN0aW5nPwoKSXQncyBhIHByZXR0eSBnb29kIGlkZWEuCgpIb3dldmVyLCBz
b21lIHRoaW5ncyBJIHRoaW5rIGFib3V0Li4uaXQncyBpbXBvcnRhbnQgdG8gcmVtZW1iZXIgdGhh
dCBqdXN0IHJlY29yZGluZyB0cmFmZmljIHN0cmVhbXMgYW5kIHBsYXlpbmcgdGhlbSBiYWNrIGZp
bHRlcnMgb3V0IGFsbW9zdCBhbGwgb2YgdGhlICJjb250cm9sIiBkeW5hbWljcy4KSW4gdGhlIHJl
YWwgSW50ZXJuZXQuIEl0J3MgdGhlIGNvbnRyb2wgZmVlZGJhY2sgdGhhdCBjYXVzZXMgaW5zdGFi
aWxpdHkgYW5kIGJ1ZmZlcmJsb2F0IC0gZXZlcnl0aGluZyBpcyBmZWVkYmFjayBzeXN0ZW0gYW1v
bmcgYSBsYXJnZSBzZXQgb2YgZW5kcG9pbnRzIC0gdHlwaWNhbGx5IGh1bmRyZWRzIG9mIHRoZW0g
YXQgbWluaW11bS4gSXQncyBoYXJkIGZvciB0aG9zZSB3aG8gdGhpbmsgZnJvbSBhIHBlcnNwZWN0
aXZlIG9mIG9uZSAic2VydmVyIiwgb3IgZnJvbSBvbmUgImNsaWVudCIsIG9yIGJldHdlZW4gYSAi
cGFpciIgdG8gcmVhbGl6ZSB0aGF0IG5ldHdvcmtzIGFyZW4ndCBsaWtlIHRoYXQuIEV2ZXJ5ICJp
bmRlcGVuZGVudCIgYnV0IGNvbmN1cnJlbnQgYWN0aXZpdHkgZmVlZHMgYmFjayBzaWduaWZpY2Fu
dCAibm9pc2UiIGludG8gdGhlIG90aGVyIGFjdGl2aXRpZXMsIGNoYW5naW5nIGxhdGVuY3kgaW4g
ZXZlcnkgcHJvdG9jb2wsIGV0Yy4KCkV2ZW4gdGhlIGR5bmFtaWMgYmVoYXZpb3Igb2YgYSBzaW5n
bGUgcm91dGVyIG91dC1xdWV1ZSBhZmZlY3RzIGV2ZXJ5dGhpbmcsIGVzcGVjaWFsbHksIGFzIHlv
dSBrbm93LCB0aGUgcXVldWVzIHVwc3RyZWFtIGFuZCBkb3duc3RyZWFtLgoKVEhhdCdzIG9uZSBy
ZWFzb24gdGhhdCBJIGZpbmQgYW55IHdvcmsgdGhhdCB0cmllcyB0byBmaW5kIHdheXMgdG8gc3Rv
cmUgcGFja2V0cyBpbiByb3V0ZXIgcXVldWVzICgiYmFja2dyb3VuZCBzZXJ2aWNlIikgdG8gYmUg
ZHViaW91cywgYmVjYXVzZSB0aGF0J3Mgb25lIG9mIHRoZSB0aGluZ3MgdGhhdCBhbHdheXMgaW5j
cmVhc2VzIGR5bmFtaWMgaW5zdGFiaWxpdHkuIEFsd2F5cyBpcyBteSBiZWxpZWYgYmFzZWQgb24g
bXVjaCBleHBlcmllbmNlIGFuZCBleHBlcmltZW50YXRpb24gLSB0aGVyZSBtYXkgZXZlbiBiZSBh
IHRoZW9yZW0gdGhlcmUsIGJ1dCBpdCdzIHRyaWNreSB0byBmaW5kIHRoZSBwcmVtaXNlcyBvZiBz
dWNoIHRoZW9yZW0uCgpIb3dldmVyLCB0aGlzIHN1Z2dlc3RzIGEgInN0cmVzcyBzaW11bGF0b3Ii
IHRoYXQgbWlnaHQgaGVscCBjcmVhdGUgcmVhbGlzdGljIGV4cGVyaW1lbnRzIC0gaW5zdGVhZCBv
ZiBzaW11bGF0aW5nIHRyYWZmaWMsIHNpbXVsYXRlIGluc3RhYmlsaXRpZXMgaW4gcm91dGVycyBi
eSBpbmplY3RpbmcgcGFja2V0cyBpbnRvIHF1ZXVlcyBmb3IgbWl4IG9mIGZsb3dzIGJhc2VkIG9u
IHNvbWUgcHJvYmFiaWxpc3RpYyBtb2RlbCB0aGF0IGFjdHMgbGlrZSAicmVhbCBJbnRlcm5ldCIu
IFRoZXNlIGluamVjdGVkIHBhY2tldHMgbWlnaHQsIGZvciBleGFtcGxlLCBoYXZlIGludmFsaWQg
Y2hlY2tzdW1zIG9uIHB1cnBvc2UgdG8gYXZvaWQgaGFybWluZyBhbnkgZW5kcG9pbnQgc3RhY2tz
LiBTbyBzdWNoIGEgdG9vbCB3b3VsZCBiZSBhIGxvdCBlYXNpZXIgdG8gZGVwbG95LgoKUlJVTCBp
c24ndCB0eXBpY2FsLCBidXQgaXQgYXQgbGVhc3QgaXMgYSBzaW1wbGUgc2V0dXAgdGhhdCBwdXNo
ZXMgY2VydGFpbiBBUU0gY2hhbGxlbmdlcyBpbnRvIGEgcmVhbCBib3R0bGVuZWNrIHF1ZXVlLCBp
ZiB0aGVyZSBpcyBvbmUgYm90dGxlbmVjay4gU2ltdWxhdGluZywgc2F5LCBhIGhpZ2hseSBvcHRp
bWl6ZWQgInNpbmdsZSBwYWdlIHdlYiBzaXRlIiBwcm9ncmFtbWVkIGluIEphdmFTY3JpcHQgd2l0
aCBzb21lIHJpY2ggVUkgcGFja2FnZXMsIGV2ZW4gaW4gdGhlIHNpbmdsZSBib3R0bGVuZWNrIGNh
c2Ugd2l0aCBtdWx0aXBsZSBlZGdlIHNtYXJ0cGhvbmVzIHJ1bm5pbmcgb3RoZXIgYXBwcyAobGlr
ZSBab29tIGFuZCBzdHJlYW1pbmcgYXVkaW8pIC0gb25lIGNhbid0IHJlYWxseSB0ZWxsIGlmIHRo
YXQgY292ZXJzIGFueSBvdGhlciBjYXNlcyBvZiBpbnRlcmVzdC4KCj4gCj4gRGF2aWQgTGFuZwo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
