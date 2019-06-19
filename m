Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E244C23E
	for <lists+cake@lfdr.de>; Wed, 19 Jun 2019 22:19:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3EB853CB39;
	Wed, 19 Jun 2019 16:19:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1560975550;
	bh=o2hapC9gY6YiONXm3nN/HWKQFdkkCdIHIgeDoN6B9u0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WrQktJdoySFoasE9OBz51oXXUuInbuk/AKT91BNsNali2TxFAxOfY1Ak5MVKVwn+6
	 YOQaOeP+x6S2hb7SFq7cRUS8fDNpIE40vUKOzikKnbLECBFXgesimoMJd1i/LrVbrg
	 FY51FTqex/iCne/HvnF2e4NS95ppWyertP7zrc2oEH8tG9dLWHV3X9MDMpIr71AnKd
	 66ivf7qxiNBOJyRw4gHzCRT8SwmIiSIXMALBZjGyDui5vbGi2gKusakACcnABme8SW
	 9apgW3UpzPzzFi7edArfwtNxFk8FBY2iQqt0Su2qcFDfuxTLAoVlmyG2bVhRxxZ/q8
	 CaKvxSWZwCNEQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C78C03B2A4;
 Wed, 19 Jun 2019 16:19:08 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id j6so830141ioa.5;
 Wed, 19 Jun 2019 13:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oiO5sHgbxe4ajEXIMC+OvCgvB477A32NiKayMxoQEoU=;
 b=kzlxgR/+/ZzEGpCg9LJPGZBUHojsF2AVpobXgDRqlPYg8QLiMf8V6WRJUabnKOkSMQ
 dRiy8jR/i3kaohJMN09QUbu/Jr/k6BZKbrqYi2XYLzOctsNPSjwHkOBAG/qs6vynO/qp
 gD25duVJ5Nt+BIPw+jwj6HKofFfiWk/N8Sw3Dz/r0UktAAL2v6gG00ojjs0uZ5bMcXAB
 FVD52YQ3w+CKCJONHrZi/W5R/rLEFIxhHTMcEFcH1HuS1EzMHrTvR5tjhFHEkTvVUpei
 WIncPcJtek9p29BoTaKyED1V721iliVuVfaLsEq/2Vx156Huvst7q8g0u8DdPNNx2dln
 JyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oiO5sHgbxe4ajEXIMC+OvCgvB477A32NiKayMxoQEoU=;
 b=RpbDC2gZEAYUPWmLkrDpsCiPvWw2ZVf2kjm4C/v99isFAvt/tBvAAwwJ712k/Da47a
 fceZUdcKRBYV6C6OIki7uv7y5CMi98spSJDSINZ0wQ5iJfHXucVXREZhVC/JTbhgYypH
 IzduTN7r9K9g7nlVIZpj/EQXI+nqWOV646J8S37siMadK0crj30XymXMrrjIwg9L55Zj
 nj1p28kvPp2K9ZcZXWKA2x+Z1LAyJE7qJS+NEWYNQs7DXrMX7oqhPmXc6xMx+IlZ1glf
 maHC2noNTzTLOmcgpEP/wYa0/EOVlMqP6b5NHGExSCcPsfXdZF0Y23Qzrvdp0dc9jcvI
 QRfw==
X-Gm-Message-State: APjAAAVzh0K26rhG6iOMVYQPqb0/nBqtoi9V/EsgU7l7UiKqkfrfmj5z
 BLLt0Gzb5x6I5clVgepvyPio0NiVjFvEhCALfs4ejw4c
X-Google-Smtp-Source: APXvYqwjnXDrSxkoQrEMm/rsYskWT+aUPnMTt/73YWvXvMCD7US7rtESA0OD4RfzR89b0+2rNsZBJUKsm5tK+lYRJrU=
X-Received: by 2002:a02:a384:: with SMTP id y4mr97201255jak.77.1560975548017; 
 Wed, 19 Jun 2019 13:19:08 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 19 Jun 2019 13:18:58 -0700
Message-ID: <CAA93jw4di9jKj69zCsJp0v4q_Uq41HfvWB9G7nFGHOR_5JGrAQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Subject: [Cake] It's not magic, but...
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

ZnJvbTogaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzc1ODM1My8KCiJDQUtFIHdvcmtzLiBJdCBp
cywgZGFyZSBJIHNheSwgZnVuY3Rpb25hbGx5IGluZGlzdGluZ3Vpc2hhYmxlIGZyb20KbWFnaWMu
IEkgdHVybmVkIG9mZiBteSBEU0wgYm94J3MgY3JhcHB5IFFvUywgYXBwbGllZCB0Yy1jYWtlIG9u
IG15CmludGVybmFsIHJvdXRlcidzIHBvcnRzLCBhbmQgYWRkZWQgYSBiaXQgb2Ygc291cmNlLXBv
cnQgRFNDUCB0d2Vha2luZwppbiBuZnRhYmxlcy4KCk9uIHRoZSBEU0xSZXBvcnRzIHNwZWVkIHRl
c3QgSSBnZXQgc3RyYWlnaHQgQSdzIGFuZCBubyBsYWcgc3Bpa2VzCndoYXRzb2V2ZXIuIFNlZSBm
b3IgeW91cnNlbGY6Cmh0dHA6Ly93d3cuZHNscmVwb3J0cy5jb20vc3BlZWR0ZXN0LzQ1MzgwMTg2
CgooQlRXIGlmIHRoZSBwaW5nIHRpbWVzIGxvb2sgYSBiaXQgaWZmeeKApiBpdCdzIGJlY2F1c2Ug
bXkgY29ubmVjdGlvbidzCnNhdHVyYXRlZCBieSBzZWVkaW5nIGEgZG96ZW4gdG9ycmVudHMuIEkg
YmFyZWx5IGV2ZW4ga25vdyB0aGV5J3JlCnRoZXJlLikiCgoKLS0gCgpEYXZlIFTDpGh0CkNUTywg
VGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTIwNS05NzQw
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
