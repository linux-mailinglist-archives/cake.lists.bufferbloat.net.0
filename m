Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C10069ECA25
	for <lists+cake@lfdr.de>; Wed, 11 Dec 2024 11:17:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4DE7E3CB43;
	Wed, 11 Dec 2024 05:17:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733912253;
	bh=7NUnIcJHMBvPLnOw7m4OvUOtr2KvenRHTeLO0PKm034=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=maqPNts6W5gG/aP3JZnFjpPDW3srhVNd2Dv4Nb0+B9F9tJXYyYJhPqwfpCPWrYxEB
	 /IrB6H18ElH0ZK7DLsGVOaGEve69Jhhk8zQUIVEIru4HWCCoRwD+GD1P8x+8R6faS5
	 9VPGtsVLvvQxJhq92jyVg78iaCC8yuTm8PT99zPS0nsTZd46snZqq/7eww7lW5ds0e
	 F3zFT0c6M10+Mpiwnsgjt+vhssNLcv8dy0dN8MENAeqQB6lUh9XQ/xJY1Uf0qNzX3G
	 sugZtHbZZdeN8quGQGj/2gCyj7R96vvda44Nt9FxFyHfYMMNzIwBgf3f9prSfZLCpy
	 issv/3AJTgNpA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 835F13B29D
 for <cake@lists.bufferbloat.net>; Wed, 11 Dec 2024 05:17:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733912251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=M9zJVggtTmdu3KzfuhyLWooNUtfdXK1FNoWWOWUupHk=;
 b=HdBGf4BOxeRbZHUW3vnt4a670qhLec/sulfne+V6TzxnepoTFVDxgRcQOy7c9Kf6PwE/Ug
 ChzyM32oAFbeh7T0tpoFc9XuFJKOBOG+e+sT3Rd87ee5FZ4yWSSzIiLaTAPAAUlx8DSt26
 2xaMtBvIjcDAs1RJS0gib2lZJnAFS2g=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-627-tLVBKaUuPfuo8wuzxnWLpw-1; Wed, 11 Dec 2024 05:17:27 -0500
X-MC-Unique: tLVBKaUuPfuo8wuzxnWLpw-1
X-Mimecast-MFC-AGG-ID: tLVBKaUuPfuo8wuzxnWLpw
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-aa68fd5393cso77055866b.0
 for <cake@lists.bufferbloat.net>; Wed, 11 Dec 2024 02:17:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733912246; x=1734517046;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=M9zJVggtTmdu3KzfuhyLWooNUtfdXK1FNoWWOWUupHk=;
 b=T/NRGKQmeaRSLNEkvI6Q1fk9dmwrfy/fWvf3cCPe18Le0z/3KNNBQDR2cjntZxPYKL
 ppTr4ewKncpWlGGqcTWCAzuvCJiBMG35aVAzAED9BDCveKAqvE93EgmGQKtKRkIJDO+H
 Xwymr6PGkqWhGtnoSBXLkFxzvobGx0bgIfDxHxyOSWD+yBS2OaOSWpPLovRi9p/tH44P
 TP5WYyg8OpKFIsLqCPabKc+7PETbwuBreRvlj/+U4jWV3L9H1RV0ytztk02sHfxrfzoz
 Rrpa1SqpDaIhKJZHo084I1tcDxxK4orKrheAEvIhIoYRy4QHXthbEOiNg1gwwNklxdHK
 MVqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2se29bQ6tBqMzi/ELFPkVmJRox5SU3ZA1G5d9yOxctGoG1DrFFHig1g/qKugbLZonld63@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw9K61x2fin97WKsalMfI7ESy4tivrkVa8u21m0vMx3ty1p8IYi
 9HSMYegg9DUlFSM7LLf7mbdPM8NFI24YPi3HxJxfr85DOe9pMkOVr8zjmik0k9bp1o0WIrOJJcO
 qA7eo5Y3rWYhfyT8hW3mL/qYYfdZCZzH79MbyAwjmAf2MqfTzHXtmYxpnvhQ=
X-Gm-Gg: ASbGnctkydFL/+Y/tHBnABnjMKeuFytw+W2czHUN4qXZdx9iAZQEMmYoP2gNXebV6/C
 8jnf08aeGcGiHRXQYIxbwy3wbgwYm42is9GbdXOy5kjEFc9puiDxYODkSMagCu+ttgKHDO5EReX
 +pygY2FOpvBj/KWVDfXjBqWILdKXoArG6LdjntAWAT1mZL51rzxxIyC5Z7DiX/QHw4pjviTmJow
 S1nh8mWus3dII8UVTtw+e/Av1DtEPROjjkqDrK3eelV6E3jrDc=
X-Received: by 2002:a17:906:23e1:b0:aa6:9eac:4b83 with SMTP id
 a640c23a62f3a-aa6b159dce6mr185098766b.12.1733912246474; 
 Wed, 11 Dec 2024 02:17:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSg4lxIpRE0Pgirq1L/Eznuw06rdzIT7ddhWqydGde+0G1kjM0e3Aqvnq5MF6nND5n3qyxEA==
X-Received: by 2002:a17:906:23e1:b0:aa6:9eac:4b83 with SMTP id
 a640c23a62f3a-aa6b159dce6mr185094966b.12.1733912245974; 
 Wed, 11 Dec 2024 02:17:25 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa678f34c68sm528413666b.38.2024.12.11.02.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 02:17:25 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 78DA716BDC4D; Wed, 11 Dec 2024 11:17:24 +0100 (CET)
Date: Wed, 11 Dec 2024 11:17:09 +0100
MIME-Version: 1.0
Message-Id: <20241211-cake-drop-reason-v2-1-920afadf4d1b@redhat.com>
X-B4-Tracking: v=1; b=H4sIAKRmWWcC/2WNwQrCMBBEf6Xs2ZVu0Eg9+R/SQ0w2NohJ2YRQK
 f13Q/Emc3oM82aFzBI4w7VbQbiGHFJsoA4d2MnEJ2NwjUH16kSqP6M1L0YnaUZhk1PEB2lNTHz
 xvYE2m4V9WHblHSIXjLwUGFszhVySfPavSnv/0w7/2krYMrRLrx15Gm7CbjLlaNMbxm3bvnkYl
 qm7AAAA
X-Change-ID: 20241205-cake-drop-reason-b1661e1e7f0a
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>, 
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, 
 Jiri Pirko <jiri@resnulli.us>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: K8NR9n-rmEVdIMj91SToJL0La4SkSDbw_eR1o3dwz7o_1733912247
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next v2] net_sched: sch_cake: Add drop reasons
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
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QWRkIHRocmVlIHFkaXNjLXNwZWNpZmljIGRyb3AgcmVhc29ucyBhbmQgdXNlIHRoZW0gaW4gc2No
X2Nha2U6CgogMSkgU0tCX0RST1BfUkVBU09OX1FESVNDX09WRVJMSU1JVAogICAgV2hlbmV2ZXIg
dGhlIHRvdGFsIHF1ZXVlIGxpbWl0IGZvciBhIHFkaXNjIGluc3RhbmNlIGlzIGV4Y2VlZGVkCiAg
ICBhbmQgYSBwYWNrZXQgaXMgZHJvcHBlZCB0byBtYWtlIHJvb20uCgogMikgU0tCX0RST1BfUkVB
U09OX1FESVNDX0NPTkdFU1RFRAogICAgV2hlbmV2ZXIgYSBwYWNrZXQgaXMgZHJvcHBlZCBieSB0
aGUgcWRpc2MgQVFNIGFsZ29yaXRobSBiZWNhdXNlCiAgICBjb25nZXN0aW9uIGlzIGRldGVjdGVk
LgoKIDMpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX0ZMT09ECiAgICBXaGVuZXZlciBhIHBhY2tldCBp
cyBkcm9wcGVkIGJ5IHRoZSBmbG9vZCBwcm90ZWN0aW9uIHBhcnQgb2YgdGhlCiAgICBDQUtFIEFR
TSBhbGdvcml0aG0gKEJMVUUpLgoKQWxzbyB1c2UgdGhlIGV4aXN0aW5nIFNLQl9EUk9QX1JFQVNP
Tl9RVUVVRV9QVVJHRSBpbiBjYWtlX2NsZWFyX3RpbigpLgoKUmVhc29ucyBzaG93IHVwIGFzOgoK
cGVyZiByZWNvcmQgLWEgLWUgc2tiOmtmcmVlX3NrYiBzbGVlcCAxOyBwZXJmIHNjcmlwdAoKICAg
ICAgICAgIGlwZXJmMyAgICAgNjY1IFswMDVdICAgODQ4LjY1Njk2NDogc2tiOmtmcmVlX3NrYjog
c2tiYWRkcj0weGZmZmY5ODE2OGEzMzM1MDAgcnhfc2s9KG5pbCkgcHJvdG9jb2w9MzQ1MjUgbG9j
YXRpb249X19kZXZfcXVldWVfeG1pdCsweDEwZjAgcmVhc29uOiBRRElTQ19PVkVSTElNSVQKICAg
ICAgICAgc3dhcHBlciAgICAgICAwIFswMDFdICAgOTA5LjE2NjA1NTogc2tiOmtmcmVlX3NrYjog
c2tiYWRkcj0weGZmZmY5ODE2ODI4MGNlZTAgcnhfc2s9KG5pbCkgcHJvdG9jb2w9MzQ1MjUgbG9j
YXRpb249Y2FrZV9kZXF1ZXVlKzB4NWVmIHJlYXNvbjogUURJU0NfQ09OR0VTVEVECgpSZXZpZXdl
ZC1ieTogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPgpSZXZpZXdlZC1ieTogSmFt
YWwgSGFkaSBTYWxpbSA8amhzQG1vamF0YXR1LmNvbT4KQWNrZWQtYnk6IERhdmUgVGFodCA8ZGF2
ZS50YWh0QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHJlZGhhdC5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIE1ha2UgQ09OR0VTVEVEIGFu
ZCBPVkVSTElNSVQgcWRpc2MtZ2VuZXJpYyBpbnN0ZWFkIG9mIHNwZWNpZmljIHRvIENBS0UgKEph
a3ViKQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDEyMDktY2Fr
ZS1kcm9wLXJlYXNvbi12MS0xLTE5MjA1ZjZkMWYxOUByZWRoYXQuY29tCi0tLQogaW5jbHVkZS9u
ZXQvZHJvcHJlYXNvbi1jb3JlLmggfCAxOCArKysrKysrKysrKysrKysrKysKIG5ldC9zY2hlZC9z
Y2hfY2FrZS5jICAgICAgICAgIHwgNDMgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC9kcm9wcmVhc29uLWNvcmUuaCBiL2luY2x1
ZGUvbmV0L2Ryb3ByZWFzb24tY29yZS5oCmluZGV4IGMyOTI4MmZhYmFlNmNkZjlkZDc5ZjY5OGI5
MmI0YjhmNTcxNTZiMWUuLmVhZDQxNzBhMWQwYTlkMzE5ODg3NmZhYmY0NTMxMzBiZjExOTUzYmUg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbmV0L2Ryb3ByZWFzb24tY29yZS5oCisrKyBiL2luY2x1ZGUv
bmV0L2Ryb3ByZWFzb24tY29yZS5oCkBAIC01OCw2ICs1OCw5IEBACiAJRk4oVENfRUdSRVNTKQkJ
CVwKIAlGTihTRUNVUklUWV9IT09LKQkJXAogCUZOKFFESVNDX0RST1ApCQkJXAorCUZOKFFESVND
X09WRVJMSU1JVCkJCVwKKwlGTihRRElTQ19DT05HRVNURUQpCQlcCisJRk4oQ0FLRV9GTE9PRCkJ
CQlcCiAJRk4oRlFfQkFORF9MSU1JVCkJCVwKIAlGTihGUV9IT1JJWk9OX0xJTUlUKQkJXAogCUZO
KEZRX0ZMT1dfTElNSVQpCQlcCkBAIC0zMTQsNiArMzE3LDIxIEBAIGVudW0gc2tiX2Ryb3BfcmVh
c29uIHsKIAkgKiBmYWlsZWQgdG8gZW5xdWV1ZSB0byBjdXJyZW50IHFkaXNjKQogCSAqLwogCVNL
Ql9EUk9QX1JFQVNPTl9RRElTQ19EUk9QLAorCS8qKgorCSAqIEBTS0JfRFJPUF9SRUFTT05fUURJ
U0NfT1ZFUkxJTUlUOiBkcm9wcGVkIGJ5IHFkaXNjIHdoZW4gYSBxZGlzYworCSAqIGluc3RhbmNl
IGV4Y2VlZHMgaXRzIHRvdGFsIGJ1ZmZlciBzaXplIGxpbWl0LgorCSAqLworCVNLQl9EUk9QX1JF
QVNPTl9RRElTQ19PVkVSTElNSVQsCisJLyoqCisJICogQFNLQl9EUk9QX1JFQVNPTl9RRElTQ19D
T05HRVNURUQ6IGRyb3BwZWQgYnkgYSBxZGlzYyBBUU0gYWxnb3JpdGhtCisJICogZHVlIHRvIGNv
bmdlc3Rpb24uCisJICovCisJU0tCX0RST1BfUkVBU09OX1FESVNDX0NPTkdFU1RFRCwKKwkvKioK
KwkgKiBAU0tCX0RST1BfUkVBU09OX0NBS0VfRkxPT0Q6IGRyb3BwZWQgYnkgdGhlIGZsb29kIHBy
b3RlY3Rpb24gcGFydCBvZgorCSAqIENBS0UgcWRpc2MgQVFNIGFsZ29yaXRobSAoQkxVRSkuCisJ
ICovCisJU0tCX0RST1BfUkVBU09OX0NBS0VfRkxPT0QsCiAJLyoqCiAJICogQFNLQl9EUk9QX1JF
QVNPTl9GUV9CQU5EX0xJTUlUOiBkcm9wcGVkIGJ5IGZxIHFkaXNjIHdoZW4gcGVyIGJhbmQKIAkg
KiBsaW1pdCBpcyByZWFjaGVkLgpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9u
ZXQvc2NoZWQvc2NoX2Nha2UuYwppbmRleCA4ZDhiMmRiNDY1M2MwYzlmMjcxZjljMTk1M2U4YzYx
MTc1ZDhmNzZiLi5kZWIwOTI1ZjUzNmRkYTY5NDY5NzM4ZTQ1ZTFkYmY4ZWQ1OWE2ODIwIDEwMDY0
NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpA
QCAtNDg0LDEzICs0ODQsMTQgQEAgc3RhdGljIGJvb2wgY29iYWx0X3F1ZXVlX2VtcHR5KHN0cnVj
dCBjb2JhbHRfdmFycyAqdmFycywKIC8qIENhbGwgdGhpcyB3aXRoIGEgZnJlc2hseSBkZXF1ZXVl
ZCBwYWNrZXQgZm9yIHBvc3NpYmxlIGNvbmdlc3Rpb24gbWFya2luZy4KICAqIFJldHVybnMgdHJ1
ZSBhcyBhbiBpbnN0cnVjdGlvbiB0byBkcm9wIHRoZSBwYWNrZXQsIGZhbHNlIGZvciBkZWxpdmVy
eS4KICAqLwotc3RhdGljIGJvb2wgY29iYWx0X3Nob3VsZF9kcm9wKHN0cnVjdCBjb2JhbHRfdmFy
cyAqdmFycywKLQkJCSAgICAgICBzdHJ1Y3QgY29iYWx0X3BhcmFtcyAqcCwKLQkJCSAgICAgICBr
dGltZV90IG5vdywKLQkJCSAgICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAotCQkJICAgICAgIHUz
MiBidWxrX2Zsb3dzKQorc3RhdGljIGVudW0gc2tiX2Ryb3BfcmVhc29uIGNvYmFsdF9zaG91bGRf
ZHJvcChzdHJ1Y3QgY29iYWx0X3ZhcnMgKnZhcnMsCisJCQkJCSAgICAgICBzdHJ1Y3QgY29iYWx0
X3BhcmFtcyAqcCwKKwkJCQkJICAgICAgIGt0aW1lX3Qgbm93LAorCQkJCQkgICAgICAgc3RydWN0
IHNrX2J1ZmYgKnNrYiwKKwkJCQkJICAgICAgIHUzMiBidWxrX2Zsb3dzKQogewotCWJvb2wgbmV4
dF9kdWUsIG92ZXJfdGFyZ2V0LCBkcm9wID0gZmFsc2U7CisJZW51bSBza2JfZHJvcF9yZWFzb24g
cmVhc29uID0gU0tCX05PVF9EUk9QUEVEX1lFVDsKKwlib29sIG5leHRfZHVlLCBvdmVyX3Rhcmdl
dDsKIAlrdGltZV90IHNjaGVkdWxlOwogCXU2NCBzb2pvdXJuOwogCkBAIC01MzMsNyArNTM0LDgg
QEAgc3RhdGljIGJvb2wgY29iYWx0X3Nob3VsZF9kcm9wKHN0cnVjdCBjb2JhbHRfdmFycyAqdmFy
cywKIAogCWlmIChuZXh0X2R1ZSAmJiB2YXJzLT5kcm9wcGluZykgewogCQkvKiBVc2UgRUNOIG1h
cmsgaWYgcG9zc2libGUsIG90aGVyd2lzZSBkcm9wICovCi0JCWRyb3AgPSAhKHZhcnMtPmVjbl9t
YXJrZWQgPSBJTkVUX0VDTl9zZXRfY2Uoc2tiKSk7CisJCWlmICghKHZhcnMtPmVjbl9tYXJrZWQg
PSBJTkVUX0VDTl9zZXRfY2Uoc2tiKSkpCisJCQlyZWFzb24gPSBTS0JfRFJPUF9SRUFTT05fUURJ
U0NfQ09OR0VTVEVEOwogCiAJCXZhcnMtPmNvdW50Kys7CiAJCWlmICghdmFycy0+Y291bnQpCkBA
IC01NTYsMTYgKzU1OCwxNyBAQCBzdGF0aWMgYm9vbCBjb2JhbHRfc2hvdWxkX2Ryb3Aoc3RydWN0
IGNvYmFsdF92YXJzICp2YXJzLAogCX0KIAogCS8qIFNpbXBsZSBCTFVFIGltcGxlbWVudGF0aW9u
LiAgTGFjayBvZiBFQ04gaXMgZGVsaWJlcmF0ZS4gKi8KLQlpZiAodmFycy0+cF9kcm9wKQotCQlk
cm9wIHw9IChnZXRfcmFuZG9tX3UzMigpIDwgdmFycy0+cF9kcm9wKTsKKwlpZiAodmFycy0+cF9k
cm9wICYmIHJlYXNvbiA9PSBTS0JfTk9UX0RST1BQRURfWUVUICYmCisJICAgIGdldF9yYW5kb21f
dTMyKCkgPCB2YXJzLT5wX2Ryb3ApCisJCXJlYXNvbiA9IFNLQl9EUk9QX1JFQVNPTl9DQUtFX0ZM
T09EOwogCiAJLyogT3ZlcmxvYWQgdGhlIGRyb3BfbmV4dCBmaWVsZCBhcyBhbiBhY3Rpdml0eSB0
aW1lb3V0ICovCiAJaWYgKCF2YXJzLT5jb3VudCkKIAkJdmFycy0+ZHJvcF9uZXh0ID0ga3RpbWVf
YWRkX25zKG5vdywgcC0+aW50ZXJ2YWwpOwotCWVsc2UgaWYgKGt0aW1lX3RvX25zKHNjaGVkdWxl
KSA+IDAgJiYgIWRyb3ApCisJZWxzZSBpZiAoa3RpbWVfdG9fbnMoc2NoZWR1bGUpID4gMCAmJiBy
ZWFzb24gPT0gU0tCX05PVF9EUk9QUEVEX1lFVCkKIAkJdmFycy0+ZHJvcF9uZXh0ID0gbm93Owog
Ci0JcmV0dXJuIGRyb3A7CisJcmV0dXJuIHJlYXNvbjsKIH0KIAogc3RhdGljIGJvb2wgY2FrZV91
cGRhdGVfZmxvd2tleXMoc3RydWN0IGZsb3dfa2V5cyAqa2V5cywKQEAgLTE1MjgsMTIgKzE1MzEs
MTEgQEAgc3RhdGljIHVuc2lnbmVkIGludCBjYWtlX2Ryb3Aoc3RydWN0IFFkaXNjICpzY2gsIHN0
cnVjdCBza19idWZmICoqdG9fZnJlZSkKIAogCWZsb3ctPmRyb3BwZWQrKzsKIAliLT50aW5fZHJv
cHBlZCsrOwotCXNjaC0+cXN0YXRzLmRyb3BzKys7CiAKIAlpZiAocS0+cmF0ZV9mbGFncyAmIENB
S0VfRkxBR19JTkdSRVNTKQogCQljYWtlX2FkdmFuY2Vfc2hhcGVyKHEsIGIsIHNrYiwgbm93LCB0
cnVlKTsKIAotCV9fcWRpc2NfZHJvcChza2IsIHRvX2ZyZWUpOworCXFkaXNjX2Ryb3BfcmVhc29u
KHNrYiwgc2NoLCB0b19mcmVlLCBTS0JfRFJPUF9SRUFTT05fUURJU0NfT1ZFUkxJTUlUKTsKIAlz
Y2gtPnEucWxlbi0tOwogCXFkaXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coc2NoLCAxLCBsZW4pOwog
CkBAIC0xOTI2LDcgKzE5MjgsNyBAQCBzdGF0aWMgdm9pZCBjYWtlX2NsZWFyX3RpbihzdHJ1Y3Qg
UWRpc2MgKnNjaCwgdTE2IHRpbikKIAlxLT5jdXJfdGluID0gdGluOwogCWZvciAocS0+Y3VyX2Zs
b3cgPSAwOyBxLT5jdXJfZmxvdyA8IENBS0VfUVVFVUVTOyBxLT5jdXJfZmxvdysrKQogCQl3aGls
ZSAoISEoc2tiID0gY2FrZV9kZXF1ZXVlX29uZShzY2gpKSkKLQkJCWtmcmVlX3NrYihza2IpOwor
CQkJa2ZyZWVfc2tiX3JlYXNvbihza2IsIFNLQl9EUk9QX1JFQVNPTl9RVUVVRV9QVVJHRSk7CiB9
CiAKIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAqY2FrZV9kZXF1ZXVlKHN0cnVjdCBRZGlzYyAqc2No
KQpAQCAtMTkzNCw2ICsxOTM2LDcgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICpjYWtlX2RlcXVl
dWUoc3RydWN0IFFkaXNjICpzY2gpCiAJc3RydWN0IGNha2Vfc2NoZWRfZGF0YSAqcSA9IHFkaXNj
X3ByaXYoc2NoKTsKIAlzdHJ1Y3QgY2FrZV90aW5fZGF0YSAqYiA9ICZxLT50aW5zW3EtPmN1cl90
aW5dOwogCXN0cnVjdCBjYWtlX2hvc3QgKnNyY2hvc3QsICpkc3Rob3N0OworCWVudW0gc2tiX2Ry
b3BfcmVhc29uIHJlYXNvbjsKIAlrdGltZV90IG5vdyA9IGt0aW1lX2dldCgpOwogCXN0cnVjdCBj
YWtlX2Zsb3cgKmZsb3c7CiAJc3RydWN0IGxpc3RfaGVhZCAqaGVhZDsKQEAgLTIxNDMsMTIgKzIx
NDYsMTIgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICpjYWtlX2RlcXVldWUoc3RydWN0IFFkaXNj
ICpzY2gpCiAJCQlnb3RvIGJlZ2luOwogCQl9CiAKKwkJcmVhc29uID0gY29iYWx0X3Nob3VsZF9k
cm9wKCZmbG93LT5jdmFycywgJmItPmNwYXJhbXMsIG5vdywgc2tiLAorCQkJCQkgICAgKGItPmJ1
bGtfZmxvd19jb3VudCAqCisJCQkJCSAgICAgISEocS0+cmF0ZV9mbGFncyAmCisJCQkJCQlDQUtF
X0ZMQUdfSU5HUkVTUykpKTsKIAkJLyogTGFzdCBwYWNrZXQgaW4gcXVldWUgbWF5IGJlIG1hcmtl
ZCwgc2hvdWxkbid0IGJlIGRyb3BwZWQgKi8KLQkJaWYgKCFjb2JhbHRfc2hvdWxkX2Ryb3AoJmZs
b3ctPmN2YXJzLCAmYi0+Y3BhcmFtcywgbm93LCBza2IsCi0JCQkJCShiLT5idWxrX2Zsb3dfY291
bnQgKgotCQkJCQkgISEocS0+cmF0ZV9mbGFncyAmCi0JCQkJCSAgICBDQUtFX0ZMQUdfSU5HUkVT
UykpKSB8fAotCQkgICAgIWZsb3ctPmhlYWQpCisJCWlmIChyZWFzb24gPT0gU0tCX05PVF9EUk9Q
UEVEX1lFVCB8fCAhZmxvdy0+aGVhZCkKIAkJCWJyZWFrOwogCiAJCS8qIGRyb3AgdGhpcyBwYWNr
ZXQsIGdldCBhbm90aGVyIG9uZSAqLwpAQCAtMjE2Miw3ICsyMTY1LDcgQEAgc3RhdGljIHN0cnVj
dCBza19idWZmICpjYWtlX2RlcXVldWUoc3RydWN0IFFkaXNjICpzY2gpCiAJCWItPnRpbl9kcm9w
cGVkKys7CiAJCXFkaXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coc2NoLCAxLCBxZGlzY19wa3RfbGVu
KHNrYikpOwogCQlxZGlzY19xc3RhdHNfZHJvcChzY2gpOwotCQlrZnJlZV9za2Ioc2tiKTsKKwkJ
a2ZyZWVfc2tiX3JlYXNvbihza2IsIHJlYXNvbik7CiAJCWlmIChxLT5yYXRlX2ZsYWdzICYgQ0FL
RV9GTEFHX0lOR1JFU1MpCiAJCQlnb3RvIHJldHJ5OwogCX0KCi0tLQpiYXNlLWNvbW1pdDogN2Vh
Mjc0NTc2NmQ3NzY4NjZjZmJjOTgxYjIxZWQzY2ZkZjUwMTI0ZQpjaGFuZ2UtaWQ6IDIwMjQxMjA1
LWNha2UtZHJvcC1yZWFzb24tYjE2NjFlMWU3ZjBhCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
