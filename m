Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 53520842429
	for <lists+cake@lfdr.de>; Tue, 30 Jan 2024 12:54:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4D1793CB40;
	Tue, 30 Jan 2024 06:54:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1706615649;
	bh=HnoSgm2Am72MbTahnNWYurum/Nw67Ab2CTRThTyNllw=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=nrX9emv3x1CDWwWPNFUDuaf1JYLOhOWdLguAXr/dnIUb+SrbhKTFnvHJjC/6rKsge
	 PgNKx9Eyvn5EiSsYl1o6b8LSgt+VJTj+pcHP+bYTsxLHNuD8jJKxz2SlSPlFwSvdfH
	 Df5nIlgdfwJVFnG6EtMWRWm/6d/gGD/4lAhw50RAiD5GESHjmjXeSEReTVpAqbIOw2
	 rhECc/j/zRdJHvimP2o4nF3slA8VSXCE0KC5JAiR/JPXqIZdQGqpfyLj47GOGw77Io
	 TD5lkksoh6CGGzPOAWIbXI96qFGrE4DsB6uIuPpIFrbpXays+cHlGLyuDAlmoH9JvG
	 4/pbs66ippt2g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7E5013B29D
 for <cake@lists.bufferbloat.net>; Tue, 30 Jan 2024 06:54:08 -0500 (EST)
Received: by mail-oi1-x22b.google.com with SMTP id
 5614622812f47-3bbb4806f67so2891648b6e.3
 for <cake@lists.bufferbloat.net>; Tue, 30 Jan 2024 03:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706615647; x=1707220447; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=N+yMdjmFSAbj448TgUps480U0xab4Nszuhe/3i/igYU=;
 b=Oq1MZWX1VZ++jhrqMS7qyp6MIB3YcbOEzpkIdkI2XLgwnV7qLlRfj1xx+Zu2PtkZuY
 Tj2Q+RsbzVQmsLBJETbcN2fjTYAlgwn73XC7/w3rnaecMtDxLNr8t0m8kUCHEsfibJ1p
 n6x1EvlTRlQj+aVQ3B4NjTR2wyOUX7PouuoKChQpTfgbObKZVVbQgAT03jEtIeI13RVf
 ud9kvdrjXMmkfrJmM7NOPF0NjdsgODwa+vyl7TxfaCrnAXjTtO62MqGJDajX/PQiK23J
 O3A5EO2KWWxA6FaJybVXiKTgGKPg7XtVjRGAdfzjkkebDfr2pPnPd7Z/W9Y9KmRuCQiI
 ntxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706615647; x=1707220447;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=N+yMdjmFSAbj448TgUps480U0xab4Nszuhe/3i/igYU=;
 b=gRFDmcfjL3Zb/rUKik0cw6uR4yT7KhZtUhhGaw7zqYc9VTr77Uozp5ITlcADEa3l9O
 mSKwY3H07Os6QHCJlQcEHEVqzLzqdlluHjTw0/pnpLZ3HGVVG/BZSnDkZBfzd/ojKZVW
 oTfavEDm46nNCzvCEgKJImvXk+X6IEi3VPxFpdywIPYgVl8XXwBGba65Mb7t8FT1W4pZ
 9C/H8NVZdReIQk8z9CVz8P4MyuOklCbcyqnucSe1u2+O5Or+MPJOKwgxEwTtnz6MCMG1
 fa9X2ZDAUPPtjRtLtTIjcQ0E/u7xRTJBz4+sDb9q7cvQUo+Tzew6pF1oOQ8VrG/Lix1h
 dU2g==
X-Gm-Message-State: AOJu0YwktnEU/4pw6WAQzvSKjyWUs1QoUHHboxakxM17tvwZXvccJjKK
 dyEfR7lakBJfxEdGdz5ILjpWanLEwsGYFIvUxJGZ34oCw4e+gokHPC0cnM6ipQ7HmdzJIMA1vvU
 9mDelIEYDHn5lfG0951XlFa+Q+TGCnIdRPEg=
X-Google-Smtp-Source: AGHT+IEXPKJWesy1LZlhZ8OvT3nfjM5EfPDfpWvj0Ts8DFZlwcKyTXapgAFpimA+vIRGMbh3zKhZjVk/kNmQAZ0SXMs=
X-Received: by 2002:a05:6808:2183:b0:3bd:da30:7df1 with SMTP id
 be3-20020a056808218300b003bdda307df1mr10275492oib.39.1706615647141; Tue, 30
 Jan 2024 03:54:07 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 30 Jan 2024 06:53:55 -0500
Message-ID: <CAA93jw4yAL8LOaD2nr0Fnx_WvzMBP=8sQEP8dkBnj4nFzuUwyw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] glados does tom-tom
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj10UXhJZ0pvb3FIZwoKLS0gCjQwIHllYXJz
IG9mIG5ldCBoaXN0b3J5LCBhIGNvdXBsZSBzb25nczoKaHR0cHM6Ly93d3cueW91dHViZS5jb20v
d2F0Y2g/dj1EOVJHWDZRRm01RQpEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
