Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E38047466B
	for <lists+cake@lfdr.de>; Tue, 14 Dec 2021 16:27:10 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EC1A33CB38;
	Tue, 14 Dec 2021 10:27:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639495628;
	bh=+uV6+uAbgZps6+ffPF/g7bqYBYea9rO/xfv8v9RS+0E=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KRrSQqqz2ajN/+vTqvdisV7avghDBO/7Lv4PqjxkPvij4AF6O7dgToxUUEwrbirRT
	 aMQcfcaxF3cNE5e0wJWignXxhryBhaxj1A/3J2XFr7KZAECFHuyvWBCzIA03KRiha7
	 bHU8PzwPoS6paMUMpi9kmAdf1MbpU9a+nvkRknOmSfzJf8182V+hAxuwSYskSj2Lph
	 d4JspsyuLQ7+A2es4NeZMufusX3t6MYkRQ8wuBQF74HbUA4PUVeQd2OaQ8/K3o0JyD
	 N4qm/laMGicGrzXjcHYn4Og0HUuQJr/3LbBODEEqj6PuITkyi4pxl+LLimzv+RNU02
	 jxsmuqURpUC0w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1D6253B2A4
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 10:27:07 -0500 (EST)
Received: by mail-lf1-x12f.google.com with SMTP id c32so37558337lfv.4
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 07:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=nLWQaQTaT2GkHNOPPj9Np4Z6OKCjH6TNM2dgGrEbeyE=;
 b=FL0pyVzznirRjIS5jkoVelBREbiMYf4W8cWyD1qkJrWVDRynNaDR0Y0TPUFDEn8MR/
 /sRpXOn8tIuXhdz9+BsFPOAt5KtWsO3o2eKokNrEmIrVmVxZr1rjKxHfBU9bj0uopn2D
 cNTxzQ1BEi12CuAPGgenDEKOF4Y9CHe+yw/o/CHmCIkjCkkmiQngotEHVCCmYrH7S5On
 igoc3aw06rF++0tv3bPI4JJVmU1mrzGx/hrL1LQ2PBWifshchTciHuZ8cBNrbB7qgnXd
 AenFWNHnYtMuujTMARExBwnsqvxxW1PgYLl7JohWqSAivmcBz3E8mlkj68a1BWFASWdb
 zzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=nLWQaQTaT2GkHNOPPj9Np4Z6OKCjH6TNM2dgGrEbeyE=;
 b=ZN3O1+OSHg2a6SkJ+f9SdPTstsy8ni2pslnoGDhQeG1zSqgzpKhgaNI/mmNRocbPr/
 UesZPG6m/ueywRH0KrhrT8TtsGN63XC0emHwuWi+j3oji/JeGdXEooAsakeIibpxhLAZ
 6r2u/HZgCVWefh7OlElukvHzZ2qboFPreXLfCefzMVeH5ww1SPvn3GDVBOrAZLOLYi8o
 4l5R7FaoKBrfmZBqFBpL0Fi7D937kRWZqV7wiwdsv9s0k2xNEHQmdX1vWdjoHxA6fCo0
 wBVdclQVwPuBoDByFoNRXbIQy7HXANaa7a5BmjqORhJBJS+V1XonBUdtO9VkCWOYB0tJ
 AxUg==
X-Gm-Message-State: AOAM532NTuG2Mr1LyXwH6/xwyzuM9iqb/KzL7rqpGJdxtpL59krRLPSk
 7lIQWLNYgKykKpOpTfaBgZY=
X-Google-Smtp-Source: ABdhPJxPQYfPJMIPbbf8oUjDH6+iGOL63auZ3CZxChucvekXf02/atzuaC5uhZvMkg9NsdxQiHeaoQ==
X-Received: by 2002:ac2:4bc1:: with SMTP id o1mr5355297lfq.183.1639495625871; 
 Tue, 14 Dec 2021 07:27:05 -0800 (PST)
Received: from smtpclient.apple (188-67-240-81.bb.dnainternet.fi.
 [188.67.240.81])
 by smtp.gmail.com with ESMTPSA id p3sm11559lfh.124.2021.12.14.07.27.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 07:27:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <C61E5D84-1955-472D-B203-B70EAAB3EAB4@gmail.com>
Date: Tue, 14 Dec 2021 17:27:04 +0200
Message-Id: <80B322E2-FF49-48D6-8ED4-9D7BA0149AF2@gmail.com>
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
 <18098E06-CB62-4967-B604-268063392C35@gmail.com>
 <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
 <CAA93jw4Zm558c5hLQWmP+HAt-qAJogcT7HdEyiYyB50iL+y4Sw@mail.gmail.com>
 <89ECAB12-74A3-40B6-8C0F-D1AA22E40C71@gmail.com>
 <077B33B9-C1A6-4469-9614-F760A357BD1C@gmx.de>
 <C61E5D84-1955-472D-B203-B70EAAB3EAB4@gmail.com>
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

Pj4gT24gMTQgRGVjLCAyMDIxLCBhdCAxMTo1OSBhbSwgU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxs
ZXIwQGdteC5kZT4gd3JvdGU6Cj4+IAo+PiBDb3VsZCB3ZSBtYXliZSBpbnRyb2R1Y2UgYSBuby1l
Y24ga2V5d29yZCB0byBzd2l0Y2ggY2FrZSB0byBkcm9wIG9ubHkgbW9kZT8gSWYgb25seSB0byBo
ZWxwIGRpYWdub3NlIEVDTiBpc3N1ZXM/Cj4gCj4gSW5zZXJ0aW5nIGEgZmlyZXdhbGwgcnVsZSAq
YmVmb3JlKiBDYWtlIHRvIGZvcmNlIHRoZSBFQ04gZmllbGQgdG8gTm90LUVDVCBzaG91bGQgc3Vm
ZmljZSBmb3IgdGhpcyBwdXJwb3NlLgoKQWRkZW5kdW06IGVpdGhlciB0aGlzIGZpcmV3YWxsIHJ1
bGUgc2hvdWxkIGlnbm9yZSBwYWNrZXRzIHRoYXQgYXJlIGFscmVhZHkgQ0UtbWFya2VkLCAqb3Iq
IGEgc2Vjb25kIGZpcmV3YWxsIHJ1bGUgd2hpY2ggKmRyb3BzKiBDRS1tYXJrZWQgcGFja2V0cyBz
aG91bGQgYmUgaW5zZXJ0ZWQgYXMgd2VsbC4gIFRoaXMgYXZvaWRzIGVyYXNpbmcgY29uZ2VzdGlv
biBpbmZvcm1hdGlvbiBmcm9tIGFueSB1cHN0cmVhbSBBUU0uCgogLSBKb25hdGhhbiBNb3J0b24K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
