Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F376640B45
	for <lists+cake@lfdr.de>; Fri,  2 Dec 2022 17:54:01 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 215143CB42;
	Fri,  2 Dec 2022 11:53:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1670000039;
	bh=7VovlmYwFO3KnlLpo6KKRYzJdFNuW2NfbvVeW0HFqiI=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=LHZfTBZpKFAysLXglU+h/4z2gmyjwzKC/tJx34iMkJZ10v/EV9YUqF6vK7FLR3LFN
	 N4SCCydgViXPJkDqdAyEdKGFvkeycgeMeRYuVA2aevKY89u1LayY8x/NQRwjTioGMj
	 dnRoG5BFKU7Cv4HOe1q4xm4hbhj0phF7gLBD0AmcsJDU9jA6/bX6EbRAxjd7Pabf40
	 NhIdpfwcz+8/2I0jE18UzUQJCmMR7oipC4W0trNnJ3060IkW+zhxaHfBtWvJJ0H8XZ
	 TXyk0FpzZ87yWHBdWsnxzY/IY1ztMzFMoxSlcm+o50TsDvLrFTdyZku/vn/Ys/r+iK
	 CmMEMVLQQ5xkA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 141793B29D;
 Fri,  2 Dec 2022 11:53:57 -0500 (EST)
Received: by mail-wm1-x335.google.com with SMTP id
 c65-20020a1c3544000000b003cfffd00fc0so6917447wma.1; 
 Fri, 02 Dec 2022 08:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4eDYB7izO2+mU8VAsQMFHb79zLnx9fUUMl79PfQKaVk=;
 b=HhrLyVX9SC0+SYfsKCTbyr7/lmb4mZGh6sjt7DqEcwRmTZOj89xYrdW46+q4I3UCgt
 L3JmHJUA8nEhTVteMFqfyOOMmjptbKmKSwjGA9tDtRrx8eFtWOPGdK4FIgeD9kzXuuEW
 vveB68FNbvrBk5BkiLYj1V9K4RwDSkToXCl3ZUtwT7Thg6GkX0vn9hW0jlw27v0yKj3f
 5bFsfMrAM8Ahzxyow1d9X2eWJNK2CPKfat2cjZzwn41WgxidBXGXGxh66erLxtrWhu0m
 e1UjKJ7uDYjmwmXm9HvsDbkRERixSKZrGZueDbD1tXmU22Uwd02JCcIEdRClzIeTju8V
 6TAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4eDYB7izO2+mU8VAsQMFHb79zLnx9fUUMl79PfQKaVk=;
 b=4VP6JLlVU+PH8v9oL89wYJD//sSB8zj3xbv4SKCMTCydM9WiToxnHCnpbGLtoEJ/7N
 EmE9Yqm37VWMLke7UnYkFPvRc1I0UJbSRZh6+d2KuYEx2+sHfbrfguuFGHEs+boYB+6T
 fUWQapoAvHWhcZljlev1qwAc8ZF4IZ6mxtUQvlEbSx8en2VPcSJooZLW3EBG4ml+epyB
 zcLmkvW6oqtCm0wsrtvIKeMupsC2+Ja7QWQJ52FbCePxxpeKHRxH2nIIddg88c5q2vLj
 LbVlSM1noN61a5jxBmsm9QQ3rg6WkHhyyh4YrgXgLAPf9jJp4P395WEsNAQl+qi7d/Av
 Kx2g==
X-Gm-Message-State: ANoB5pnB3vBlg5Vm0H2L00HOctCbvsb/cnVN9+JQtHYGf6PWJARk9B2J
 eWEarBt2+965KR2YPgOCtCBlVrbzL9Il2jQ6UhXNt3zvGcmiUQ==
X-Google-Smtp-Source: AA0mqf4UQ6oK7uRWtkwhBGChCWoTYJIad/Ihm1x7NfkVxPZgGtcbMBwnUZSt+XLdWrdZqzWG2xb8xJCTGXkgvYrEecQ=
X-Received: by 2002:a05:600c:4e46:b0:3d0:57ea:3188 with SMTP id
 e6-20020a05600c4e4600b003d057ea3188mr18818929wmq.28.1670000035865; Fri, 02
 Dec 2022 08:53:55 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 2 Dec 2022 08:53:43 -0800
Message-ID: <CAA93jw6oECeUdqJTVZ3eVCAo5bPbHgAyNPBesRGwDHQ+qCtgcA@mail.gmail.com>
To: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, xdp-newbies@vger.kernel.org
Subject: [Cake] questions: LPM -> irq or queue mapping on the card for cake?
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

YWxsOgoKQWZ0ZXIgYSBwcmV0dHkgbG9uZyBsYXlvZmYgZnJvbSBrZXJuZWwgZGV2ZWxvcG1lbnQg
b2YgYW55IHNvcnQgb2YKbWluZS4uLiB3ZSdyZSBwdXNoaW5nIHRoZSBsaW1pdHMgYWdhaW4gdHJ5
aW5nIHRvIGdldCBjYWtlIHRvIHN1cHBvcnQKMTBzIG9mIHRob3VzYW5kcyBvZiBJU1Agc3Vic2Ny
aWJlcnMsIGxldmVyYWdpbmcgeGRwIGZvciByZWFkcywgYW5kCmVicGYgInBwaW5nIiBmb3IgaW5s
aW5lIG1vbml0b3Jpbmcgb2YgVENQIHJ0dHMsIHRoZW4gYSB0b24gb2YgaHRiIGJpbnMKKyBjYWtl
IGZvciBlYWNoIHN1YnNjcmliZXIuCgpzaGFtZWxlc3MgcGx1Z3M6CgpodHRwczovL2dpdGh1Yi5j
b20vdGhlYnJhY2tldC9jcHVtYXAtcHBpbmcjY3B1bWFwLXBwaW5nICMgZXZlcnlib2R5Cm5lZWRz
IGthdGhpZSBuaWNob2xzIGFuZCBzaW1vbiAncyBwcGluZyEhIQpodHRwczovL2dpdGh1Yi5jb20v
TGlicmVRb0UKCihldmVuIG1vcmUgc2hhbWVsZXNzIHBsdWcgLSBhc2sgeW91ciBpc3AgdG8gdHJ5
IGxpYnJlcW9zLmlvIG91dCAtCnByZXNlbnRseSBhdCAxMGsgdXNlcnMsIHB1c2hpbmcgMTFnYml0
L3NlYywgMjQlIG9mIDE2IGNvcmVzISBJJ20KcmVhbGx5LCByZWFsbHkgYW1hemVkIGJ5IGFsbCB0
aGlzLCBJIHJlbWVtYmVyIHN0cnVnZ2xpbmcgdG8gZ2V0IGNha2UKdG8gY3JhY2sgNTBNYml0cyBv
biBhIDYwMG1oeiBtaXBzIGJveCBhIGRlY2FkZSBiYWNrLiBXYXkgdG8gZ28KZXZlcnlvbmUhIC0g
bG92ZSwgcmlwIHZhbiB3aW5rbGUpCgpBbnl3YXkuLi4gYWZ0ZXIgYWRvcHRpbmcgeGRwIGZ1bGx5
IG92ZXIgdGhlIHBhc3QgY291cGxlIG1vbnRocy4uLiBtb3N0Cm9mIHRoZSBDUFUgdGltZSBpcyBu
b3cgc3BlbnQgaW4gaHRiLCBhbmQgd2hpbGUgSSBzZWUgaHRiIGhhcyBiZWVuCnN1Y2Nlc3NmdWxs
eSBvZmZsb2FkZWQgYnkgdGhlIG1seDUsIGl0J3Mgbm90IGNsZWFyIGlmIHRoYXQgY2FuIHB1bGwK
ZnJvbSBmcm9tIGNha2UgYXMgYW4gdW5kZXJseWluZyBxZGlzYyAoPyksIG9yIG9ubHkgYSBwZmlm
bywgbm9yIGhvdwptdWNoIGJ1ZmZlcmluZyBvZmZsb2FkcyBsaWtlIHRoaXMgaW50cm9kdWNlLiA/
IEFyZSB0aGVyZSBvdGhlciBjYXJkcwp3aXRoIGFuIGh0YiBvZmZsb2FkIG5vdz8KClNlY29uZGx5
IC0KClRoZSB4ZHAgcGF0aCBpcyBtYXJ2ZWxvdXMsIGJ1dCBpbiB0cnlpbmcgdG8gZHJpdmUgdGhp
cyB0cmFuc3BhcmVudApicmlkZ2UgdG8gMTAwR2JpdCwgSSBmaW5kIG15c2VsZiB3YW50aW5nIHNv
bWV0aGluZyBvbGQgZmFzaGlvbmVkLCBhbmQKaW4gbXkgbWluZCwgc2ltcGxlciB0aGFuIGEgbWF0
Y2ggcGF0dGVybiAtIGlzIHRoZXJlIGFueSBldGhlcm5ldCBjYXJkCnRoYXQgbGV0cyB5b3UgZG8g
YSBUQ0FNIG1hcHBpbmcgb2YgYSBsYXJnZSAoc2F5LCAxMjggdGhvdXNhbmQpIHNldCBvZgpJUCBh
ZGRyZXNzZXMgdG8gYW4gaXJxIG9yIHF1ZXVlID8KCjEuMi4zLjQvMjkgLT4gaXJxIDggKG9yIGh3
IHF1ZXVlIDgpCjEuMi40LjEvMzIgLT4gaXJxIDkgKG9yIGh3IHF1ZXVlIDkpCmE6YjpjOmQ6Oi81
NiAtPiBpcnEgOCAoZXRjICogMTBzIG9mIHRob3VzYW5kcyBvZiBvdGhlciBpcCBhZGRyZXNzZXMs
IDEKb3IgbW9yZSBMUE0gbWF0Y2hlcyBwZXIgc3Vic2NyaWJlcikKCk5lZWRuJ3QgYmUgYmlnIGVu
b3VnaCB0byBmaWxsIGEgYmdwIHRhYmxlLi4uCgpUaGlzIGlzIGRpZmZlcmVudCBmcm9tIFJQUyBp
biB0aGF0IHdlIGRvbid0IHdhbnQgYSByeGhhc2ggdG8gc3ByZWFkCnRoZSBsb2FkICJldmVubHki
LCBidXQgdG8gYWx3YXlzIGRpcmVjdCBhIHNldCBvZiBJUCBhZGRyZXNzZXMgdG8gYQpwYXJ0aWN1
bGFyIGNvcmUsIG9uIGEgcGFydGljdWxhciBxdWV1ZSAtIHdoaWNoIGlzIHNldHVwIHRvIGRvIGFs
bCB0aGF0Cmh0Yi1pbmcgKDMyayB1bmlxdWUgYmlucyBwZXIgY29yZSwgZS5nLiAxLjltIGJpbnMg
b24gNjQgY29yZXMpIGFuZApjYWtlLWluZy4KCk90aGVyIGlkZWFzIGZvciBzdGVwcGluZ3N0b25l
cyBvbiB0aGUgbWFyY2ggdG8gMTAwZ2JpdCBmb3J3YXJkaW5nCnRocm91Z2ggdG9ucyBvZiBjYWtl
IGdsYWRseSBjb25zaWRlcmVkLiBXZSdyZSBnb2luZyB0byBiZSBmaWRkbGluZwp3aXRoIHRoZSBt
ZXRhZGF0YSBzdHVmZiBpbiB4ZHAgYXMgd2VsbCAtIDMgaHcgaGFzaGVzIGZvciBjYWtlLCBhIHJ4
CnRpbWVzdGFtcCBmb3IgY29kZWwgd2lsbCBwcm9iYWJseSBoZWxwIHRoZXJlIHRvby4KCgoKLS0g
ClRoaXMgc29uZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3
b3VsZCB3b3JrOgpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hy
b29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
