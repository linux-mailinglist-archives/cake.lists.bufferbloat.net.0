Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF811E98E3
	for <lists+cake@lfdr.de>; Sun, 31 May 2020 18:39:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9F9633CB38;
	Sun, 31 May 2020 12:39:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590943148;
	bh=TgHzrKJunfXnMzlGh+QYb7Oda3JUAfBJXzsUwF4pvh4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yr4fgv6d+kGMeggMS9wDkL521G113BSSGw6ufTL/u3iDC9S7cxjGI3nxfynu1YbAd
	 3QpLQ9Qoq+7Um2Rvs3hd/iRvQ4KxMVGvRGlRyIQxlaP6dLBzg8cpjs+zv+aux99KM7
	 NbEdeJQQc4cws6+liZIuS733g/50h5+7IsXvuqY/Q3gxITUGJwygTkx64KyWIGYLNG
	 oShPwljc0/idw5A0niJbcbDfiv+Is6TJKAaw2mMvgKvDATvmMKq/PhmGdxvy5GL/zL
	 MZuk8uS6vssgzZLh+cKqZANlxNGQoJjJGecFkMZwMw9cXn92n/arK0JRrKgOPp/bHH
	 RIiyGHD9+kdKA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C253C3B29E
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 12:39:06 -0400 (EDT)
Received: by mail-lf1-f53.google.com with SMTP id r125so2500547lff.13
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 09:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5PqIVDbhb0kvHEtWyNP2CPL9vTOPs2f6j0ZqwNtB5NI=;
 b=nBVL8UXfRNB54h+Y33qz+7c9ULZlFeuCNwwyxzLh1o/RIwPcTkFeoTPXGObYmJswRc
 vJ/aKD6PRZrNR5Z3tOlepNJNLyY/bJpU8n6LOSFnYIAaHoy5KiscwWRxO88HLHx1VWZi
 +aImYZcIBuV69UmSTHi00Yb/krpnqE4RZcsSXLgU4NZTw9o8opIm8xuY4B3qyk27CbSf
 7+QIcDWRvQjQrMy3TAvj32XnCurC9SKm8ay5s3B7cQTDDmDRnsAkpndiglPX1kpB9Vj2
 V8V/0MlinUDr3FrLfGA8fq3VdS5qqvCKvsMgsIuMh7AkKWqTTD0TGglGyejDQ6vhG/HD
 IZxg==
X-Gm-Message-State: AOAM530bpcRXGR96E4CGtfPKQeVkdgZXypP+3LQkBxL34GcbSX8a+I1Q
 WbQgsCi/KqTxzC6YnxGrgfwPVvigJNkV6ghVU7xPZUFy1FU=
X-Google-Smtp-Source: ABdhPJyzPX4dhLTlPcYZ+j2ha5BFWJyt0HPBAFzUqe/ks+NhR7+eQb+8ZIjweAUvFgf8/XP2dr5EugWMuG1WNND/8E0=
X-Received: by 2002:ac2:4562:: with SMTP id k2mr9374564lfm.5.1590943145576;
 Sun, 31 May 2020 09:39:05 -0700 (PDT)
MIME-Version: 1.0
References: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
 <30B03A82-420A-4A9A-899B-8549692AF9DC@darbyshire-bryant.me.uk>
 <2BE61C3D-EED3-405A-A7AF-BA7B7B5B8B03@darbyshire-bryant.me.uk>
In-Reply-To: <2BE61C3D-EED3-405A-A7AF-BA7B7B5B8B03@darbyshire-bryant.me.uk>
From: John Yates <john@yates-sheets.org>
Date: Sun, 31 May 2020 12:38:54 -0400
Message-ID: <CAJnXXogEindF=KvVOZUVa1VeZGDVA8hCNfaBAmh6HkJ_sjwPZg@mail.gmail.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
Subject: Re: [Cake] Playing with ingredients = ruined the CAKE
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

S2V2aW4sCgpJIGFtIGN1cmlvdXMgaG93IHRoaXMgZWZmb3J0IHJlbGF0ZXMgdG8gRGF2ZSBUYWh0
J3MgcG9pbnQgaW4gaGlzIE1heQoyMHRoICJub3QgcmVhbGx5IGh1Z2Ugb24gRUYgbGFuZGluZyB3
aGVyZSBpdCBkb2VzIGluIHdpZmkiIHRocmVhZC4KCi9qb2huCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
