Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ADE4C5150
	for <lists+cake@lfdr.de>; Fri, 25 Feb 2022 23:13:55 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8BB4E3CB38;
	Fri, 25 Feb 2022 17:13:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1645827233;
	bh=iZLfy0oDfRhAB/c3v4iNnwVqOYVN3/g9Ibqg/4t/O0s=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VRriQGK4Pq4FuxK+MozODnDL0myWw6XZBNMo7PC9M62QTahco3a9LfF9Um51W9X1G
	 un2FkpF8kqb/yVBI52CM3KmJTCH2qZ+rzRNAeAkm4PqTGVZguj9Uj/Xd0Rsu9MT0po
	 btQLhmt/nU3yHMyEXvnR8RKLgjcxybV7OaAxvYky8fIJvSM77PBXmaOjhK6IQN5s0p
	 XAfEPTvPCE0oXWM7gey4I3pzfoBna8cW5aiFYYAG69vLDiXIJFptNKbe8cem2qlaWP
	 Ouq6dyeZccaPJF1dYZBaRqqAU/YaHGoeFphpfPxc1cKU6y/Kd4pWTIjbUuSoe4xyDB
	 sjyW5i6k4T7yw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com
 [IPv6:2607:f8b0:4864:20::933])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C94BA3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 25 Feb 2022 17:13:51 -0500 (EST)
Received: by mail-ua1-x933.google.com with SMTP id 60so3101733uae.1
 for <cake@lists.bufferbloat.net>; Fri, 25 Feb 2022 14:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=NIKM/Gu3ZvGmtljjEn8Eh22oe0C5K+bRbFB+zx6sSHc=;
 b=VEV+AHX2uVh1AZdsD+4p4RiziQbFU5ExJZTUyuc2A5GfdXB/pwuBPG5WRI5RDXVozZ
 +c4jghDUmNpoJvoaLmvxmQIakD/2ZE/QQ9Myms6e/WG+fpXI4Prxscj2QMgvcfzP29QT
 WsXb8Cuo6ySyFpNTJzCc06IZ4mVWg9glH+0AgFGqcCOMfhY5aQaTklWy3u2pS0tucrtV
 CDjBOqVrOG7X410kOcb8MKaHTaonQdA2YAdMNzvm8w5PERxtmBLqs1At5/QfrfCCNjib
 BwnzssmZ2sgynGNGWVkmapjRMIlD683NPgh/Ujfepqa9sXAXxwHfChRxiPi36FB2+MV9
 L6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NIKM/Gu3ZvGmtljjEn8Eh22oe0C5K+bRbFB+zx6sSHc=;
 b=YhTs+ZmFfsL3YJLKqcumHZ2FxJ2C+xDHy4sT2l26g/0XOPaps16RdxPETqguiSOdeN
 LHDUUupMvWccN7iyTqFhVmLf0v33TmVJ500klQABtwAW4PMqfbZ50sGGuAYoNOxilahS
 VvYy0rhCpWeDTK2fJJrfuu6sKJeWpQDgXCnkKatJKqh/F41lXUgUegns6rrQ+J0fbS/H
 HHn8QbQO5FQn3fTJ/6if04GrI76/kw7UakdVQyoOE3v7Wn6VQZJDGKmjRZ0xWLNiYscR
 cRqJjHEtPKnHNDrMiXuvb0ksVNg+WcXREe6FoT5CEZfVJkL4casRoSwNsExF2L8DlyZi
 G8vw==
X-Gm-Message-State: AOAM533YkeIIKVrWezdDkAVwFZulab+a/bRkInkJ1MQNsDKQTKu/Q9FX
 JzeG98cfcVnCirY3EPzjtQpX4+fB+FDaAIHXhoRoia74
X-Google-Smtp-Source: ABdhPJw1i4BBoye2jXqZZrTfkoBnticx25cK08Qi3jHhBT/ArxPoxbOPN7z8D6FRxDWRlN+NtPdqmuCdNCYeQauOFT0=
X-Received: by 2002:ab0:64c3:0:b0:343:affb:a63a with SMTP id
 j3-20020ab064c3000000b00343affba63amr4441110uaq.100.1645827231273; Fri, 25
 Feb 2022 14:13:51 -0800 (PST)
MIME-Version: 1.0
From: Jim Geo <dim.geo@gmail.com>
Date: Fri, 25 Feb 2022 22:13:40 +0000
Message-ID: <CAD9MmSd=Wxu5qQAdFwrNEf4guHt7QMC5zkcd9_kCFAZsuXigQQ@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] cake ingress switch
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

SGVsbG8sCgpXYXMgaXQgdGhlIGZ1bmN0aW9uIG9mIGluZ3Jlc3MgYXJndW1lbnQgaW4gY2FrZT8K
Q2hlY2tpbmcgb25saW5lIG1hbiBwYWdlcywgSSBjb3VsZG4ndCBmaW5kIGFuIGV4cGxhbmF0aW9u
LgpEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gdXNlIGl0IG9uIGFuIGlmYiBkZXZpY2U/IChzZW5kaW5n
IGluZ3Jlc3MKdHJhZmZpYyB0aHJvdWdoIGl0KQoKVGhhbmtzIGEgbG90IQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==
