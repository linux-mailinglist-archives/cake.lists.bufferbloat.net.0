Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E179428271
	for <lists+cake@lfdr.de>; Sun, 10 Oct 2021 18:05:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C8CC43CB42;
	Sun, 10 Oct 2021 12:05:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633881907;
	bh=TKChwpBLFjnuZ3mdJQqMgAt/a6vmpUE0Q/FBGLEfEe0=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Yu9ekuCk6o1xpUxucpBKwLu/mBCF9ce5UMMTGTyfvVfyC02sWqx94iXjgDsYu7Ch9
	 q2I7BUwtoPujoxLKQ+0CYaPAkXHPYsJg9qHEe2gapg9mCagTlZptDjEtjd8AUZ1wH2
	 v0aBAVHOfdRmII5Y6vR4Rbk68t1MkcjVxnozhKlFHm0qETbLjTYUH3Wx8MYxRc/2ZA
	 o4M4K7V/dwvU7GDiUnExq0R3CrZzo3ch4l6HacusHSHjaItdyYVTJX33E1/bnyrf19
	 LWKXzwJq2GX9A4fi+bg+9r5+5VZertUWCmKlRWmmp/UIGvMxBV6BwsPcLEcCdMvZmH
	 ku6jlDFC1WWjQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel.tc-mi.net (cpanel.tc-mi.net [198.109.107.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 02D863B29D;
 Sun, 10 Oct 2021 12:05:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Q3wq/8WqTW9B3hxftu9UFCG+obqIFLDsQzotwckkZ8=; b=rVWEJp/ZXZjPOI9H8eHe4vtsir
 m3/dW0caZh3f/LS95ErDZuwYNNKhzSiCj8ACys5lzoMAB3iBflNpiHtwGGlWF2EfeEuKW9LKrqCE1
 W6tbjye73lTnY8A65kPGDliTWLOKv42AGhYnuXK1kGLmlSy7wj+eikY8JPgTz/hH7otK6bOPGE7fY
 nT1uSgCqRYHYzXx6UhIhp5aXybNCNopM3vg3XoZOqtpMSrpdDo388FrZH/kexQF6obXGxMb/41IJg
 kyWf5u4VFATanuUiOCQkyVwopd1wbaTcmk71/VpKyYcU+OvGM7AaR/lENq1TPhmRLa48e4I8EPoLC
 1RhC3Fxw==;
Received: from 097-083-001-186.res.spectrum.com ([97.83.1.186]:7303
 helo=DESKTOP0D7H4U1) by cpanel.tc-mi.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jordan@inacomptc.com>)
 id 1mZbJx-0005fr-93; Sun, 10 Oct 2021 12:05:05 -0400
To: "'Cake List'" <cake@lists.bufferbloat.net>,
 "'bloat'" <bloat@lists.bufferbloat.net>
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
In-Reply-To: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
Date: Sun, 10 Oct 2021 12:05:04 -0400
Message-ID: <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJoRh1+isobeJQa+Kydtt3dT7fxBqqrUlAA
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwKCkludGVyZXN0aW5nIHRoYXQgeW91IHNob3VsZCBzZW5kIHRoaXMgb3V0OyBJIHJl
Y2VudGx5IHBpY2tlZCB1cCBhIHVuaXQgKHRoaXMgb25lIHNwZWNpZmljYWxseTogaHR0cHM6Ly9t
aWtyb3Rpay5jb20vcHJvZHVjdC9oYXBfYWMyKSB0byBkbyBzb21lIHRlc3Rpbmcgb2YgdGhlIHY3
IGZpcm13YXJlLiBOb3RoaW5nIHN1cGVyIGhpZ2ggZW5kIGJ1dCBlbm91Z2ggdG8gZG8gYSBsaXR0
bGUgdGVzdGluZy4gSSBoYXZlIENBS0Ugc2V0IHRvIGRvIHNvbWUgc2hhcGluZyBhbmQgc28gZmFy
IHNlZW1zIGZ1bmN0aW9uYWwuIEF0IGxlYXN0IHRoZSBidWZmZXJibG9hdCBzcGVlZCB0ZXN0cyBm
cm9tIERTTFJlcG9ydHMgYW5kIFdhdmVGb3JtIGluZGljYXRlIHNvbWUgc2hhcGluZyBpcyBoYXBw
ZW5pbmcuIElmIHlvdSdkIGxpa2UgYW55IGluZm9ybWF0aW9uIGFib3V0IHRoZSB1bml0LCB0aGUg
djcgZmlybXdhcmUsIG9yIHBhcnRpY3VsYXIgdGVzdHMgcnVuIHRoZW4gSSdkIGJlIGhhcHB5IHRv
IGhlbHAgb3V0LiAKCkpvcmRhbgoKLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KRnJvbTogQmxv
YXQgPGJsb2F0LWJvdW5jZXNAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiBPbiBCZWhhbGYgT2YgRGF2
ZSBUYWh0ClNlbnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSAxMTozOSBBTQpUbzogQ2FrZSBM
aXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxibG9hdEBsaXN0cy5idWZm
ZXJibG9hdC5uZXQ+ClN1YmplY3Q6IFtCbG9hdF0gc29tZSBtaWtyb3RpayBjb21tZW50cwoKdGhl
IHY3IGJldGEgZ2FpbmVkIGRvYyBhbmQgbW9yZSBvcyBzdXBwb3J0IGZvciBmcV9jb2RlbCBhbmQg
Y2FrZSByZWNlbnRseQoKaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBocD9w
PTg4NTAwMCNwODg1MDAwCgphbnlvbmUgb3V0IHRoZXJlIGFjdGl2ZWx5IHRlc3RpbmcgbWlrcm90
aWs/CgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJl
LmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbG9hdCBtYWls
aW5nIGxpc3QKQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
