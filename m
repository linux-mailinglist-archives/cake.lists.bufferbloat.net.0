Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B3D480F63
	for <lists+cake@lfdr.de>; Wed, 29 Dec 2021 04:43:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2825B3CB40;
	Tue, 28 Dec 2021 22:43:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1640749427;
	bh=B716R/+i4FgTAGACmlHSY9R7iQnezoJ4eaaKKMwC2bI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p/O24imqsdiLfZIQ70zC4DvTTo4I4HfC0U96zMXDrNE45ytdEaFpmBMfJwDT9TMuI
	 B09IZPFxRe6931zarwy74qrfbgqQUn1/DOsnICyTsklisJJZpqfHAA1Zv+GoD/NMOQ
	 dPpLGgH7dru7zJHQ0nNbe/88uLF+JqZ9OVsEqgZZJOV4ZytB7fbQ3k8ToF1UIEPpjz
	 MqUrCTTOsR2mXdLwIQ+ea+guR8OTHNvMHnVBAgYJ2GpOqFSHxXsTEBTs1fY5650yvQ
	 O9bUN/HJlhpGc+WHZWDUHLICUuML0Zz2bcj2RQi+UePM9rggHanHcXaGzwnWFqhznD
	 cKhlVpgkS2b4Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 84B2D3B29D;
 Tue, 28 Dec 2021 22:43:45 -0500 (EST)
Received: by mail-io1-xd36.google.com with SMTP id y11so19388576iod.6;
 Tue, 28 Dec 2021 19:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7CLyxWqwdN60OzvIZ61UXkFa9Jp4YMiBF/IzEKLPvFI=;
 b=Oh6CcpavPm/7wkgdwUejFLB3jhXBglXPK6PgXlxu+EwN6LvUv/gBREgiNTInhp9oFK
 rH5e/McoyvpHoVLkrE1CQIdUo5V8H/YImB5Xm8XzwBNSvQnf/kzDCi9NAeZds3oFPqnT
 tvuGeekffY/XQf8wfb1FuLPQ3Zrl6MlNFxGvfmSGvMa/mz5OSw4fSTTK8aDUUdjaNni4
 EnVbnz4q1iCK/B/zXLlRIR4uAEqtJKgmLemtD1LLLgtV/ap6C5OFxba97I7YkqA77BMT
 Q4lqMIK2RAg9VeRg1cdQX+Vixa5oyhbn7pKsLjk7voTLknqpGfXsI4lmrbHZizBdgZKH
 /Qgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7CLyxWqwdN60OzvIZ61UXkFa9Jp4YMiBF/IzEKLPvFI=;
 b=Xxms3dpsh5LBtgwWOZsqkLfuZiQbADFY40lDby84Sy0ju1f3i+GRX7rXr9l/b+wDOk
 oEt354gmNy6/bE18019smV0sNVAVjLAnAVghcOO6+uqkdTslKpMlV1TaG7WM7DLX1C8w
 uLniMtcPxM7dvLhj7elYcMx0/ElN22CEhBtJbSgrtppG1gzQnFEKeJM1JbGUGcsCLFVW
 Dyx/P2jcsIXW19edsjj6XOhKGjIXT32V8V9yS+d8tELVNN94FfVCnkKGOz8xdE0nzz/N
 KTZdKW0k9b7KFsXLLN8y4zrXsdi+eboP+dbuFdDhEaZXknVBaUnrjwMeUTcZ8R4JtF4R
 D4Ug==
X-Gm-Message-State: AOAM532HRL8DEWNZPsIRlMqIh/K1mAp2qyT1/N09SpgU8h5N74PUBx9S
 yeioJyJaYrSWkv6aMkIKon19P5CGMJYqgjvTuZvh+o5ZEW4=
X-Google-Smtp-Source: ABdhPJxhHLHtwIP1IkDnzoHkU57gJqZmcl4An0+EzfhqRK3FpXnZAtKKabylbe1bCj4dkdKhoaux5j2BwOUOLuxUFRs=
X-Received: by 2002:a05:6638:10ed:: with SMTP id
 g13mr8176328jae.308.1640749424582; 
 Tue, 28 Dec 2021 19:43:44 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 28 Dec 2021 19:43:32 -0800
Message-ID: <CAA93jw7kuRsj_3ddQc105+V3G9C3t+xXJ9j7v4NMfsReQTva+g@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] the cake-autorate stuff for lte is looking promising
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

aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L2Nha2Utdy1hZGFwdGl2ZS1iYW5kd2lkdGgvMTA4
ODQ4LzE2MTgKCgotLSAKSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRp
bWVzOgpodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3
d3cuaWNlaS5vcmcKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK
