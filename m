Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E317F763D2A
	for <lists+cake@lfdr.de>; Wed, 26 Jul 2023 19:03:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B15F43CB39;
	Wed, 26 Jul 2023 13:03:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690391030;
	bh=sFob0tpnyr/y4C/UVPJcJ26lrU/poesy3nhAjkLSgjY=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=dpVQTjMS7NJtTJYSfz0YZ8YtWIzIbfnkkXDBQcWAXcYa3vEgSeadv3V3fifTQyGam
	 Y6NO20V5gp03ukVRSD2FU1AqH4eaX8d7yFyVm9ctBziEcCUemDzRl5IUJZa2eO4A1d
	 XmzuByZ9mRqHe1Af/xnPEqloXDly8mSaJ+/0Ap0Fy5MT0hAGB2uyDaDPV183Smr8lk
	 KZOmPF0JjH3Ob1Gn+Zwd376I4N0dFGQ/z2wKRc8RxmAaFxRy+Aw7x18b4I5tAufcmd
	 4uFTCshm4PfrEMscpdUuoq/mbxPzr/0xuUArYqEo/HeomzJIzqp6gsiGX1fPVTPw3F
	 MCraj5RpZq6QQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [67.231.154.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8B2E73B2A4
 for <cake@lists.bufferbloat.net>; Wed, 26 Jul 2023 13:03:49 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 2FB06240079; Wed, 26 Jul 2023 17:03:47 +0000 (UTC)
Received: from [192.168.100.159] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id E361E13C2B0;
 Wed, 26 Jul 2023 10:03:45 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com E361E13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1690391026;
 bh=J+K3/aEPzeSFfjgDh58OPhDsZepXVZ0a46efub205pc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=lFV9eiEFX9b+5JzVFT7H8UMkdVQqdldLsGAHqo11HwhwFoZq5p+NA2Z5vkPWpJsGN
 SH1ZwcHe4w1AEVSUaU0EEtw+geSzQrYELr0w025D/0K6RM5ejBReX4z+xefHXSUj+L
 xcmxn4npeAEdDeSprHoiu0bqLhpwejcV/KF82gHA=
Message-ID: <80e53146-8750-897d-8563-6dc07fc10800@candelatech.com>
Date: Wed, 26 Jul 2023 10:03:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Sebastian Moeller <moeller0@gmx.de>, dave.taht@gmail.com
References: <CAA93jw6WNZ8w1FgHY9aFQGdx__MivoOC7t1Q_yTqXLntx5JQjA@mail.gmail.com>
 <trinity-c963ad84-c42e-4742-ba39-1f38c99e3000-1690352946152@3c-app-gmx-bs42>
Organization: Candela Technologies
In-Reply-To: <trinity-c963ad84-c42e-4742-ba39-1f38c99e3000-1690352946152@3c-app-gmx-bs42>
X-MDID: 1690391028-Z6iWmS1x2Zwu
X-MDID-O: us5; at1; 1690391028; Z6iWmS1x2Zwu; <greearb@candelatech.com>;
 dcceda4459f510f05c5269b1e648baec
Subject: Re: [Cake] qosify ad - I think
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
From: Ben Greear via Cake <cake@lists.bufferbloat.net>
Reply-To: Ben Greear <greearb@candelatech.com>
Cc: Cake List <cake@lists.bufferbloat.net>, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gNy8yNS8yMyAyMzoyOSwgU2ViYXN0aWFuIE1vZWxsZXIgd3JvdGU6Cj4+IEdlc2VuZGV0OiBN
aXR0d29jaCwgMjYuIEp1bGkgMjAyMyB1bSAwNjoxMCBVaHIKPj4gVm9uOiAiRGF2ZSBUYWh0IHZp
YSBDYWtlIiA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4+IEFuOiAiQ2FrZSBMaXN0IiA8
Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4+IEJldHJlZmY6IFtDYWtlXSBxb3NpZnkgYWQg
LSBJIHRoaW5rCj4+Cj4+IGR5bmFtaWMgcW9zOgo+Pgo+PiBodHRwczovL3d3dy55b3V0dWJlLmNv
bS93YXRjaD92PVZ1RldoMVgxLXkwCj4gCj4gU2luY2UgdGhpcyBzZWVtcyB0byBiZSBmcm9tIG91
ciBmcmllbmRzIG92ZXIgYXQgQ2FkZWxhdGVjaCwgbWF5YmUgQmVuLCB5b3Ugd291bGQgbGlrZSB0
byBlbGFib3JhdGUgYSBiaXQgb24gdGhlIHRlY2hub2xvZ3kgc2l0dGluZyBiZWhpbmQgdGhpcz8K
CkhlbGxvLAoKV2UgZG8gYSBsb3Qgb2YgdGhlIHRlc3Rpbmcgb24gdGhlIFRJUCBwcm9qZWN0LCBh
bmQgb3VyIHRlYW0gbWFkZSB0aGUgdmlkZW8sCmJ1dCB3ZSBhcmUgbm90IGFjdHVhbGx5IGltcGxl
bWVudGluZyB0aGUgQVAgc2lkZSBvZiB0aGluZ3MuCgpQb3NzaWJseSBKb2huIGhhcyBzb21ldGhp
bmcgaGUnZCBsaWtlIHRvIHNoYXJlLCBhbmQgVElQIGluIGdlbmVyYWwgaXMgb3Blbi1zb3VyY2Us
CmluY2x1ZGluZyB0aGUgY2xvdWQgcG9ydGlvbiwgc28geW91IGNhbiBkaWcgaW50byB0aGUgZGV0
YWlscyBhbmQgcmVwcm9kdWNlIHRoZQpzZXR1cCBnaXZlbiB0aW1lIGFuZCBpbnRlcmVzdC4KClRo
YW5rcywKQmVuCgotLSAKQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+CkNhbmRl
bGEgVGVjaG5vbG9naWVzIEluYyAgaHR0cDovL3d3dy5jYW5kZWxhdGVjaC5jb20KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==
