Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6D31C0252
	for <lists+cake@lfdr.de>; Thu, 30 Apr 2020 18:21:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D0EF43CB42;
	Thu, 30 Apr 2020 12:21:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588263705;
	bh=i3AXiRTSNZmH2HL5mbvzZcKGMhxhdI00X48M5gTd7Mg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZFCbQCjoM0DL9gsGetQnFyQCiBMuyu6Wg53COgy8piMccBAiaMOyw2HDSnPjRcLGg
	 KxyeUxhCmAhOJaBsVDrZxCyvRo/MMiAMXtIil2Yee4E4vwk0yZ21ybGZqPvpkF3LjN
	 QR21jaJi5il7GaLcibrzYeKp3Vc42/9Tgd4u/8JVl64eORnBzpjP3fB8vtMxYwVIa8
	 QVCS4xRUc1vzupBQnuvSP8Z9pDH+sZKzPoaITtzl/x9kUuaPHOHOhhW0wM8zghyaJ1
	 HiyROOe5txH4CWZ6VvGxDBp4a/z/jZQQ1/OZ85dOSCes7k8FSBp+TEOZ5tUxCsNsIC
	 OdB/iuwy23fWw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ADCCB3B29D;
 Thu, 30 Apr 2020 12:21:44 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id k23so2100978ios.5;
 Thu, 30 Apr 2020 09:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=RQ2Gr2ZTQ7naOR7NUJp+61SJoN8nSZPLcHaoznx79lU=;
 b=XhqS6x5Uu0WwPA+K+erjGmAt/deOERcXdgbt9/M+HDY+Ty8xvoLcDnzXY84e9CSC5U
 9CdVN3YRqbYwT1QVjvS17r6ETfElqhWYnWE9M7MYGM844nZYHxTIu+co7MDDGR/43K+2
 M1LxTGDlEf6PqI6RYIVClI7Hxd3SXS3L0Fd5IRPdwX4pjsxB8yAdzGzp2dqpFzWXzfCz
 Lv0xmAehYphrezAPPoPOxQApkdjZojDzb55uTsd4EBdOOcYmJbvzWBMUHQx8MSLuU8dq
 IKmradyTYhvmOlzPi83rWUCovfThbgPvfR/YbR2jbuKKSHxwCIDnXNDfr7ccXzs9naRa
 2AnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=RQ2Gr2ZTQ7naOR7NUJp+61SJoN8nSZPLcHaoznx79lU=;
 b=fvanRH/6Sr+I1w/xWFgHaUpmsCSrYhE6lRbZSRNgspxCl95ZaP8wzovrY+tee9tHhW
 XVLzJ33xbkiRR/h53YxyCNtpsG7asRlxGCxQ+l3YvpVy9fmzwbdzCixTAoe6lkYA60ga
 XrmVv2cxwf2S4ztiaENNCds05xLc78wt0XI6eDC+eHzYXFoCxmKw8L/WzsEYMghFvRpi
 4Vbc9E9YtbbkTViu02Cbn9H9vEUIOmGYCxnahO9/hp7Oimxty5gSNT3Ifugtq2sC0M6l
 D/XvNPsrDlgfMRyN1uvXsISCbmWlRq6b2/u77NIoZka/O/58afRf1hZQazSQNTKzcDyJ
 Icyg==
X-Gm-Message-State: AGi0Pua/o0SSGqL1f9DPrSOK90U3ZacG4MAAmMIxhrWHvqfUIbA0XqDO
 qhD0CKNluzQVBbs5OsmZTMAjHrdDgY+bRgEbD3kufEu2ySM=
X-Google-Smtp-Source: APiQypIY3ihW04pP9Wh8/NEVepLQ1y+mpCOQwwCo6iaIB8ktVwKbScOgzpsZo6/SEj2ng1/gBylE0K+/qlLh6JBYm7g=
X-Received: by 2002:a02:a90e:: with SMTP id n14mr2513709jam.97.1588263703755; 
 Thu, 30 Apr 2020 09:21:43 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 30 Apr 2020 09:21:32 -0700
Message-ID: <CAA93jw7RL+_37z5-=s0=_dQBQAWA=qpJFDT90uJC=9oVX9xNow@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] the last big make-wifi-fast talk I gave
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

U2luY2Ugd2UgaGF2ZSBhY2N1bXVsYXRlZCBtb3JlIHRoYW4gYSBmZXcgbmV3IHBlb3BsZSBvbiB0
aGUgbGlzdC4uLgoKQmFjayBpbiAyMDE2LCBJIGV4cGxhaW5lZCBtdWNoIHRoYXQgd2FzIHdyb25n
IHdpdGggd2lmaSBoZXJlLCBhbmQgYXQKdGhpcyBwYXJ0aWN1bGFyIHRpbWUgaW4gdGhlIHRhbGss
IEkgZXhwbGFpbmVkIG9uZSBvZiB0aGUgYmlnZ2VzdAp0aGluZ3Mgd3Jvbmcgd2l0aCA4MDIuMTFu
LCBhYywgYW5kIGF4LCBwYWNrZXQgYWdncmVnYXRpb24sIGFuZCBob3cgdGhlCmVudGlyZSBpbmR1
c3RyeSBkaWQgdGVzdGluZywgdXNpbmcgbXkgb2Z0ZW4gaGlsYXJpb3VzCm1ldGhvZCBvZiAicGVv
cGxlIGFzIHBhY2tldHMiLi4uLgoKaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1SYi1V
bkhEdzAybyZ0PTI1bTIycwoKdGhlcmUgd2FzIGEgTE9UIG1vcmUgd3Jvbmcgd2l0aCB3aWZpIHRo
YXQgY291bGQgYmUgZml4ZWQgYWxzbyBvdXRsaW5lZAppbiB0aGF0IHRhbGsgKG11bHRpY2FzdCwg
ODAyLjExZSBzdHVwaWRpdGllcywgZXRjIC0gc2VlIHRoZSB0YWxrKSwKYnV0IGp1c3QgZml4aW5n
IHF1ZXVlaW5nIGFzIHdlbGwgYXMgd2UgZGlkIGV4aGF1c3RlZCBhbGwgdGhlIHJlc291cmNlcwp3
ZSBoYWQgYW5kIGl0IHN0aWxsIHRvb2sgNCB5ZWFycyB0byBnZXQgQVFMIGludG8gYSBtb3JlIGRl
cGxveWFibGUKc3RhdGUuCgpCbGF0YW50IHBsdWc6IFRva2UncyB0aGVzaXMgaXMgbm93IGluIGl0
cyBzZWNvbmQgcHJpbnQgZWRpdGlvbiBhbmQKYXZhaWxhYmxlIGZvciBlaXRoZXIgZG93bmxvYWQg
b3IgYSBwYXBlciBjb3B5IGF0OgoKaHR0cHM6Ly9idWZmZXJibG9hdC1hbmQtYmV5b25kLm5ldC8K
CkdldCBhIGNvcHkuIEdldCAxMCBjb3BpZXMhIEdpdmUgZW0gdG8gYW4gSVQgbWFuYWdlciwgQ1RP
LCBzeXNhZG1pbiwKbmV0d29yayBkZXNpZ25lciwgbmV0d29yayBvcGVyYXRvciwgYW55b25lIHRo
YXQgbWlnaHQgbGlzdGVuLiBQb3N0IG9uCnlvdXIgZmF2b3JpdGUgc29jaWFsIG1lZGlhIHNpdGUu
IFB1dCBvbmUgaW4geW91ciBiYXRocm9vbSB0byByZWFkIHdoZW4KeW91IG5lZWQgYSBicmVhayBm
cm9tIHRoZSBpbnRlcm5ldCBpdHNlbGYuCgpJIGdhdmUgYSB0YWxrIG92ZXIgaGVyZSBhdCBicm9h
ZGNvbSBhYm91dCBob3cgdG8gbWFrZSBxdWV1aW5nIGJldHRlcgppbiBnZW5lcmFsLCBidXQgSSBk
b24ndCB0aGluayB0aGV5IGxpc3RlbmVkLgoKaHR0cDovL2ZsZW50LWZyZW1vbnQuYnVmZmVyYmxv
YXQubmV0L35kL2Jyb2FkY29tX2F1ZzkucGRmCgpJJ20gcHJldHR5IHN1cmUgdGhlIG5leHQgZ2Vu
ODAyLjExYXggbXQ3NiBjaGlwIGNhbiBkbyBnYW5nIHNjaGVkdWxpbmcKcmlnaHQgZm9yIG9mZG1h
LCBub3Qgc28gc3VyZSBhYm91dCBhbnl0aGluZyBlbHNlLgoKCgoKCi0tIApNYWtlIE11c2ljLCBO
b3QgV2FyCgpEYXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJl
LmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
