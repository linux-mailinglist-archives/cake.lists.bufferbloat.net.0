Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D3422D910
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 19:48:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E5B313CB39;
	Sat, 25 Jul 2020 13:48:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595699283;
	bh=zCsI9pmcs3UzLudQjVGs5HeXHfLbCcmVaQHUNybovio=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CccTDh29HNECsIgjg1+43sHpzijNUcdV8RKKE4uw3Bu2OQTG+4Z1C7Ly4+dxX3FCt
	 lAzivtk/zmdROgYivBBP+vzZXYMXEsXtvgS38ZJY7uY820CAwUFJ8xfuW4A8TdVaWK
	 legyCkiLiPsNJsBxaNurNiswrEVaWCL1luKXLJ0EnwCtNRgIaJNjPZyf/mUFxJjLXF
	 o6JTUbJYH80Si2JG0hWSXUFVuPsUtWMkQ/RpT3q5Lhp1IEyZSeCkSMP+zDVgsvAgGc
	 qVQ3EUACZVLkPHG1btUtmBdGi6gnrJOtbmda9eVOkpipDLfawfNrcKXBMXzSVql8mj
	 lfW9oBdkNtCLA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 01F4E3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 13:48:01 -0400 (EDT)
Received: by mail-lj1-x233.google.com with SMTP id q6so13107800ljp.4
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 10:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AZ3lL9QTJp9ZrqhEGa/h8qOgmFRGWmA/bbD7fc7/HfY=;
 b=czGID2sz5c3Flv7PZNLjH8oTfoAgowk4HS026dJrTL6xOVHGoizjYshXLAW8Vrf6f9
 w2u8gH1FnnWTNGwRwB/Asp10mFg26q3ie4cirJQb4C+drp4e4L/JiXG9Y213EN+c7NRL
 vhYbJIdL2XEy1VC6Q7gAKYTTBgr/jL6K8in0gue1vPGPvCT4I9a38OreUnuSdLEG7KPN
 8F4ar3zr82jIpqdCbIF3EUWs78MfA26ogU76HeeDNaMrtj5gN/+TOuaz50t4qrceIqYD
 SrLXXxn2eADv3o4Ztubq1rrO+vLsNF2cMRlydkWjwh0sTNcSlEdGjQWP5ZUEwSyWq9VN
 O3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AZ3lL9QTJp9ZrqhEGa/h8qOgmFRGWmA/bbD7fc7/HfY=;
 b=WANSJ0zojswT8VWNhbPTtAs084MsD9t53nqfz/eySR+5mKzpBgFKjr8ZmjWg6H+HHp
 SlKi4OyIzubbtottsbQHC3BHE40zqqrTvuqkc3I2ng1GsWA31gbsQNlmVD2u7FBzFpOM
 CiQ8WP6S7j++OBDjiRneAzbcXiLZLeOqnNLvy+XC/meUKh6uyXpm6IdTJZkpT8Potqlu
 FSInD0nC5a5N6WhDcs1Tq8dPIkDlS+Dnb81ICrZDOgwLtrumPOQDdyqW6TuST+Z6N6EQ
 MveAp3p5Wuq7dsLjNqSUloj+O8u9iX500/XNU1duvm7RPpja4ISm5p/MWUI/4yHl1oP5
 t86w==
X-Gm-Message-State: AOAM5328GOmAmmTZX6i04dQ6BMqq1hwT998E2pFpzgD9HWYuvCe6K8Cg
 pgvx2qwGP6H3zEM4GDLMXzWlibEY
X-Google-Smtp-Source: ABdhPJwhtLAM+1DX0gHEcyWJkm+Q/OFTkWZuSDC1QkIELdeCYBVnKKhXDvbKAsPU4Xy0rQ9EP8pqvQ==
X-Received: by 2002:a2e:1502:: with SMTP id s2mr6150247ljd.236.1595699280744; 
 Sat, 25 Jul 2020 10:48:00 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-252-162-nat-p.elisa-mobile.fi.
 [83.245.252.162])
 by smtp.gmail.com with ESMTPSA id b26sm1350027lji.36.2020.07.25.10.47.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Jul 2020 10:47:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.6\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <4E86E73D-2ACE-4952-8A2A-B8DAAD4CD262@gmx.de>
Date: Sat, 25 Jul 2020 20:47:58 +0300
Message-Id: <6A1D79C2-1666-4879-BF90-A58088F4C9FE@gmail.com>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
 <4E86E73D-2ACE-4952-8A2A-B8DAAD4CD262@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3445.9.6)
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNSBKdWwsIDIwMjAsIGF0IDg6MTggcG0sIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVy
MEBnbXguZGU+IHdyb3RlOgo+IAo+IEkgYW0gY29uZnVzZWQuLi4gYnV0IEkgYW0gYWxzbyBjb25m
dXNlZCBieSBjYWtlJ3Mgb3V0cHV0Ogo+IAo+ICAgICAgICAgICAgICAgICAgIEJ1bGsgIEJlc3Qg
RWZmb3J0ICAgICAgICBWb2ljZQo+ICB0aHJlc2ggICAgICAgMzA2MktiaXQgICAgICAgNDlNYml0
ICAgIDEyMjUwS2JpdCIKPiAKPiBhcyBmYXIgYXMgSSBjYW4gdGVsbCwgQnVsaydzIDMwNjJLYml0
IG11c3QgYmUgdGhlIG1pbmltdW0sIHdoaWxlIEJFIGFuZCBWb2ljZSBnaXZlIHRoZWlyIG1heGlt
YS4uLiBUaGF0LCBvciBJIGFtIG1pc3Npbmcgc29tZXRoaW5nIGltcG9ydGFudC4uLgo+IChJIHdv
bmRlciB3aGV0aGVyIGl0IHdvdWxkIG5vdCBiZSBjbGVhcmVyIHRvIGdpdmUgYm90aCBtaW4gYW5k
IG1heCBmb3IgZWFjaCB0aW4sIHRoZW4gYWdhaW4gSSBwcm9iYWJseSBtaXNzaW5nIGFsbCB0aGUg
ZGV5YWlscyBvZiB0aGUgYWN0dWFsIGltcGxlbWVudGF0aW9uLi4uKQoKQ2FrZSBkZWxpdmVycyBm
cm9tIHRoZSBoaWdoZXN0LXByaW9yaXR5IHRpbiB0aGF0IGJvdGggaGFzIGRhdGEgdG8gc2VuZCBh
bmQgaXMgImJlaGluZCIgaXRzIGxvY2FsIHNjaGVkdWxlLCBkZWZpbmVkIGJ5IHRoZSB0aHJlc2hv
bGQgcmF0ZS4gIElmIG5vIHRpbiB3aXRoIGRhdGEgdG8gc2VuZCBpcyBiZWhpbmQgc2NoZWR1bGUs
IHRoZW4gc29tZSB0aW4gdGhhdCBkb2VzIGhhdmUgZGF0YSB0byBzZW5kIGlzIGNob3NlbiAoc28g
Q2FrZSBhcyBhIHdob2xlIGlzIHdvcmstY29uc2VydmluZywgbW9kdWxvIGl0cyBnbG9iYWwgc2hh
cGVyKS4gIElJUkMsIGl0J2xsIGJlIHRoZSBoaWdoZXN0IHByaW9yaXR5IHN1Y2ggdGluLgoKVGhl
IG5vdGlvbiBvZiB3aGljaCB0aW4gaXMgaGlnaGVzdCBwcmlvcml0eSBpcyBhIGxpdHRsZSBjb3Vu
dGVyLWludHVpdGl2ZS4gIE9uZSB0aW4gbXVzdCBiZSBhdCB0aGUgZ2xvYmFsIHNoYXBlciByYXRl
LCBhbmQgd2lsbCBiZSB0aGUgbG93ZXN0IHByaW9yaXR5IHRpbiAtIGFuZCBub3JtYWxseSB0aGF0
IGlzIHRoZSAiYmVzdCBlZmZvcnQiIHRpbi4gIFNvIHRoZSBCSyB0aW4gaXMgYWN0dWFsbHkgYXQg
YSBoaWdoZXIgcHJpb3JpdHksIGJ1dCBvbmx5IHVwIHRvIGl0cyB2ZXJ5IGxpbWl0ZWQgdGhyZXNo
b2xkIHJhdGUuICBUbyBhdm9pZCBzdGFydmluZyB0aGUgYmVzdCBlZmZvcnQgdGluIHVuZGVyIGFs
bCBwb3NzaWJsZSBjb21iaW5hdGlvbnMgb2YgdHJhZmZpYywgaXQgaXMgbmVjZXNzYXJ5IGFuZCBz
dWZmaWNpZW50IHRvIGVuc3VyZSB0aGF0IHRoZSBzdW0gb2YgYWxsIGhpZ2hlci1wcmlvcml0eSB0
aW5zJyB0aHJlc2hvbGQgcmF0ZXMgaXMgbGVzcyB0aGFuIHRoZSBnbG9iYWwgcmF0ZS4KCkluIHRo
ZSBjYXNlIG9mIERpZmZzZXJ2MywgdGhlIEJLIGFuZCBWTyB0aW5zIGJvdGggaGF2ZSBoaWdoZXIg
cHJpb3JpdHkgdGhhbiBCRSBhbmQgc3VtIHRvIDUvMTZ0aHMgb2YgdGhlIGdsb2JhbCByYXRlLiBT
byB3aXRoIGFsbCB0aW5zIHNhdHVyYXRlZCwgdGhlIEJFIHRyYWZmaWMgZ2V0cyAxMS8xNnRocyB3
aGljaCBpcyBwcmV0dHkgcmVzcGVjdGFibGUuICBJZiB0aGUgQkUgYW5kIFZPIHRyYWZmaWMgZ29l
cyBhd2F5LCBCSyBpcyB0aGVuIGFibGUgdG8gdXNlIGFsbCBhdmFpbGFibGUgYmFuZHdpZHRoLgoK
IC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
