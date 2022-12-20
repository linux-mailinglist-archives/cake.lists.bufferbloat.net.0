Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97255652464
	for <lists+cake@lfdr.de>; Tue, 20 Dec 2022 17:12:54 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 505603CB39;
	Tue, 20 Dec 2022 11:12:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1671552772;
	bh=kO8TZTchr99LIsKPy0d6W4GUW4cPWw8QLhtIiIUkOMs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=py/BWM5nCcwkwEyf/RbdsGFgFW/RSB6O3iiHLS6vWqZXYUVmqGQThIfmQ+22pjzMr
	 K9ALwqKFKUUh0rwg5knoiH/CEnfvrhWlFM3VfDFx36wRl9+xZtI/zBZgVHqcue3qf7
	 XELxtFnOriAJJeqs3FY00zH2utsUnc0i/mT5J1Rh5AoqqlF49phfAXHTNfHVEOciau
	 nHL78Cuc8XSmQJSAslcyA08fQ1xxUn27XjubguFbigwON/8gOL1tD+oYwDOEi/cSPv
	 daAGM17sD9hqmyFH9yCUPur0m2n1AAsM9lNri1nE4Bw4HHo09W2A1ZJeHS+sikRiwD
	 biKSJWUdpEh3Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 10CF43B29D
 for <cake@lists.bufferbloat.net>; Tue, 20 Dec 2022 11:12:51 -0500 (EST)
Received: by mail-wr1-x434.google.com with SMTP id f18so12225935wrj.5
 for <cake@lists.bufferbloat.net>; Tue, 20 Dec 2022 08:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FqKTuYCtVMhLaai41DIXH1Kdgidn13RznDy2j2LqZXs=;
 b=PxbSZ/YZ67pgPsOD/2Bbo096NO34FDgU5ivHNqP6UgW3UFjukAT1awNAjDgC1k36qk
 LO/NTrPoSFY0QkhN5ka97pCQzFMHgu3VNl2fw6YXR+xhFGgJq9ajqsKGzhhagTb5+O6B
 ZAuYcZocjzLeDtWXcr95HPEc6SH1vZBka8ZR0m1K49CuOTpnRcp1cM8lN0SXq0210Q3z
 MmrblfSsaouOOkgCpykNj2AQ4JHpaEGAs3ZQhMmFRdvlL3VMzWZ4DDwT5VG1wsFjkZgm
 XmCHqnPqVbE/PyivvgRZoifd/T5novvmWdSbqf2+HaxaDOZTpDXGilg5teR0589KgZcg
 YmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FqKTuYCtVMhLaai41DIXH1Kdgidn13RznDy2j2LqZXs=;
 b=amcjeb6cSpwN5X29Zu6ECwSZ5UnTfLt6j4ikLqZDsOSiFSCi9gnjK2h4Aa22sOP9ey
 Rc0XdXw/HyIwchlHDihOcZawyGau2iRFf7UIRWKAzQDL1rFfXbArW5wNA606DzmSwJ7M
 ACR/ACmGr6OyDtxcqbRc5e5AiCytc2/xB0WhjFpuxagAonSSiNfBPLGi+Gp651HsC5P0
 KhmNkPR3RgGhaqvy4OHM/tTO8qb6tknKXq34BeUOzJ0IzGheJa27itBQm+1sl4hQ0G4u
 TgGPwem/XAqFL6GwB+3fFFRSpcwaAIRJoGI7avEkrHEvhfKm8j+uhpaVg9KjWB6d0GtD
 FDNA==
X-Gm-Message-State: AFqh2kr7O+aFBFuaw+mVSlrYDC81Toah5CBT7iOXeb8xDmcaNEOlFAZu
 LEv8L3IgSsgrLtmhe7nRmcgCwgVSdssARBeACCk=
X-Google-Smtp-Source: AMrXdXuoq/He7RJlavvILNZMiaXTxkGVPeu8pOZDWHV+RgMVxGkhSUKSjjlWbBnRZf+IezFLeB9UfLWnyh8nvaLTnPw=
X-Received: by 2002:adf:d217:0:b0:254:ca76:90a4 with SMTP id
 j23-20020adfd217000000b00254ca7690a4mr1016279wrh.482.1671552769440; Tue, 20
 Dec 2022 08:12:49 -0800 (PST)
MIME-Version: 1.0
References: <B48E5791-DFD7-4EFF-8B7E-4626CE89954B@gmx.de>
In-Reply-To: <B48E5791-DFD7-4EFF-8B7E-4626CE89954B@gmx.de>
Date: Tue, 20 Dec 2022 08:12:37 -0800
Message-ID: <CAA93jw7JBZJLPZgW4sBPTqQ+1zpxsJAV4+zSw6--CBXaZE3Rdg@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] AVM seems to be shipping cake
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WWF5ISAyNjAgbW9yZSBjb3VudHJpZXMgdG8gZ28hCgpPbiBUdWUsIERlYyAyMCwgMjAyMiBhdCA3
OjQ2IEFNIFNlYmFzdGlhbiBNb2VsbGVyIHZpYSBDYWtlCjxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldD4gd3JvdGU6Cj4KPiBEZWFyIGFsbCwKPgo+IGp1c3QgaGFkIGEgbG9vayBpbiBhIHJlY2Vu
dCBmaXJtd2FyZSBhcmNoaXZlIGZvciBBVk0ncyBmcml0emJveCA3NTMwLCBhbmQgJ3N0cmluZ3Mg
ZHNsZCcgKGRzbGQgaXMgQVZNJ3Mgc2luZ2xlIGJsb2IgIm1hZ2ljIGJpbmFyeSBkc2wgZGVhbW9u
IiB0aGF0IGVuY2Fwc3VsYXRlcyBhIGxvdCBvZiB0aGVpciB2YWx1ZSBwcm9wb3NpdGlvbikgcmV2
ZWFscyB0aGF0IHRoZXkgbGlrZWx5IGFyZSB1c2luZyBjYWtlKjoKPgo+IHFkaXNjIGFkZCBkZXYg
JXMgaGFuZGxlIDEwOjAgcm9vdCBjYWtlIGJhbmR3aWR0aCAldWtiaXQgYmVzdGVmZm9ydCAlcyAl
cyBkdWFsLWRzdGhvc3QgaW5ncmVzcwo+IHFkaXNjIGFkZCBkZXYgJXMgaGFuZGxlIDEwOjAgcm9v
dCBjYWtlIGJhbmR3aWR0aCAldWtiaXQgYmVzdGVmZm9ydCBvdmVyaGVhZCAlZCBkdWFsLWRzdGhv
c3QgaW5ncmVzcwo+Cj4KPiBJIGZhaWxlZCB0byBmaW5kIHRoZSBtYXRjaGluZyBkdWFsLXNyY2hv
c3QgZW50cnkgc28gdGhleSBtaWdodCB1c2Ugc29tZXRoaW5nIGVsc2UgZm9yIGVncmVzcy4gSSBo
YXZlIG5vIGluc2lnaHQgd2hldGhlci9ob3cgdGhpcyBjYW4gYmUgYWN0aWF0ZWQgKG5vdCB1c2lu
ZyBhIGZiNzUzMCBteXNlbGYpLCBidXQgYXQgbGVhc3QgdGhpcyBpcyBtYWtpbmcgaXQgb3V0IHRv
IHRoZSB1bndhc2hlZCBtYXNzZXMgaW4gR2VybWFueS4uLiAoVGhlIEZCNzUzMCBpcyB0aGUgInZh
bHVlIiBib3ggZm9yIHRoZSBtb3N0IHJlY2VudCBEU0wgdmFyaWFudCBkZXBsb3llZCBpbiBHZXJt
YW55LCBwcm9maWxlIDM1YiB2ZWN0b3JpbmcsIHNvbGQgdW5kZXIgdGhlIG1vbmlrZXIgInN1cGVy
LXZlY3RvcmluZyIpLgo+Cj4KPiAqKSBtYWtlcyBzZW5zZSBzb21lIG1vbnRocyBhZ28gdGhleSBw
b3N0ZWQgYSB2aWRlbyBwcm9taXNpbmcgZW5oYW5jZXMgZmFpcm5lc3MgZm9yIGludGVybmFsIHVz
ZXJzLCBJIHdhcyBwdXp6bGVkIGF0IHRoZSB0aW1lIGhvdyB0aGV5IHdvdWxkIGltcGxlbWVudCB0
aGF0LCBidXQgaXQgc2VlbXMgdGhhdCB0aGV5IGRpZCBub3QgcmUtaW52ZW50IHRoZSB3aGVlbCBo
ZXJlIGJ1dCB3ZW50IGZvcgo+Cj4gUmVnYXJkcwo+ICAgICAgICAgU2ViYXN0aWFuCj4KPiBQLlMu
OiBUbyBteSBqb3kgdGhleSBhbHNvIHNlZW0gdG8gZGlsaWdlbnRseSBzZXQgb3ZlcmhlYWQsIGZv
ciB0aGVpciBIVEIvVEJGIGluc3RhbmNlcyB1c2luZyB0Yy1zdGFiLi4uCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+
IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9s
ayB0aGF0IHRob3VnaHQgU3RhZGlhIHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNv
bS9wb3N0cy9kdGFodF90aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgxMzY2NjY1NjA3MzUy
MzIwLUZYdHoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
