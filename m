Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF33042827C
	for <lists+cake@lfdr.de>; Sun, 10 Oct 2021 18:19:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 782413CB48;
	Sun, 10 Oct 2021 12:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633882736;
	bh=a+hrmNS5kU3JYW5HZG01P/IyhFV/3cVQ7RyVr5BgWUM=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=YQ6M63BsfQEMVI/d3+bfUdcZ2GHj20F6reUzqvJOTg+ubaOW9AQvd3aBsIAEp88Td
	 5YrZOy7cEa6K2L4CqZ9k18qk1IvF6Fr+42LMV59vgXlxpWXRTXAvL36cYvoPBcPl4N
	 MMhjqcG61ciDG9U+MMIIq7zn48PJoaBtI46lbBXR5J6xp5nb8jMiMb/eDk6fhdC/sS
	 jcegmjRm88x+56DxNu2UcH5efxIpIv9JViU+AGam/RiFouIkUOaFZCK0zNKNMMvkaD
	 /3bTCm+QBzGCisL3B6QOcCd4z/H69C0aqMitMIUb4w4k3FGv6qJyv1uw1QxE7eot42
	 aZyfuJXd3tEgg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel.tc-mi.net (cpanel.tc-mi.net [198.109.107.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 03CCB3B29D;
 Sun, 10 Oct 2021 12:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=izJohC5SZfH05x+d8It7C9Ub0n8hOptZADD/RJQEQEg=; b=LS9QjAh9qsKhAt7Gt2jvVeDG+b
 0bWHPASUxT2qCD4YPpfbYjahyHYmZu4YvfEbwl0Ogc0ZTPYi4WXF+u0BeteAwz50Lp/nO/HB0RHbV
 X4vtEsfA9TzuKXpD3eF/uUxiflB821tvfKbW1QS3Nc0gXZsBB9e/KDO/GKHKjDT9VHdnoKmLkJ87f
 rHnTG1ocF7UwY71G6iTTON6OQWUsbpgBCxnLHXFUhowmC+JQaTDIyWElU/Wuf8AoHt11DT4Plo8oh
 h5dI5uONPY2tPJdothv6+zsrq5U1BQM1jRG2HuPOeCuuHMlH2a6saic52Xa3vqFmv2ujiF/jq5Frk
 9xkN0eAw==;
Received: from 097-083-001-186.res.spectrum.com ([97.83.1.186]:45037
 helo=DESKTOP0D7H4U1) by cpanel.tc-mi.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jordan@inacomptc.com>)
 id 1mZbXK-0007Df-82; Sun, 10 Oct 2021 12:18:54 -0400
To: "'Dave Taht'" <dave.taht@gmail.com>
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
In-Reply-To: <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
Date: Sun, 10 Oct 2021 12:18:53 -0400
Message-ID: <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJoRh1+isobeJQa+Kydtt3dT7fxBgJY5XOFAbYyNImqit8nIA==
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

T0ssIEknbGwgZ2l2ZSBpdCBhIHNob3QhIFBsZWFzZSBmb3JnaXZlIG1lIGhlcmUgYXMgSSBoYXZl
bid0IHJlYWxseSBydW4gZmxlbnQgYmVmb3JlLiBXb3VsZCBydW5uaW5nIHNvbWV0aGluZyBsaWtl
IHdoYXQncyBsaXN0ZWQgaW4gdGhlIFF1aWNrIFN0YXJ0IGhlcmUgKGh0dHBzOi8vZmxlbnQub3Jn
L2ludHJvLmh0bWwjcXVpY2stc3RhcnQpIGJlIHN1ZmZpY2llbnQ/CgpKb3JkYW4KCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCkZyb206IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4g
ClNlbnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSAxMjoxMSBQTQpUbzogSm9yZGFuIFN6dWNo
IDxqb3JkYW5AaW5hY29tcHRjLmNvbT4KQ2M6IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQ+OyBibG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PgpTdWJqZWN0OiBS
ZTogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNvbW1lbnRzCgpJdCdzIGZsZW50Lm9yZyBycnVsIHRl
c3Qgb3V0cHV0IHRoYXQgSSBsb3ZlLgoKT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTowNSBBTSBK
b3JkYW4gU3p1Y2ggdmlhIEJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3Rl
Ogo+Cj4gSGkgRGF2ZSwKPgo+IEludGVyZXN0aW5nIHRoYXQgeW91IHNob3VsZCBzZW5kIHRoaXMg
b3V0OyBJIHJlY2VudGx5IHBpY2tlZCB1cCBhIHVuaXQgKHRoaXMgb25lIHNwZWNpZmljYWxseTog
aHR0cHM6Ly9taWtyb3Rpay5jb20vcHJvZHVjdC9oYXBfYWMyKSB0byBkbyBzb21lIHRlc3Rpbmcg
b2YgdGhlIHY3IGZpcm13YXJlLiBOb3RoaW5nIHN1cGVyIGhpZ2ggZW5kIGJ1dCBlbm91Z2ggdG8g
ZG8gYSBsaXR0bGUgdGVzdGluZy4gSSBoYXZlIENBS0Ugc2V0IHRvIGRvIHNvbWUgc2hhcGluZyBh
bmQgc28gZmFyIHNlZW1zIGZ1bmN0aW9uYWwuIEF0IGxlYXN0IHRoZSBidWZmZXJibG9hdCBzcGVl
ZCB0ZXN0cyBmcm9tIERTTFJlcG9ydHMgYW5kIFdhdmVGb3JtIGluZGljYXRlIHNvbWUgc2hhcGlu
ZyBpcyBoYXBwZW5pbmcuIElmIHlvdSdkIGxpa2UgYW55IGluZm9ybWF0aW9uIGFib3V0IHRoZSB1
bml0LCB0aGUgdjcgZmlybXdhcmUsIG9yIHBhcnRpY3VsYXIgdGVzdHMgcnVuIHRoZW4gSSdkIGJl
IGhhcHB5IHRvIGhlbHAgb3V0Lgo+Cj4gSm9yZGFuCj4KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQo+IEZyb206IEJsb2F0IDxibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4g
T24gQmVoYWxmIE9mIERhdmUgCj4gVGFodAo+IFNlbnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAy
MSAxMTozOSBBTQo+IFRvOiBDYWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pjsg
YmxvYXQgCj4gPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiBTdWJqZWN0OiBbQmxvYXRd
IHNvbWUgbWlrcm90aWsgY29tbWVudHMKPgo+IHRoZSB2NyBiZXRhIGdhaW5lZCBkb2MgYW5kIG1v
cmUgb3Mgc3VwcG9ydCBmb3IgZnFfY29kZWwgYW5kIGNha2UgCj4gcmVjZW50bHkKPgo+IGh0dHBz
Oi8vZm9ydW0ubWlrcm90aWsuY29tL3ZpZXd0b3BpYy5waHA/cD04ODUwMDAjcDg4NTAwMAo+Cj4g
YW55b25lIG91dCB0aGVyZSBhY3RpdmVseSB0ZXN0aW5nIG1pa3JvdGlrPwo+Cj4gLS0KPiBGaXhp
bmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IAo+IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNo
P3Y9YzlnTG82WHJ3Z3cKPgo+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbG9hdCBtYWlsaW5n
IGxpc3QKPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbG9hdCBtYWlsaW5nIGxpc3QKPiBCbG9hdEBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9i
bG9hdAoKCgotLQpGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1
YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
