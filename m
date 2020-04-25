Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D091B892F
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 22:00:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F1EC53CB38;
	Sat, 25 Apr 2020 16:00:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587844803;
	bh=tF6hHCz25AHduultq8I9pE2Gtt3C4mBQyJripBHL32c=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OUjW/wVlEhisNcWX1Z8oSom052hZf1b9PUSwD7YWKqKxfg0WXDKheSzNePmZaNH4z
	 BtWUXEB6bYexqT25/BsjhR0mOqzCzaIU2XLle8K+Sua6GeENihVpjbauSJzIBVFNit
	 QCAxZrJQ2WE9Nvgy5tsj4bGzq5gJLkJS1Q8AI+uD6Wp9K4zs0UHm4HLBc7AiZC1q3p
	 q9pDSTxh3spHmSY+bIFY0mQPM+PUx50TC73h9jauZLiIgQpoF8O7nKyc3dWL26pzu5
	 kDFK8DWEvUTFW05kTS86I1HvPV8kiZADO+7dgZzx4RXgPDB3FwVjHcUgGQVvmtf74/
	 K4U7L1fQpII2g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6CC4B3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 16:00:01 -0400 (EDT)
Received: by mail-lj1-x234.google.com with SMTP id u15so13498596ljd.3
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 13:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iZBF5KgHT5Y4ArFMSgBQQ6nMWdlsnxkefKSy41SDrTk=;
 b=MREzjW4dxjccqPMlKaHUv/rdzKOSEdj/E8cS6ANHyRvg0TeFcRY5jLnQeLQ9Isi63H
 FNFB7nfeATer1jNdQcm2SN2nXkMrADp1QkByll/DJY8xAGIFNG+kSB+vLtaFEmutR0Fh
 z6hR/9IkKF7kWt+nxKpSIUHIYdA7IIYyP2D95btlhh2DihapcBFKcA1B3wxKPF6Ymnu8
 MzBb/LmAf42tqOmh2HyUt7TmeZnJfHUiESg3l0jeyQD2yClhmaIDXyGNNvQcZ/yg3L+V
 hC7uvOMNTDZQGTCrCQ89yPadlMc/ChsTdO543CJnQj0JPhxuuy/jVkjywb5t9+iREC6K
 NvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iZBF5KgHT5Y4ArFMSgBQQ6nMWdlsnxkefKSy41SDrTk=;
 b=IkMEQgKarXSoMRqfDKYBeoathykvnB/zbHJH4F7B1MzLfpmv0uH6H7zvMqQFfaxK9m
 Tb95Td0tLVkUR08zwhZ3/ftAU+IzAehbsktXj0mFLlAYAt3KQah9IAzgga4Elsc9onK2
 wRsuVJ5CEjn8vdDSZ+n17ve45lY054jn8zgIofeG2cQxWL44zyCgfnswoWaosj7LT4yi
 7k2DY8spBTlyju+HiEbCb4FwLVW+ouXXq2z8YjMzrYlKhi37679w/QUAyqLZxbze9z3e
 QQ2y4syJAVXxHLlbJ5gJJPzd5IEEIBh0eHhZJ6W/b5QaCSFjnOawZlUjczWpJJvUzHvW
 0Ijg==
X-Gm-Message-State: AGi0PuZeQd9WyG6k8iP/X6U7oq2Al/oRLLFTJdlrEh0iNqVSiYsy9Ft4
 Q+3JqXuOlIbKLgyGv0sTKcQ=
X-Google-Smtp-Source: APiQypKI7aCgXtxZRFKrPJ7j4VoFrvR2K404Ri0//oPK7nY93AWQ1GzvihDjq5IaA0pmQM6MqVr28g==
X-Received: by 2002:a2e:50b:: with SMTP id 11mr9810380ljf.233.1587844800408;
 Sat, 25 Apr 2020 13:00:00 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id q16sm6633762ljj.23.2020.04.25.12.59.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 12:59:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
Date: Sat, 25 Apr 2020 22:59:46 +0300
Message-Id: <943FC0FD-211F-4ACD-9AF2-9E064408289A@gmail.com>
References: <CAA93jw71YdABJPeRkFDrzLGY2PtWy-zqaLoGrnFWuFhOPz48xg@mail.gmail.com>
 <20200424120317.4d3d3e98@rellim.com> <20200424120423.1f57def6@rellim.com>
 <CAA93jw7e6k4sxh2+5H-dSBmdUkA53=VxJu7FmTdrSKTsbP0rWg@mail.gmail.com>
 <20200424121344.2bc8e62c@rellim.com>
 <CAA93jw5i7ccwc3VwSKiNk9XL-FXHgwznxzCHUDytpHFDsNGfoA@mail.gmail.com>
 <20200424123005.64aef3bf@rellim.com>
 <CAA93jw5xygaNsqYb9z9cF00TpH=8cOSDzFGZJxrDW-SkQFey4g@mail.gmail.com>
 <20200424195745.72d725bd@rellim.com>
 <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] cake on linux 5.6 32 bit x86 might be broken
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

PiBPbiAyNSBBcHIsIDIwMjAsIGF0IDEwOjA5IHBtLCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFp
bC5jb20+IHdyb3RlOgo+IAo+ICAgIH4jIHRjIHFkaXNjIGFkZCBkZXYgZXRoMSByb290IGNha2Ug
YmFuZHdpZHRoIDE2MG1icHMKCkZvciB0YywgdGhlICJtYnBzIiBzdWZmaXggaXMgaW50ZXJwcmV0
ZWQgYXMgbWVnYUJZVEVTIHBlciBzZWNvbmQuICBGb3IgbWVnYUJJVFMsIHVzZSBNYml0LgoKVGhl
IG91dHB1dCBhbmQgYmVoYXZpb3VyIGlzIGNvbnNpc3RlbnQgd2l0aCB0aGF0LgoKIC0gSm9uYXRo
YW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
