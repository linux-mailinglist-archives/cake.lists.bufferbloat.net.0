Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1BF519DB
	for <lists+cake@lfdr.de>; Mon, 24 Jun 2019 19:43:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 231863CB38;
	Mon, 24 Jun 2019 13:43:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561398215;
	bh=rwVa8o8VqQWXnbwscMq4GJKKK1+nUKqR8MDnEoDst10=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=fzhNYuLQWt2f3F8B4wTlsMYiALK+2kQIohQEHhAvnIC1liCCqbw0CcAeDFMtGuk73
	 +baoPh+3mUv/89rwApuK7vofcES39IreJqLhlMkLpqYjQ/6xtPNc1LlCbpmlG96onI
	 Ej/nyBrTrDtJKLpFdJaT1F/5H8kHXVPXd3TnxgsZZi6dDxhYiNNF2/TITqhdToBAPA
	 OzB9/Wqzg8elYuRqXRwPjlpaqCKU61z6QdVPZpfsgjb43bbawzJ/wyQ0xB1p/N48dk
	 BJW9T+JRd5OrDtfFgYY2iAdFh/RKmwrBTIDjAjRS+r0pQpgvmnfnp0R3igA+Ffxe0s
	 n+3fyHaVq+zLQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B86233B29E
 for <cake@lists.bufferbloat.net>; Mon, 24 Jun 2019 07:48:24 -0400 (EDT)
Date: Mon, 24 Jun 2019 11:48:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soltysiak.com;
 s=protonmail; t=1561376903;
 bh=wyfF41wJ0CSLtEuNVWICcHy82tB2kIU1886abT4lG4M=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=h9+fLOH1mcIwcjQQB+087VxrLyjs+/vAWTzZcEm9Ncok7e8HX+KMcP7pgpSvjFPOV
 RFcIcWyXyp663wxfoD5j4yKJhPcZGmtwbQfGlB9mE2BTwJX8ReILfUe8K9MWBG4VI3
 yTBidP2r/fpSv6vxHrSMvSz0HPohR93rjk8c6iaA=
To: Dave Taht <dave.taht@gmail.com>
From: =?UTF-8?Q?Maciej_So=C5=82tysiak?= <maciej@soltysiak.com>
Message-ID: <cnMBQ5duQ57XxBwmcXFDNsPq0pdJ5rtIuWjgBniWBaMaykmHjL7FlodyQneHwVdlu8zwZo3bAUdBI2uKaW0__2WWfrsNp3qo6HB0T6GbrPU=@soltysiak.com>
In-Reply-To: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
References: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
Feedback-ID: BgGZWNpQ72vxpb-bOaC_p2RD0qvvfcZ_T0IqNMUSaeON2PXyOvZelvE-Ssn070-B4tVEp5CwLkAiLupAHKEVcA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-Mailman-Approved-At: Mon, 24 Jun 2019 13:43:33 -0400
Subject: Re: [Cake] [Cerowrt-devel] althea presentation on isp in a box at
	nanog 76
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
Reply-To: =?UTF-8?Q?Maciej_So=C5=82tysiak?= <maciej@soltysiak.com>
Cc: Cake List <cake@lists.bufferbloat.net>, HOMENET <homenet@ietf.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PUc0RUtiZ1NoeUx3Cj4KPiBJbnRlcmVz
dGluZyBzdHVmZiAtIHdpcmVndWFyZCwgZnFfY29kZWwvc2NoX2Nha2UsIGJhYmVsIHdpdGggbmV3
Cj4gbWV0cmljIHRoYXQgYWxsb3dzIGZvciBjcnlwdG9jdXJyZW5jeSB0cmFmZmljIGJpbGxpbmcu
ClZlcnkgcmVmcmVzaGluZywgd291bGQgbG92ZSB0byBzZWUgdGhhdCBzdWNjZWVkIGFuZCB0aGVu
IGdldCBwb3B1bGFyIGluIEV1cm9wZSB0b28hCgpPbiBHZXR0aW5nIFN0YXJ0ZWQgUGFnZSBbMV0g
dGhleSBzdWdnZXN0IFRQIExpbmsgQzcgZm9yIENQRXMuIElzIHRoYXQgc3RpbGwgb25lIG9mIHRo
ZSBiZXN0IHN1aXRlZCBob21lIHJvdXRlcnMgZm9yIGdldHRpbmcgbWFrZS13aWZpLWZhc3QgYW5k
IGJ1ZmZlcmJsb2F0LWNvbWJhdCBpbj8KCgpbMV0gaHR0cHM6Ly9hbHRoZWEubmV0L2dldHRpbmct
c3RhcnRlZApNYWNpZWoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
