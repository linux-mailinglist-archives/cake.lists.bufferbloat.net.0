Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B442E13A
	for <lists+cake@lfdr.de>; Thu, 14 Oct 2021 20:27:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E470C3CB45;
	Thu, 14 Oct 2021 14:27:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634236065;
	bh=K9jgEMb+xfxR/W2K9VWVr9QhRkFvCN4mnCkxEqam/Zs=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iJAS56bfRRGlLGq9/7f01Ap45RbAA/ZwlinKtrN3V2Rra2aYYVANIGFNTZuyng6gN
	 7YS8oxNxRqJ6JGSR4cjDvxgHtL7Tii3lQHXkNu+uHD5UjtL8ay5U2PpOfcJlfqRCZj
	 TZLKtWmmVrKw0aFBw8GINMbnNODigbLmenGcCqf6CHzFqHPAcIGywp2xy7LHD6OX/U
	 bWADx65aSAEmNmFza2oc82JSyK5nGgZQzbYptEKbtdlrVL6JM6FK/U8dYOawkmZaxY
	 aj5pjhtf9cORhfAq5kvva3OILn7YamIirF7Rvi16D/OLaQc7pqPqDOWpM5Ip63cyT6
	 LmsDiDKG/MySQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel.tc-mi.net (cpanel.tc-mi.net [198.109.107.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 39B223B29E;
 Thu, 14 Oct 2021 14:27:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CIW/CmeFvGlBlsk8xZXDeETWDxkhn3QkIY8Jh3iuizA=; b=r2Mm/sGKWlVXVh2X8qUVCy8pSz
 vAMIumGqdnMB0+91x2Y5mLJTri1Sf2XAFM6daJSPnR4duxuyXNWu4UMUZz4SKGgCAe8xWadq3KcJN
 3ZnCVUr7B6Fw/72dat/gLO0fEY18ILANyC0QQZ9M9EsOylUUPcbVmuSyDZDESbDFpRS+59hrjehlF
 bq+AZz4VofenGz9Jp/k/VvzAfniLTd2cnT8dIwdi9FxbMWzVfr8hQti4glAPFf/Y059qE0Syq5Che
 /r8YcK35j6GXF9ZEoKvn4KlZ+kUvQpZEVBS5GS2s673Eey7vO/fE5LBSGxmsmrC3deFeqyuPT4S77
 leNLuaYQ==;
Received: from 097-083-001-186.res.spectrum.com ([97.83.1.186]:63591
 helo=DESKTOP0D7H4U1) by cpanel.tc-mi.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jordan@inacomptc.com>)
 id 1mb5SC-0002yA-VG; Thu, 14 Oct 2021 14:27:43 -0400
To: "'Dave Taht'" <dave.taht@gmail.com>
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5dJ_=5OzPrcQYmFQtKLXJcfb7TWUW-jKMqfxZCpD3cZQ@mail.gmail.com>
In-Reply-To: <CAA93jw5dJ_=5OzPrcQYmFQtKLXJcfb7TWUW-jKMqfxZCpD3cZQ@mail.gmail.com>
Date: Thu, 14 Oct 2021 14:27:42 -0400
Message-ID: <006001d7c129$2de82f10$89b88d30$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJoRh1+isobeJQa+Kydtt3dT7fxBgJY5XOFAfWx3jGqj0oQcA==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.tc-mi.net
X-AntiAbuse: Original Domain - lists.bufferbloat.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - inacomptc.com
X-Get-Message-Sender-Via: cpanel.tc-mi.net: authenticated_id:
 jordan@inacomptc.com
X-Authenticated-Sender: cpanel.tc-mi.net: jordan@inacomptc.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
From: Jordan Szuch via Cake <cake@lists.bufferbloat.net>
Reply-To: Jordan Szuch <jordan@inacomptc.com>
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QXdlc29tZSwgdGhhbmtzISBJIHdlbnQgYW5kIHN1YnNjcmliZWQgdG8gdGhhdCB0b3BpYyBzbyBJ
J2xsIGdldCBub3RpZmljYXRpb25zIHdoZW4gcGVvcGxlIHJlcGx5LiBIb3BlIHRvIGp1bXAgaW4g
b25jZSBJJ20gbGVzcyBidXN5IHdpdGggbXkgZGF5IHRvIGRheSB3b3JrLgoKUmVnYXJkaW5nIG1v
cmUgcG93ZXJmdWwgaGFyZHdhcmUsIEkgdGhpbmsgc29tZW9uZSByZXBsaWVkIHRvIHRoZSBtYWls
aW5nIGxpc3QgZWFybGllciBvZmZlcmluZyB0byBydW4gc29tZSB0ZXN0cy4gU291bmRlZCBsaWtl
IGhlIG1pZ2h0IGhhdmUgc29tZSBiaWdnZXIgaGFyZHdhcmUgdG8gdGVzdCBvdXQuIFRob21hcyBD
cm9naGFuIGJhY2sgb24gTW9uZGF5IG1vcm5pbmcgaXQgbG9va3MgbGlrZS4KCk1pZ2h0IGFsc28g
YmUgd29ydGggcmVhY2hpbmcgb3V0IHRvIHRoZXNlIGd1eXMgdG8gZG8gc29tZSB0ZXN0aW5nIG9y
IGV2YW5nZWxpemluZyBhdCBsZWFzdDogaHR0cHM6Ly90aGVicm90aGVyc3dpc3AuY29tLyBUaGV5
IHJ1biBhIHBvZGNhc3Qgd2l0aCBhIHJvdGF0aW5nIGNhc3Qgb2YgbmV0d29yayBvcGVyYXRvcnMs
IFdJU1BTLCBldGMuIEFuZCB0aGV5IHNlZW0gcHJldHR5IGNsdWVkIGludG8gdGhlIE1Ja3JvdGlr
IHdvcmxkIHNwZWNpZmljYWxseS4gSSByZWNhbGwgdGhhdCB5b3UndmUganVtcGVkIG9udG8gYSBw
b2RjYXN0IG9yIHR3byByZWNlbnRseSBzbyB0aGF0J3Mgd2h5IEkgYnJpbmcgaXQgdXAuCgpBbnl3
YXksIEkgbGlzdGVuIGZyb20gdGltZSB0byB0aW1lIGFuZCBvbmUgb2YgdGhlIGhvc3RzIGJyb3Vn
aHQgdXAgYmVpbmcgdmVyeSBpbnRlcmVzdGVkIGluIHVzaW5nIGZxX2NvZGVsIGFuZCBDQUtFIGlu
IGEgTXVsdGkgRHdlbGxpbmcgVW5pdCBzY2VuYXJpbyAobWVudGlvbmVkIGhlcmUgYWZ0ZXIgYSAz
LTQgbWludXRlcyBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PXlGS0dfY1hHUHJFJnQ9
NDQ0NHMpLiBBY3R1YWxseSwgSSB0aGluayB0aGV5IGV2ZW4gbmFtZSBjaGVjayB5b3UgaW4gYW4g
ZWFybGllciBlcGlzb2RlIChmb3VuZCBpdDogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1RMVFpdHltTlpUbyZ0PTQyODVzKSwgYWx0aG91Z2ggb25lIGhvc3Qgd2FzIGEgYml0IHNrZXB0
aWNhbCBvZiBldmVyeXRoaW5nLgoKLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJvbTogRGF2
ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiAKU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMTQs
IDIwMjEgMTowOSBQTQpUbzogSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4KQ2M6
IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBibG9hdCA8YmxvYXRAbGlz
dHMuYnVmZmVyYmxvYXQubmV0PgpTdWJqZWN0OiBSZTogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNv
bW1lbnRzCgpUaHguIEkgcHV0IHRoZSBkaXNjdXNzaW9uIGFuZCBwbG90cyBvdmVyIGhlcmU6Cgpo
dHRwczovL2ZvcnVtLm1pa3JvdGlrLmNvbS92aWV3dG9waWMucGhwP3Q9MTc5MzA3CgpJIG1pZ2h0
IC0gc2hvdWxkIEkgZmVlbCBsaWtlIGV4cG91bmRpbmcgbW9yZSBsYXRlciB0aGlzIHdlZWsgLSBn
byBiYWNrIHRvIHRoZSBmbGVudC5neiBmaWxlcyB0byBkaXNjdXNzIG90aGVyIGZlYXR1cmVzLiBJ
cm9uaWNhbGx5IHRoZSBjaHJvbWVib29rIEkgaGF2ZSBpbiBmcm9udCBvZiBtZSBkb2Vzbid0IHdh
bnQgdG8gbGV0IG1lIGRvd25sb2FkIGEgZmlsZSB2aWEgZW1haWwgYW5kIG1ha2UgaXQgdmlzaWJs
ZSBpbiB0aGUgcmVhbCBmaWxlc3lzdGVtLiBJJ20gdm0nZCBvZmYgZnJvbSBteXNlbGYgZm9yIHNv
bWUgcmVhc29uLgoKQnV0IG15IGJpZyBnb2FsLCBob25lc3RseSwgd2FzIHRvIGdldCBzb21lIG1p
a3JvdGlrIHVzZXJzIHRvIHRlc3QgdGhlaXIgYmlnZ2VyIGlyb24uLi4KCk9uIFN1biwgT2N0IDEw
LCAyMDIxIGF0IDk6MDUgQU0gSm9yZGFuIFN6dWNoIHZpYSBCbG9hdCA8YmxvYXRAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IEhpIERhdmUsCj4KPiBJbnRlcmVzdGluZyB0aGF0IHlv
dSBzaG91bGQgc2VuZCB0aGlzIG91dDsgSSByZWNlbnRseSBwaWNrZWQgdXAgYSB1bml0ICh0aGlz
IG9uZSBzcGVjaWZpY2FsbHk6IGh0dHBzOi8vbWlrcm90aWsuY29tL3Byb2R1Y3QvaGFwX2FjMikg
dG8gZG8gc29tZSB0ZXN0aW5nIG9mIHRoZSB2NyBmaXJtd2FyZS4gTm90aGluZyBzdXBlciBoaWdo
IGVuZCBidXQgZW5vdWdoIHRvIGRvIGEgbGl0dGxlIHRlc3RpbmcuIEkgaGF2ZSBDQUtFIHNldCB0
byBkbyBzb21lIHNoYXBpbmcgYW5kIHNvIGZhciBzZWVtcyBmdW5jdGlvbmFsLiBBdCBsZWFzdCB0
aGUgYnVmZmVyYmxvYXQgc3BlZWQgdGVzdHMgZnJvbSBEU0xSZXBvcnRzIGFuZCBXYXZlRm9ybSBp
bmRpY2F0ZSBzb21lIHNoYXBpbmcgaXMgaGFwcGVuaW5nLiBJZiB5b3UnZCBsaWtlIGFueSBpbmZv
cm1hdGlvbiBhYm91dCB0aGUgdW5pdCwgdGhlIHY3IGZpcm13YXJlLCBvciBwYXJ0aWN1bGFyIHRl
c3RzIHJ1biB0aGVuIEknZCBiZSBoYXBweSB0byBoZWxwIG91dC4KPgo+IEpvcmRhbgo+Cj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBCbG9hdCA8YmxvYXQtYm91bmNlc0BsaXN0
cy5idWZmZXJibG9hdC5uZXQ+IE9uIEJlaGFsZiBPZiBEYXZlIAo+IFRhaHQKPiBTZW50OiBTdW5k
YXksIE9jdG9iZXIgMTAsIDIwMjEgMTE6MzkgQU0KPiBUbzogQ2FrZSBMaXN0IDxjYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IAo+IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+
Cj4gU3ViamVjdDogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNvbW1lbnRzCj4KPiB0aGUgdjcgYmV0
YSBnYWluZWQgZG9jIGFuZCBtb3JlIG9zIHN1cHBvcnQgZm9yIGZxX2NvZGVsIGFuZCBjYWtlIAo+
IHJlY2VudGx5Cj4KPiBodHRwczovL2ZvcnVtLm1pa3JvdGlrLmNvbS92aWV3dG9waWMucGhwP3A9
ODg1MDAwI3A4ODUwMDAKPgo+IGFueW9uZSBvdXQgdGhlcmUgYWN0aXZlbHkgdGVzdGluZyBtaWty
b3Rpaz8KPgo+IC0tCj4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiAKPiBodHRwczovL3d3
dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4KPiBEYXZlIFTDpGh0IENFTywgVGVr
TGlicmUsIExMQwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxvYXQgbWFpbGluZyBsaXN0Cj4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4g
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vYmxvYXQKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxvYXQgbWFpbGluZyBs
aXN0Cj4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vYmxvYXQKCgoKLS0KRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVz
OiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0
IENFTywgVGVrTGlicmUsIExMQwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
