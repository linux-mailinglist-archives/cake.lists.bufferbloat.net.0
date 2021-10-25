Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 199A8439E89
	for <lists+cake@lfdr.de>; Mon, 25 Oct 2021 20:30:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 605F33CB41;
	Mon, 25 Oct 2021 14:30:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635186657;
	bh=jV+RkkUGTLHOSEhDrPlZoxrsC+6rjWaTSIo+6++Og0c=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ljDK0FcRdWPC0yDCHtFaqVB1kPQ3PO7a+Tr3ZjCZzQvZqHCLWXe+cwztu9kaM0QgX
	 lXI9+jfc+oJOc3h0kKOzsk8YjzDXWv5Jb3U0dcZyXMbwNehmjO6EYK7vqb73S/IAns
	 RYUoZDEO70HjwIaepyCF6Ts1KIezrWaEyn60EdNlWaIbv7gNexJAnvvkdOQMfwIVXg
	 /lFY1oCGpxLL83unjMgFiN8lAiuiEGBcCNFlhn2YO2NTKTD6oVtzynPaLJWSscW6WZ
	 tSzadhbFgHMF6Ipps74aFDPtB3mRkqCwbyyyqTdoXOHYdSCitJs7R0wuYZd3JouxKo
	 kGLy9xAKoLJlw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 519B03B2A4;
 Mon, 25 Oct 2021 14:30:56 -0400 (EDT)
Received: by mail-io1-xd29.google.com with SMTP id p142so16894634iod.0;
 Mon, 25 Oct 2021 11:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=leSZ9KH7mdlDK8lkuhse+Khwo32PynefOeS17QD4+Bg=;
 b=iLn/uPL1egwOFsVbMnEve7eHr9qF7EEGn94J5x7MrZNHP2GWbuOltK1KLrdrg7D5Cc
 kvjSBoukrItTzk1yrYYVbzEshKSG1VBjldMRExwMxGz5tUikYtLBfCtUdf/TVZU84wwe
 Yxk4po5ywwXXbFtOy5uKoy5XiRR1NVK8UVjwRTLsbr/2r7HzWfTvUQcEV3ml8k14UQ/4
 1uV0tyLEdcBawYMqrcMULHPJI2MabBQGAeZ6T2fpwG7jA6lWV7J28j4MjUx/zJN3/NMV
 7w6VVfiSqVfLo9BwmQ4e7RjaAFe9KxxK9cG4zUXvKvLYxlUxN5J+Zj4+Jx1g7V4pmhyy
 72Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=leSZ9KH7mdlDK8lkuhse+Khwo32PynefOeS17QD4+Bg=;
 b=S69RWbmfkVMUFMZCbDJ12kHMsVpVtvVqm+QuXg4Ao64b9tghw6fcOcqGH6E6k+MyWP
 QQoEYj/7buYsy9UIU3ilXe7jb7x9SB+yyFUWshRIS9nDNHLPfW8GLyBYLlycXtIinv6w
 i82tKC6t3jeKsDE7zTidG/0UuOorSTWbLMsosDzinbRlMtLPwT7lBNRFCtArzUiWC4zF
 B7lNukF8fzSh/0JPiI5LAcc4/ZHUSA/7h8MEqVPFoAqK5ovKFgDwwzrX3b52uYgyGbyk
 8Iz35VDofOTmwmGLlIFn2pGFhVncLnqvmyPNcK2YIoiB+jjjG7NqWaxwxsZSOIZYmVJH
 Js/A==
X-Gm-Message-State: AOAM533cMBs5QNKGaspZaZx+E7g/riLO2AIAXn+MgL/TZs/Q+2gF3Y0r
 XCqwR9KQz8WBw8LGfiVbYKJ+X/HtAecA6fPkQyhHf368kEM=
X-Google-Smtp-Source: ABdhPJyHtj1PGikg9V92UbTb5vfo6r/+kmFnByA8M420vUXvpWmh6yUOeBdsLfcIavA7YBELIlY32u8W1kBQ6tIsK2c=
X-Received: by 2002:a05:6602:1504:: with SMTP id
 g4mr11441719iow.133.1635186655341; 
 Mon, 25 Oct 2021 11:30:55 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 25 Oct 2021 11:30:43 -0700
Message-ID: <CAA93jw5=8SqOvXdCSGqe5=ABsemMPavqnQ7W3wTvVHBDDWY+QA@mail.gmail.com>
To: ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] ack frequency in quic
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

aHR0cHM6Ly9kYXRhdHJhY2tlci5pZXRmLm9yZy9kb2MvZHJhZnQtaWV0Zi1xdWljLWFjay1mcmVx
dWVuY3kvCgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0
dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExM
QwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
