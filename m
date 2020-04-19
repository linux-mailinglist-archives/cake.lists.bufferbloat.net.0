Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D68D11AFDE3
	for <lists+cake@lfdr.de>; Sun, 19 Apr 2020 21:58:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3EF263CB46;
	Sun, 19 Apr 2020 15:58:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587326308;
	bh=C4nzVTHuQmGZLUvC1lvZUWLf+y9uNEhhmLsTslTHD7g=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c9hii3lm0GXTDOUErSmqaPIkRewijluwsDH6UPUvWeChq3ZPGM5TL2SQWvf45CveD
	 wzXbmUJ8D/Tjv3OdARuOeZeOCZQS/RD6W45i/hJp+QYrQa58RcqrEcIoMh5KOUKKNs
	 hAKud5ZmtAZj5DlPIHqiX61hgN6SHshlCiZJjZWhTZmFd7TAGGco4RZu8r6F39GJ/v
	 oE48lDejL5zWJglaI3YRhkyQ8miFEeRBObAKjw4r2gvBrWohptVmEkmbOvrQ3kOwQ1
	 8a+EFW/CEqmogqwxOsFtDggl0WF+tQXctBfbrIenA9aeAOxL1v02u7b2Gr3WyCAVpX
	 0+8a4CfmR34pg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A11183B2A4;
 Sun, 19 Apr 2020 15:58:26 -0400 (EDT)
Received: by mail-il1-x135.google.com with SMTP id e8so483919ilm.7;
 Sun, 19 Apr 2020 12:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/K9dc/YWr3oNezRDyYFO+D7vNGR9SwwIfLyylIvKTls=;
 b=MTB2MfxlM9v8vZMfGyPqbVGGCcSrYyzljX+LNsnYwNyrshcbmKGRHXDyfVwQp3InEy
 fGF4YNB5XJnXcIjpNfXRHnSYIrC32c4M1xpHWj5WtOZCRmVUWZtj+NnOviebboOjO8It
 L2nfM385d114qDSr8ZYcHwtyF7AVPlWOXGVJ5zwVq+9mzPJaLjgIJvRtPm4O5PP2nWEX
 hIOtUEEAWvqjIRUUDjKRG4GGCC5eHDP5nTxoOWjCG4ZItxR9zAClZgDo0lNV0NUnBzeH
 ZsBKBMkvOpaS8Ma/AEuR8kgMBhJ11rbxTfrfCX8KGjD/DRVQyirQKk3gBgzd+xfIVAY8
 qoWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/K9dc/YWr3oNezRDyYFO+D7vNGR9SwwIfLyylIvKTls=;
 b=ZK5wCXbRBCGpzq7xUpa1XN04ZQMLUJIicgOYX1kg4j7jB3s4HyFhO4J5MJc3WK/tcs
 mK9p4t1XgLRHwp8DAIeoWnTkoGeZYj284QGcuOO5hlCAMS/TkqITYp3C0DunX5GV7EZX
 xvM2iFO8gpsL9eZcKHp+LCg0RkRRPFWdixoWNB2H1V2AD9lgEVs1xxAONEwl7fm5x3Qi
 +BboF/xY9xLAu2bJh2i+8pzsYe2d/qa9YFiw8MTEAeN2br1GHajaxWrxUmK4H91rDZiG
 zr63NzOuADXijNdPRbiNehf0i0UT/SLq4UG28mjdmmOjRRtU+Gq0iRHKoDxrVaBeq0t7
 rkVg==
X-Gm-Message-State: AGi0PuajAX5R0UwGTGi5HoTlI+IezJN70WD/S9jw/FoIi+5XqFa1Bz/k
 YUtNnwzvdFCiVjKmcy9rhI0gvVUSfudBMsq8E5eAZo11Lgs=
X-Google-Smtp-Source: APiQypKmK+uHWau3P8o8AWihAXD0zEfn7A4vOCyhtrXmGyr7IQZny5x1i0QRqTQDwLySKc747K/2cCgvCyavRbqK11I=
X-Received: by 2002:a92:8e50:: with SMTP id k16mr13385502ilh.45.1587326305755; 
 Sun, 19 Apr 2020 12:58:25 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 19 Apr 2020 12:58:14 -0700
Message-ID: <CAA93jw6gXADipCCyu7U54bhp0ouWa9+D4oZ5+EFpbvNq0ufF7Q@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] zoom traffic analysis
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBkaWQgdGFrZSBhcGFydCBhIGJpdCBvZiB6b29tIHRyYWZmaWMgdGhlIG90aGVyIGRheSwgb3Zl
ciB0d28gaG9wcyBvZgpmcV9jb2RlbCdkIHdpZmkgdG8gdGhlIG51ZG9tZSBmcm9tIGNvbWNhc3Qu
IEl0IGRvZXMgYXBwZWFyIHRoZXkgcHV0CnZvaWNlIGFuZCB2aWRlbyBvbiBzZXBhcmF0ZSB0dXBs
ZXMsIGJvdGggbXVsdGlwbGV4aW5nIG92ZXIgcG9ydCA4ODAxLgpPdmVyIHJvdWdobHkgYSAxMG1z
IGludGVydmFsIHdpdGggYSByZWR1bmRhbnQgcGFja2V0LgoKT3I6IGl0IGNvdWxkIGJlIHJ0c3Ag
aW5mb3JtYXRpb24gb3Igc29tZSBvdGhlciBzb3J0IG9mIGNvbnRyb2wgdHJhZmZpYy4KCm5vIGRp
ZmZzZXJ2IG1hcmtpbmdzIGFyZSB1c2VkLgoKZWl0aGVyIHdheSwgb3VyIGZxIGlzIGdvaW5nIHRv
IGtpY2sgaW4gaGVyZSwgYW5kIHRoYXQncyBpbnRlcmVzdGluZy4KSXQncyBhbHNvIHJlYWxseSBy
ZW1hcmthYmxlIGhvdyBsb3cgYmFuZHdpZHRoIHZpZGVvY29uZmVyZW5jaW5nIGlzIGFuZApob3cg
Z29vZCB0aGUgZnJhbWVyYXRlIGlzLCBub3dhZGF5cy4gZXZlbiB0aGUgdmlkZW8gZmxvd3MgYXJl
IHJlYWxseQp3ZWxsIHBhY2VkIG91dC4gKG5vdGUgdGhhdCB0aGV5ICJzaG91bGQiIGJlIGZvciBz
dHVmZiBjb21pbmcgZnJvbSB0aGUKaW50ZXJuYWwsIGFuZCAqbWlnaHQqIGJlIGZyb20gc3R1ZmYg
Y29taW5nIGZyb20gdGhlbSBkdWUgdG8gdGhlCnNpZGVmZmVjdHMgb2YgdXNpbmcgZnFfY29kZWwg
b24gaW5ib3VuZCBzaGFwaW5nKQoKY2FwIGhlcmU6IGh0dHA6Ly9mbGVudC1mcmVtb250LmJ1ZmZl
cmJsb2F0Lm5ldC9+ZC96b29tMi5jYXAKCkkgZG8gbWlzcyB0aGUgZGF5cyB3aGVyZSB0cmFmZmlj
IGxpa2UgdGhpcyB3YXNuJ3Qgc28gZW5jcnlwdGVkIQoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIK
CkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRl
bDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
