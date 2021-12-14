Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40430474003
	for <lists+cake@lfdr.de>; Tue, 14 Dec 2021 11:02:04 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2CDA33CB38;
	Tue, 14 Dec 2021 05:02:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639476123;
	bh=KU7XAziSRYOhORY661c3XSUGHSiLLsWQDCkq44M6+kU=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P0CYIYvXVRCdtd1selYFznWhrtfaFZmZacBG2MvylHcOT6VSmWid/UN1RnTfDztOP
	 s+L6zMBActuRRNZmpU5/RxGysR3Akgdzs8f+YYN5H+M+prtbeEmjxQIYBlxDP+zS7n
	 jYHiejzArvZtP3cWM+Y82rYx2QEC6yp5OjlrVJQMKUrtjvrgOC+IunVGXUU9PqJjIl
	 KsovLhtNhImemO8tBsQI7+eWg4M4VNBqEeg2ETG12wKKWd0tdpK94zty3MtuTR4hmF
	 eN1giGGD7AOCV+o5qriEb5641Ww95SnwpN6e+Sc0uUba8u8fnhCrqAZh7FD8dydRuk
	 ROKdbj3P73k8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4511F3B29D
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 05:02:02 -0500 (EST)
Received: by mail-lj1-x229.google.com with SMTP id i63so27536613lji.3
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 02:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eIhH5wekJwnXEqC4r3sajUgDFWGhUbBipQ45IvhAqY4=;
 b=Twhc4/QXbzaaYXkC0rR06a5Tj9MW2yfc7dMpLAHt/pcYdoauzj9UM9wV/THCZjJlSn
 TRMoj0xlOqjTsEm3U7RYqxftT46pjgnZskuTG5eHWro1Zh25KC5XGx4GNArAmzvTfbRc
 qBWJ76iJSJ/bqf56Ues5pvVFBqKjUmFtTCjfRCI0nZG7xo8nogsWZ26RMdlCNr9gbrlT
 cropAok4+ErsMNxBGkFlG7ivo/QiP84s5ui2NimGtyBus2sb7x1Bnzg9zgt91xZYGT6X
 Ul6tzWLxLb3OxV0Xnf61C/5nS+ww6Oz3IcN/yzs/lOI0g9xEhBG5dD3BZj69JOT5lnpE
 mWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eIhH5wekJwnXEqC4r3sajUgDFWGhUbBipQ45IvhAqY4=;
 b=vvhbAFsXgUbJwD7WL9gPRfOWYAy0VMKItXk0zj89K8ymvGbSMKWLsOHbaiUbkwAoCe
 6+t8RXxQF7OoBXCkxqL8ERk6sKzQcxyv4qeYA9yIY6v8LH8h+2TiYiNvzyxg/Ai0rd+0
 nMCc5/ZxXsrXDRaY8Zy46cji9E+J/Wsi7e6l4OkJ7JtyVaBoA2S+m6xeqruMLSDkJNDx
 ZiyQBHyTjJUkaHSXgZdbSKZiNLf+ZhMVxCFjlId9Znb7o2skgmE2Etphi1eWw5eo/fu0
 MQH80/AAvch2r7mPklymOdh8rnFfI8OWIGhcn8LDAHhwuRYS8kdviw68xfIU/gi+l4XI
 dvcw==
X-Gm-Message-State: AOAM532bVIUqP2//dVvtAoVdMcNRspkLX5QFLOEXZUTXlEZHwACamwdO
 Tqi2V2UJyQZzucOPtc8PzPg=
X-Google-Smtp-Source: ABdhPJz7A1bAOUUYxPjKuGDuB7OVVjWz6kgR24xddaO6MsgTEVuO4bBxPBkzwVkbpvBiHaI54xWYVw==
X-Received: by 2002:a2e:a410:: with SMTP id p16mr3989997ljn.81.1639476120985; 
 Tue, 14 Dec 2021 02:02:00 -0800 (PST)
Received: from smtpclient.apple (188-67-240-81.bb.dnainternet.fi.
 [188.67.240.81])
 by smtp.gmail.com with ESMTPSA id h17sm1773627lfv.62.2021.12.14.02.02.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 02:02:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <077B33B9-C1A6-4469-9614-F760A357BD1C@gmx.de>
Date: Tue, 14 Dec 2021 12:01:59 +0200
Message-Id: <C61E5D84-1955-472D-B203-B70EAAB3EAB4@gmail.com>
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
 <18098E06-CB62-4967-B604-268063392C35@gmail.com>
 <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
 <CAA93jw4Zm558c5hLQWmP+HAt-qAJogcT7HdEyiYyB50iL+y4Sw@mail.gmail.com>
 <89ECAB12-74A3-40B6-8C0F-D1AA22E40C71@gmail.com>
 <077B33B9-C1A6-4469-9614-F760A357BD1C@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] sometimes I worry about cobalt's effectiveness
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNCBEZWMsIDIwMjEsIGF0IDExOjU5IGFtLCBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxl
cjBAZ214LmRlPiB3cm90ZToKPiAKPiBDb3VsZCB3ZSBtYXliZSBpbnRyb2R1Y2UgYSBuby1lY24g
a2V5d29yZCB0byBzd2l0Y2ggY2FrZSB0byBkcm9wIG9ubHkgbW9kZT8gSWYgb25seSB0byBoZWxw
IGRpYWdub3NlIEVDTiBpc3N1ZXM/CgpJbnNlcnRpbmcgYSBmaXJld2FsbCBydWxlICpiZWZvcmUq
IENha2UgdG8gZm9yY2UgdGhlIEVDTiBmaWVsZCB0byBOb3QtRUNUIHNob3VsZCBzdWZmaWNlIGZv
ciB0aGlzIHB1cnBvc2UuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=
