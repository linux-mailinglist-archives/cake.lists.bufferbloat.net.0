Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 528F24409ED
	for <lists+cake@lfdr.de>; Sat, 30 Oct 2021 17:29:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 85A713CB44;
	Sat, 30 Oct 2021 11:29:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635607776;
	bh=oTJMPAwraXx+yERV/MhgdTHTQicJPOg5gcSLsU0/J88=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ht1GSZIlkJrgVMWzARNzhFOteTCR1eTr3xgq8gfQCP1A5Y0NrGbBOuqamK3KqtFD5
	 I4MO4xjYChys9XQBYYOyAUvoy7qMsBrD/+1mKai4beHG7YvfTBMq6QpLgKMINBmJ4m
	 IjQ7I/k40AOyDsfYD8Gc3fmdzUmGz85E7ltWb1orOcvOI/gMPYdcl8anuJkXAeWbdv
	 YAldsrEoy2MhnYEQv4wMqtMKrGmjd21cnZ0YM7xhgeBtWt3OJvqni24adq/QQGEqp1
	 I4wkD2uk7mEGqy3nZBpVogsHcYa5yTkBHEBdLk1nn/WWt4FKhzeDhAehgcQV5Iw/6X
	 nJa/mRo3wTA/A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 537C73CB38;
 Sat, 30 Oct 2021 11:29:34 -0400 (EDT)
Received: by mail-io1-xd2e.google.com with SMTP id f9so16084058ioo.11;
 Sat, 30 Oct 2021 08:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=LVFn3E4BJUrqZAuwO+T/gZ0DCg2h0l9TWcvXXS4EHTo=;
 b=P9+04rIjr9Ay6CgLuXXqDQj23jgpY7PBJHrJ59CyTsQzTGnpRslx+Z6VYWNDr4brfg
 AP4DzRDS9fs9taAlwN8e7QrGU4+wZy4FQqT8B74+EuAMFg6dAm+uurjcrt/8asrrvnm0
 V5hawx4KFyMzzf78/3VP202qeV6TXyPNDP+gUPVCQOkHSD6PVlR4/FDc1nFyW3Bppjlv
 yCy3WYmsfa3S4lAYH+aLbuMgp7ASDOsvXtyquDlUQu3MknZuAk11n/osJicaFmQFBY/K
 xVCJ1x1+JLs/cIOBTlqsI/Ns/tL0mBHjh5/fO8LWPG8VT+VvgZB6TTpcWYQ54e1RUuLg
 jggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=LVFn3E4BJUrqZAuwO+T/gZ0DCg2h0l9TWcvXXS4EHTo=;
 b=eALoli4ob5E260plQBUhj6Z7nXy86pI/L/WmETt/dQI75gZqOsljhAfZ6xM6W4kGvK
 DJCjftdtrqxvkq/jLT1D2XcMwrcerq6T2htRospdmfKjJIN8nUFUSmOPdK5Ac8indfWT
 NlxQuOsOUVyHd0IENDOqHf1L4DNGxW0G4/US9fhZ7S8oZtGMVddW1bnVEo8BZN8dIrv6
 WwvVgVwApwPiUS5oKDt0YDOsUCRpaQDCCppbITlRIPyLDtTLOp1FGlpjqjhkh7MtIq1I
 eaFSMCGDlrJ6OF/aug+xeXYVjOxPe+lHkawG/k2JvYtUzfqT6SvtI1ax9aw1DRbmmViQ
 A/vA==
X-Gm-Message-State: AOAM533DOL/ENhAWntQayF1/9b4h/GJPOFqyAQetw41mq2CuBJ4oSoMq
 iegEUv4wyiEoMZCMzf+ZNOqiDfsulRHiPSppLg7JZOMlDGo=
X-Google-Smtp-Source: ABdhPJzvDqNcoc0bzRg8evEW8zT0W2vBp3VBJsBw+NvxHgy5ukePSyV/V+9mnKOfM0fU2iG0AeSkUJNcdUS9taxg8mA=
X-Received: by 2002:a05:6602:13c6:: with SMTP id
 o6mr12497954iov.28.1635607773430; 
 Sat, 30 Oct 2021 08:29:33 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 30 Oct 2021 08:29:20 -0700
Message-ID: <CAA93jw4NWwvvRwiG__QVJbrcVZHkH1o-wtXpEnOU9cAuWaNrpA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net
Subject: [Cake] improving cake's autorate-ingress
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

SSdtIHZlcnkgZW5jb3VyYWdlZCBieSB0aGUgd29yayBvbiBpbXByb3ZpbmcgZHluYW1pYyByYXRl
IGVzdGltYXRpb24KaGFwcGVuaW5nIG92ZXIgaGVyZToKCmh0dHBzOi8vZm9ydW0ub3BlbndydC5v
cmcvdC9jYWtlcy1hdXRvcmF0ZS1pbmdyZXNzLzEwODg0OC8xNjgKCk1vcmUgZm9sayB0ZXN0aW5n
IGl0IHdvdWxkIGJlIGdvb2QuCgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRw
czovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywg
VGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
