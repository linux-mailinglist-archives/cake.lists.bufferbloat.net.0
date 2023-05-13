Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC7870194D
	for <lists+cake@lfdr.de>; Sat, 13 May 2023 20:41:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 48D113CB43;
	Sat, 13 May 2023 14:41:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1684003290;
	bh=99CuhYFrmuWcuubGctkodb7OxJ73gSPfyzDncOXNzZI=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=aTu4IHplmciRhXQee5ZpZMddeBv+jesybiYkQRl90nC5HkqlXcT/98meTNx6jFNnP
	 LgGgBCHkvlfw0hLMBTq1dou8Dqv+i3aIx4O1adBOhJrvCKw1ol0T0xF6guWEd/1VnO
	 yK2bYSEBihktvqbYSmbCaBDkrAea5bJEDxuF1GOMEPRkLc6GThitveRKM+KSVxp0Tc
	 pNwIFHPYlZtSV4d4J0nsTf0YQeKRdGPKOM+aGDrV7+0S56xPil14aCdi0reIanGpz6
	 YlX/uzg6tGuJ7Kqdgj9r36aPmyOfVoxxgud8isP22XdiTF3e4PHWpTK+RWtIMuEHF8
	 BuHWl/u3MJloA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9AB633B2A4;
 Sat, 13 May 2023 14:41:28 -0400 (EDT)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-3f4c6c4b51eso42693965e9.2; 
 Sat, 13 May 2023 11:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684003287; x=1686595287;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HKS9Hj955UTH04U1KhP7mCMcv8osZsETxOpbvqT56Sg=;
 b=Hl+Tu9VdkEYra0bqNsXj7yewte2fW0Y0twnyA8hVoFdpYNcfInDgCxG+TIR18vzdCb
 VtBqNW5A7lPTtm0kS2pyKHQvyBS1Ybyvpnlc1No2lVtxlI6lWEc0TZfx4nnTkJlUGS2l
 I1lr1g5KrTqnYCzh1QtJWkyCna+XFZRj57BSbHpmqUOcG1rK/4WnNvPrSzz43NjHuNPr
 PGzxqiw2CaBJDdzuoD2tdc+tsRxt7p55cEwJzVL+oLjCR7HYzssQXbwVscK7EB1ZW1W4
 Zw/kw1EDQPZfcsQYy8qxcwJHembpzO+j2MMJi4nQRmgzNSA+BQ4z65t3/ocb9Ua3cSZX
 iNaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684003287; x=1686595287;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HKS9Hj955UTH04U1KhP7mCMcv8osZsETxOpbvqT56Sg=;
 b=lpKxoVd1yLXtnn4LgZkAHgmj+QFmKgcITUQEo8yb18sekLX6dgFXhyNi2bOtTHDlQr
 pgGJ7pgClBaNJLXiDvjRRb8KEvLgrjbkUt+6Sp4QbqPTa7ezfkW8vxREpmvT0C4o6g0H
 KsCPi89sGLgl53N6Lw02Z85vpGeSJDPgbOk7bQCr1PCO74eZpHiP3y50kI4bArjd13zm
 N7DL8QRImCc86agO5I6ufAbxwedXG+f7PSbGt548Uff0z5y1dZaGqDz3vWh37DHmIKPb
 9FvjsrxLsygnrB6bgRJ07Xtz903rtvcrC3bGh5Os8XOzg7pb6qGZdUiSMJU3h4CVllnG
 Q6ZQ==
X-Gm-Message-State: AC+VfDwuktDJyj7hrCvLJjcOR9YxEEYgM2ZOlawjNOfGRFsXkmOtu2dS
 2XBuWNld1t8NfnANHuEHILOJzpsUDatagVCuCWQ2dmh2n+M=
X-Google-Smtp-Source: ACHHUZ5sYeGflyvAuew3ajTt2+U9IkQxe1oZTKTc44T9OrDUsWGukbinVikE9f+zRuaz99L7Pu98BbyoiAh7MH+bMsQ=
X-Received: by 2002:a05:600c:2198:b0:3f4:253b:92a9 with SMTP id
 e24-20020a05600c219800b003f4253b92a9mr14530785wme.30.1684003286687; Sat, 13
 May 2023 11:41:26 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 13 May 2023 11:41:14 -0700
Message-ID: <CAA93jw6NgYCGOf=dR9VT+w-DY=91Y5nHmcGcSKpL+DixmgHuLw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] industrial lte/wifi router with cake
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

VGhlIGhhcmR3YXJlIGZyb20gdGhpcyBjb21wYW55IGxvb2tzIHN0dXJkeSwgYnV0IHRoYXQgaXMg
YWxsIEkga25vdyBhYm91dCBpdC4KCmh0dHBzOi8vd2lraS50ZWx0b25pa2EtbmV0d29ya3MuY29t
L3ZpZXcvUlVUWDExCgpodHRwczovL3dpa2kudGVsdG9uaWthLW5ldHdvcmtzLmNvbS92aWV3L1JV
VFgxMV9UcmFmZmljX1NoYXBpbmcKCi0tIApQb2RjYXN0OiBodHRwczovL3d3dy5saW5rZWRpbi5j
b20vZmVlZC91cGRhdGUvdXJuOmxpOmFjdGl2aXR5OjcwNTg3OTM5MTAyMjcxMTE5MzcvCkRhdmUg
VMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
