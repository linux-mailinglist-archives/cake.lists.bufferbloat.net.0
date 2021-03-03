Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D11C432B95A
	for <lists+cake@lfdr.de>; Wed,  3 Mar 2021 18:00:41 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 80A7C3CB38;
	Wed,  3 Mar 2021 12:00:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614790839;
	bh=8dgcnYr9JcLNJVEmqFbb1y0wLn40Yuqx7zfVjgj3Td4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kW5QoS9dzA8MwwYUPB60nHhxQ5lQVEP1RuoEr9NnL0c87XaivYKaFt8LsngTWHG9P
	 0Fg2HcFG7BmDqz7icRTHAqIOmE6pi9qiadDb6ZzTghxckG7sqHVTNg0SY9p18l9b+J
	 8D4x8D7UC+zRH0ay3S/cutYASSMUoXmVOo+JK89q4OGuJJhj9M392Eb2Ly1fUDQUKx
	 7RPbnf0c73FPlR4t5+q/gfVhgqWy+OPnsZDx7Zaiww4CU02CJp1l7ArDw3qMmDUGBn
	 1/xGJqTe9wtybIppX4pAaFbJvvS2YS5yCZza3M1OV3vuenJFh1b8uHrvC59+LKDqco
	 MTMYD4pIj7gHQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2F34C3B2A4;
 Wed,  3 Mar 2021 12:00:39 -0500 (EST)
Received: by mail-io1-xd34.google.com with SMTP id p16so26492527ioj.4;
 Wed, 03 Mar 2021 09:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=B679eWNRVqpCy2FrkItEqxwlx0L40Kt6T7IBau1vEa0=;
 b=CZDARiuXMWF1LjZhaGlOvpaz5MQflgANt41Rc2IsPFJWgT+aXVt8odHeSINSPahP0T
 EEuuOsT77V0NxeeKvys6R3ldLEJHl4h3GC2mWqysy5NRxYNn2JGEnVfbhyBsD4150Jpx
 +EfO2Onl7mpB0T15YFEAOGvdz2VAyQe7eC22mfYI7NI9BB21p8VFe5TY2aOUSlu3Rno6
 4c4LVOesZPRr+umEi2lH96A8KJb1UH9q9Vyu6R/irDCdFUiGu7XXIRzImjs3NHIpA/Do
 tWTjzXNYa3fASIEVAuaj4/ktH4msObHLtSTv8gAaaeZERPkMO9nsOUr3Dnf6fMVF2dqh
 MbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=B679eWNRVqpCy2FrkItEqxwlx0L40Kt6T7IBau1vEa0=;
 b=Zx+8bKBX6X6MU1icq5fT68Kpf41KKxFLR65HKng8reqTfDajm/zqKVg+Meqo0ih8Ai
 +MQftnmbSKG8Di3mC0d4bXLErYptFrhW6lT96SPEnWkGHbTKnJbAS8ijGn8lNQQ4WqJv
 6oOHi/a6JT/4mlfkw472x8Rqi9Hx4uKD9Nfr7BodhfmtaJkmyUwwCATSwe3Wce84wzlg
 hAYQX7f0xsIgzkdX0AvwYkwpiIJWRLs0cEc6lRfoK1ClMrA1CE5+lnP7i5N/tM4yOpYq
 uEfcEjvvVtCBnwpNXARPGLN+H3RuTZHKV+FDKJ+SYUH3HP4Bo4n3N8p88YsQrMNZA8dX
 ZZ4Q==
X-Gm-Message-State: AOAM530droV1G3+8rq4BJvyZMC/uS2XTAJhgnKFQOlp7Re/eF+AbBku4
 UsReOG3jy6tdNs0pwF9QUW7bK7UcabQSnLAKCjh93LdzDJuArw==
X-Google-Smtp-Source: ABdhPJylGZJERVzV0PE4zcTfH0a/48+X6gDiDhngruvTDskQNrfeVIoSXkKNJ30geQv/PCj9xaSjrexg/y4b5ueE/gw=
X-Received: by 2002:a02:6a0b:: with SMTP id l11mr27194396jac.82.1614790837437; 
 Wed, 03 Mar 2021 09:00:37 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 3 Mar 2021 09:00:25 -0800
Message-ID: <CAA93jw67X7u5pS0a-ERpWvpenwmgvWvQ3KV9e2Pzj75iuOLPgQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] merlin gains cake support
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

aHR0cHM6Ly9naXRodWIuY29tL2R0YWh0L3RjLWFkdi9pc3N1ZXMvMjcKCkkgZG9uJ3QgaGF2ZSBh
bnkgb2YgdGhlIGhhcmR3YXJlIHN1cHBvcnRlZCBieSB0aGlzIGZpcm13YXJlIGx5aW5nCmFyb3Vu
ZCBoYW5keS4uLiBjYW4gYW55b25lIHRlc3Q/CgotLSAKIkZvciBhIHN1Y2Nlc3NmdWwgdGVjaG5v
bG9neSwgcmVhbGl0eSBtdXN0IHRha2UgcHJlY2VkZW5jZSBvdmVyIHB1YmxpYwpyZWxhdGlvbnMs
IGZvciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBiZSBmb29sZWQiIC0gUmljaGFyZCBGZXlubWFuCgpk
YXZlQHRhaHQubmV0IDxEYXZlIFTDpGh0PiBDVE8sIFRla0xpYnJlLCBMTEMgVGVsOiAxLTgzMS00
MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
