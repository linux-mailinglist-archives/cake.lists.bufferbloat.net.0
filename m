Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3E3CB838
	for <lists+cake@lfdr.de>; Fri, 16 Jul 2021 15:58:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 371943CB67;
	Fri, 16 Jul 2021 09:58:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626443902;
	bh=xt8b0HfZ6kz3vSUDOeHepdwCaABOl/zniCXAhFkp6hc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ehYXUJiSJ3yVWCCKOTsZr/NvenGlev6lduwLsGTa3nnL8UeeGycg738sdRPclQJ8N
	 2sDBA5ICp/LnCtKu1fmZmtsOAr0xN+s8Ia62DAGtBwccGQMysxMeHVeGSvgOFEOIPL
	 9JSEDX+Z5CNDnKS4OwIEy3T6mXneuydkrT3JGiMndw7Q6rebK0bTwVU0gGmZ/Q4lhR
	 HGDfP2eaNY1ZBoY3Vv588C9ZHxVE2HsbkkVMxoNlG3cdy8G1VTsP6GceNR8ioadc1B
	 pX6DLsOqId8CU79EW/zY8Dooy/yQ+mDsWfi0JzlLlt2pcvSnPW8vFlEyvNO9h09JJ7
	 5xHeQZzuziDQA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E57833B29E;
 Fri, 16 Jul 2021 09:58:19 -0400 (EDT)
Received: by mail-il1-x129.google.com with SMTP id h3so8332504ilc.9;
 Fri, 16 Jul 2021 06:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=XZGhcs0l+gjCXvrm3JfZ4ASFEFrK6iYcloMXxwZP2dU=;
 b=d+mx5Cqg4eQuK2tS8ndCSN7fTxmW5Y8eWPVowUeoUPRoJAhvSOPOQSSwPwEAvSCe3Y
 1ZD36my2DYtCp1RBrA/kYgEvsK3UQsosmTa8LDKiIt3SviTVx7vdZigeN9u4mamC+PLV
 rl6NZgi729EzySriFeeT/a+TSAvsm3qWrOMLlsnur10VyAuwFo+HufD/8KdvsmkHgagE
 lIVgrqasE2l+v9oYOjbnWCIflPmAr3v2LREoVgxwx6vcTKcDzVlFpTdx18/Q966FwKpO
 qQi0FPWhyGdpTsQDvr13mKAgpvn+/gpmd2LSBFFQcn/NISY/gGnF0rH14l/8TApNuEBD
 ILXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=XZGhcs0l+gjCXvrm3JfZ4ASFEFrK6iYcloMXxwZP2dU=;
 b=mdZESBLgECbepEuEqs2SSKHVBzXwoRZMkfbyYcmjvHNK+a/JIyS8GaUqSYAvdMsuU+
 wWvlJ/TJDjY93AXZ2aQHyFgoDvOCUyHAOyLa6qq6X8YgYurPes/NCqV0QUnNHJECZERa
 cLDpQ3O559msif/Om03pnZON0ITk168KgJq8mXiLY1YwUp/9LxO9pa71BqPuaGvSY4z4
 oKF1WLzjFluEQX6VTrvJUZrf2P64iTVIABUVkqK9hcANc0wYT5XorAMat6wQHSr+tbFW
 Jbdb+uv2/Jf7uqukTqJkHrRsj8s6KOscrHDRWSypv8qPBL28Qmm4ErLyj5DWxhDj6oWA
 8C5g==
X-Gm-Message-State: AOAM531RQ5rdBePeqjroLpHvRHWUmqXkzClf7++W8X8C5HIN+8hyxlIu
 2PqavrWC4zCGcrnkWHbKfsUzBjFWbNSFDyq4icNQjiqqM5w5LA==
X-Google-Smtp-Source: ABdhPJxpKaJGTt1EdsU0TY/mYpgluIgHXDumRdE+St9jhRu5LgAokPrdlWywkFeAIisGo8nksjIkiN0WQ0eDiyhgqHQ=
X-Received: by 2002:a92:cd8a:: with SMTP id r10mr6218257ilb.287.1626443899105; 
 Fri, 16 Jul 2021 06:58:19 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 16 Jul 2021 06:58:07 -0700
Message-ID: <CAA93jw7L3SiBFQp85t8_gpO-SuY66aowHqNQLgpoMdAhaAxFGA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Subject: [Cake] bufferbloat on starlink podcast
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

SSBmaW5hbGx5IHVubG9hZGVkIG9uIHRoZSBidWZmZXJibG9hdCBwcm9ibGVtIGF0IHN0YXJsaW5r
LCBoZXJlLApwcmV0dHkgaHlzdGVyaWNhbGx5LCBJIGhvcGUuSSBrZWVwIGNvbWluZyB1cCB3aXRo
IGRlbW9zIHRvIGV4cGxhaW4gdGhlCnByb2JsZW0gKHRoaXMgdGltZSB1c2luZyBhIGZ1bm5lbCBh
cyBjbHVlYmF0KSwgd2l0aCBhIHdob2xlIGJ1bmNoIG9mCm9ic2N1cmUgaGl0Y2hpa2VycyBndWlk
ZSB0byB0aGUgZ2FsYXh5IHJlZmVyZW5jZXMsIGFuZCBJIGFsc28gcmFudGVkCmFib3V0IHRoZSBy
aWdodCB0byByZXBhaXIsIGFuZCBwaXRjaGluZyBjYWtlLgoKaHR0cHM6Ly90d2l0LnR2L3Nob3dz
L2Zsb3NzLXdlZWtseS9lcGlzb2Rlcy82Mzg/YXV0b3N0YXJ0PWZhbHNlCgpyZXNoYXJlIGFuZCBl
bmpveSEKCih0aGlzIGlzIGFsc28gYSByZWZlcmVuY2UgdG8gYSBoaXRjaGlrZXJzIGd1aWRlIHNj
ZW5lLiBCdXQsCnNlcmlvdXNseS4uLiB3ZSd2ZSByZWludmVudGVkIHRoZSB3aGVlbCBhbmQgaXQg
aXNuJ3QgZGVwbG95aW5nIGJlY2F1c2UKcGVvcGxlIGRvbid0IGtub3cgd2hhdCBjb2xvciBpdCBz
aG91bGQgYmUuICkKCkkgYWxzbyB0b29rIGEgdGltZW91dCB0byB0YWxrIGFib3V0IGRlYmxvYXRp
bmcgSW5kaWEsIGFuZCB0byByYW50CnBvc3RpaXZlbHkgYWJvdXQgdGhlIGdhbGVuZSB2aWRlb2Nv
bmZlcmVuY2luZyBzZXJ2ZXIuCgotLSAKTGF0ZXN0IFBvZGNhc3Q6Cmh0dHBzOi8vd3d3Lmxpbmtl
ZGluLmNvbS9mZWVkL3VwZGF0ZS91cm46bGk6YWN0aXZpdHk6Njc5MTAxNDI4NDkzNjc4NTkyMC8K
CkRhdmUgVMOkaHQgQ1RPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
