Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0322B459B5A
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 06:03:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6BB203CB39;
	Tue, 23 Nov 2021 00:03:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637643797;
	bh=Nz8EZy2j9mvmoIAabyFarP88dluYpUMLpr5Snz1H3l0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LfnJgIuzkxAQWqCcfL0fuGRwhjQM1szEmTFW/P88upn93wmoQWC5VfXVNRQnrJLqE
	 XUtrTPTAo9szTOcNnbr262FGuplEcWkax2WrnpbGpuzib064gPyLRBqEDU1z4W8dnx
	 DN86c1xlnhOpfwqluwvyTCaTtjhh2G5Fx3eWtjJJ8B1ak3nTChOSDhKI3bmf2iVgr0
	 9x4Y0Q8dClbIBujVfItm+qwx6BsU1dSiAZUFPBhQmvuIgOuzIfpqSlDAqLf8Zn7DiB
	 AXM0PDU5l/ZFpY+8/2QSIRXlT58iVYn6QUzbuwEdZQteGtIT/hiX2REeGg/1WNo8mf
	 f+BNGS5qmcNlw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 48A703CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 00:03:16 -0500 (EST)
Received: by mail-io1-xd2c.google.com with SMTP id w22so26403948ioa.1
 for <cake@lists.bufferbloat.net>; Mon, 22 Nov 2021 21:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CnEXeRAiaVHD49Pj+JESBO6fT9eW5k2Pfbt2nZApRGI=;
 b=iSg39G5TLs1c7hE06Nu8jMCYN20LFahHdB1sJjltJMoBEOPCTVtlprRxMGXh9emi+P
 i8Cv6OWM5oEsCyvkkU8/boHVWnFRsRVXfKHuWT6tbgEB3p4sqZT0wYV+2V45uMeWaVHc
 wdVi2RM7f0Zv6NaJztMHUwGlflpbJrkqzIKSHTSPs9TPqZggOueK3+Ov/8YfPXdFodQv
 hHoLU+LWbQoFVU2ReEqmyoFybR7ww+paVZKeDq7QoTbCv+6HeSYm+ecWSdlgqaFGE7NH
 rtMBp+7NVubmhrNG0oxx2Sv9gnQCSRbsZ7wXXk6cHehr8wGPVK1b08oGFFX0+4urmhQE
 hlUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CnEXeRAiaVHD49Pj+JESBO6fT9eW5k2Pfbt2nZApRGI=;
 b=nDcsaIjLSvoKk/CGjhWCSDEVdcDZcpoO/HXB9iAuGCQWnss4sp9KI7/sOXlTAdLe2C
 4SvND3rQTRkbqbUCA1hHsOEAZtgTWEf3YgptXPbKQCVV42rI8Ih2pX/NWZWxgvghm4PO
 gSZejaEmC1yBIZzBp/6dQfclsuAo4K4VjqnQceN6gTRI7xk8VnCGrdD7QR10NIpq0XyO
 QbdB7+EeHfj4G9++YYMwb+PY0oRmvim8cKD8qsf8odKT9mR+I/TkzQIE0HJzE9NkoUpJ
 TmDQnJgczjkSmhHr2IAj45JZ2Wm6yTkFhbdETliyvpkdC1nDQurGkcOlNMai+VHAkX/p
 aFAw==
X-Gm-Message-State: AOAM530O12uDctewfQsxt3E+IqgbgcWPO8zRiAuLp77fjSgYy4DDHB2d
 7z3vMWLqHtpAbJUaPSu8DdPBN1T8lWcIIRhlGyx2KHlM
X-Google-Smtp-Source: ABdhPJzYlThSaluB2UWwDCajegQwy8XPrFHBbmHfDtgVXXQxr+K4bofDSryqRmciJeiL2XaCuAe4QMsOULiKkC9ce80=
X-Received: by 2002:a05:6638:160c:: with SMTP id
 x12mr2527650jas.60.1637643795258; 
 Mon, 22 Nov 2021 21:03:15 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 22 Nov 2021 21:03:03 -0800
Message-ID: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] tossing acks into the background queue
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

YWdlcyBhZ28gSSdkICh3ZSdkPyBJIHJlYWxseSBkb24ndCByZW1lbWJlciAtIGZvcmdpdmUgbWUg
aWYgSSd2ZQpmb3Jnb3R0ZW4gd2hvIGFjdHVhbGx5IGxlYW5lZCBpbiBvbiBpdCkgd3JpdHRlbiBh
IGJhc2ljIGFjay1maWx0ZXIgaW4KZWJwZi4gdGhpcyB3YXMgYmVmb3JlIGNha2UgZ2FpbmVkIHRj
IGFjdGlvbnMgYW5kIG15IHByaW1hcnkgdXNlIGZvcgp0aGUgdGVjaCB3YXMgZm9yIGFzeW1tZXRy
aWMgY29ubmVjdGlvbnMsIGFuZCBiZWZvcmUgdGhlIGdvb2QKYWNrLWZpbHRlciBhcnJpdmVkLCBh
bmQgSSB3YXMgKGFuZCByZW1haW4pIHVuZnJpZW5kbHkgdG8gdGhpcyBsZXZlbCBvZgpkcGkuCgpU
aGF0IHNhaWQsIG9uIGEgc3ltbWV0cmljIGNvbm5lY3Rpb24sIGRlcHJpb3JpdGl6aW5nIHB1cmUg
YWNrcyB0byB0aGUKNSUgYmFja2dyb3VuZCBxdWV1ZSBuZCB0aGVuIHR1cm5pbmcgdGhlIGNha2Ug
YWNrLWZpbHRlciBsb29zZSBvbiBpdAptaWdodCBhY3R1YWxseSB3b3JrLgoKQW0gSSBvbiBkcnVn
cy9pcyB0aGVyZSBhbnkgcG9pbnQ/CgoKCi0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1
dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1o
dHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
