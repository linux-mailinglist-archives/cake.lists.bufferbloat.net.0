Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DD741BAFA03
	for <lists+cake@lfdr.de>; Wed, 01 Oct 2025 10:30:13 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 78E4D724474;
	Wed, 01 Oct 2025 10:30:07 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=connectivitycap.com header.i=@connectivitycap.com header.a=rsa-sha256 header.s=google header.b=WGre76+V
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759307407;
 b=mHBT1Yy+iNOwq0ZGSlWR7V+jDZfvLa/8u3pXNgoOACiCs3e2OmQRw6sFR1f0iGnE+PA5n
 67J3/mS9cA1CoqgiUYoiPZ2aH/J5qzfgAw4/Dzko/2GIigtpBILOiQiR1SO4WttWlVVnmv3
 GwaET+LQIYzsf5p8qMVtWZJYgfL4Y00=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759307407; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b8UoMtiHBXEMvBPw8q0GOo89PIeXgFCl8Cg9R5jekWY=;
 b=dClC3jvgFFeHKS/1B24oaDznGJKxUw+kvhSP+QjYvcncveBnDsgaX27lDrwIx9CCODisB
 pljf2w8gzNFzHgsrtUq7IGeX9qutSA4e+Zkq8Fjy1je+SXI4xpv4nHQ5wIDmG1hcnuDI3BH
 Tzaex5IT42jKbxDpPM4Jbua0QCBDP94=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=connectivitycap.com;
 dkim=pass header.d=connectivitycap.com;
 arc=none;
 dmarc=none
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
	by mail.toke.dk (Postfix) with ESMTPS id 3FD1F711D2F
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 22:25:03 +0200 (CEST)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-271067d66fbso65790025ad.3
        for <cake@lists.bufferbloat.net>;
 Tue, 30 Sep 2025 13:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=connectivitycap.com; s=google; t=1759263901; x=1759868701;
 darn=lists.bufferbloat.net;
        h=to:cc:message-id:subject:date:mime-version:from
         :content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=guzszNxmyGBm7mEQ77YPkb5wKWkx8Qtfc+vdjAm5/rM=;
        b=WGre76+VYHWvKETm/hbl0EhFRLcXeYBj35Gxdyd1s3MKtpPv5h26Caq6PfbhgwaEJd
         k4VxoDPRhPYN6QHJzuRt2MsEa54lsTVKdYGGYlGn8/TVR4HwVYQITUZd+MzlgUn0TuQI
         ab0SmTy9jpvh1Bij8vc5F2yr/yKJHE7nVPS92a5QWE1s8g163rxFuqVsYojMEgEiSBXO
         XgEtoYt3DmrfD2swVh+UMzFLw7wx4wN0Ih7MDiXACsz9W+0ARfUl598IFzr4SjM/V3Pd
         giCRP2CpLzeOjTT9PwjveaBYXnt6CJgvV33AN/dtVSwc7W3T8CX8fYqWKsU0RCUhuYfE
         yvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759263901; x=1759868701;
        h=to:cc:message-id:subject:date:mime-version:from
         :content-transfer-encoding:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=guzszNxmyGBm7mEQ77YPkb5wKWkx8Qtfc+vdjAm5/rM=;
        b=RK36O5JPvD2Gw0pLBrK1sYI7NtRjr1DVnr3qQmI4oIgxXYRZ+kH/gxSrb+x/gBIsTT
         WdnrgPNL1nRLNAxnS4UTSbEofKROkTIudY/XBktzImQDiA7hq2MaygpuwXDU3sjVt72s
         5EXCNIRxoRlFcNmaTgGiBAuB2mgFpPLSMssmE5DbJCecysuy6LPVBWLz9VdH7g7bpvBS
         8iPzG2kA2NctbKm74yvBeJ/K3XoNgBjRWGh51hp2j0fYWEQQ9YV7fyinJqh2OE/eT41o
         3xMoncRE9jJKiEx+/V2yv6QDLvyrQB2Rai5bDpnMdtPUCHVE6+bSPVXtIrovklW1o/U5
         1Kpg==
X-Gm-Message-State: AOJu0YyRrhcJsFqmpt9M5xk4YSNMw02+OHw6DDPShE+KOEzo7GvIkx20
	nrzX8wX83BpGvQTqYqzqMXayFVmxrEvrkMzH+pu4q56+gejnCADZ0x92AjCcNLjQmw8SHoywWr2
	QF71A
X-Gm-Gg: ASbGncu8ZHJ3JTowZBI+S4MlcHOEdyNuush94ya5m0K22RdSXzvU6hVuiQg9o4Z7kZf
	0mTUOkCBBLX86dngdDCe+oFdb/Eou/oeNOGMj6DI141XE209pDAqTO00mt7HgcwzZrBDOP7XYXT
	UeywDJ3kKmJWV0oo8oXvBvU6fNBXznYl/EzrCrhhYjVlIxRY0xcRGMWmekp4QRmabTL7iolrW4y
	mrz1ei4wLRHs4RCRM1Zeuau0s3zrKzVxKJVQ+Q2jUmvsgX4x4LIZEH5CIskU4B8ZRE919GY36NL
	6M1JFoK/rqrLNSf0SOC7KNt4jKLO+EUtP+PsUaZyrCpdlfoXsIB/OIMHRrFMTjBqjSBj/G4LeQC
	8wmDda2+iVO7NanCt0jXI/qGi3xZ3y9OxdIiW3axw6Pf1wWtMzybVw/lvDwJ+hpgrj8qaGg9Kvj
	dLtTOCSKbE
X-Google-Smtp-Source: 
 AGHT+IH5tmHSheUoByJdBQb/jdZHglcNLdwxB2mBVZ0L89jJfpvWqxbZ21jcDp9tcaX6NRn/VyuQTA==
X-Received: by 2002:a17:902:da8a:b0:24b:e55:360 with SMTP id
 d9443c01a7336-28e7f298231mr12421635ad.23.1759263901203;
        Tue, 30 Sep 2025 13:25:01 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:c988:5032:b4d0:b4cc:55e7:33be])
        by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-27ed6702cf9sm166181325ad.38.2025.09.30.13.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:25:00 -0700 (PDT)
From: James Forster <jim@connectivitycap.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 30 Sep 2025 14:24:49 -0600
Message-Id: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailer: iPhone Mail (23B5044l)
X-MailFrom: jim@connectivitycap.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: TOOTNWJGJKPIUUUHT2HTMPDU2AFPZPMJ
X-Message-ID-Hash: TOOTNWJGJKPIUUUHT2HTMPDU2AFPZPMJ
X-Mailman-Approved-At: Wed, 01 Oct 2025 10:30:05 +0200
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V293LCB0aGF04oCZcyBmYW50YXN0aWMsIEZyYW50aXNlayEgIEdyZWF0IHdvcmsgbWFraW5nIHRo
aXMgaGFwcGVuLiANCg0KVGhlc2Ugc29ydCBvZiB0aXRsZXMgYXJlbuKAmXQgbXkgZmF2b3JpdGUu
IEkgdGhpbmsgSSB1bmRlcnN0YW5kIHRoZSBzZW50aW1lbnQgYnV0IGZpbmQgdGhlIGlzc3VlcyBt
b3JlIG51YW5jZWQgdGhhbiB0aGF0LiA6LSkNCg0KSWYgeW91IGNhbiBnZXQgY2xlYXIgYXVkaW8s
IG5vdCBtdWNoIHF1YWxpdHkgaXMgbmVlZGVkIGZvciBwYW5lbHMgYW5kIHRhbGtpbmcgYmVhZHMu
ICAgQmVzdCB3b3VsZCBiZSBhIGZlZWQgcmlnaHQgaW50byBhbiBpUGhvbmUvYW5kcm9pZC4gDQoN
CkppbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
