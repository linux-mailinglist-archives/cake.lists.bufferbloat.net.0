Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B27B51B875D
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 17:25:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7F1B63CB42;
	Sat, 25 Apr 2020 11:25:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587828341;
	bh=XVifytRQ7ZP7JpiV8RFLEKDtPEFNi+zCrJNWe4fZJHQ=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G/0lHKirIDxiPdsPFBzG1HLKPh2cPEKmQLpuXFTZ5N7bs29orSh9aR8EQPkP/U9l5
	 I8qxcS8ngio8m91FwCyszONKNPAQDKdUTPxWjxcrQTjEuwxnqbP8OjeqmIR+ll42u1
	 rD2LmAGf+OLvedu//S2+/uh9z1hpQoAKFQ/NPwJi8XEMB1SaGrMYcs+pCmOBmWJ4Cw
	 5Boufi2NcoNd4DawP6gUC/v7Ap5d+WTmP01oRxdqS4ZhPw3WDOQihScwozyv8165q8
	 /tWVD8wwZ9zxM3ydMB2RGfhP7LiC1K2/2USGNURSDRDMr+PdmNc7P3fyb0NnsUpzV0
	 PjkUSMiX7IfHw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 16DF43B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 11:25:40 -0400 (EDT)
Received: by mail-lj1-x235.google.com with SMTP id l19so13004183lje.10
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 08:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AKKBeMbUWYUefxzBAjbmMYHwInKBITSGnA5mxUzTFFM=;
 b=b21xvlc/XOeFTEvJtXEmmCc4Ll4wgiVXY6wl3C7CFPyFBLBwwfWUh+gFWlBIsEOcpk
 pQx0/1E6JIB0v8e8gqcbkK87M1Gejct4RvGvqSW+8C45klhJSVlB98QLiE10sKoVwnqb
 2fYrf1FWEmEHDl9/WLr0rIGl6iuHpl2Q3IxSXh6xIHpO7o6bsN3443jAgjlI3ma9MNN3
 ypUDH3eWIyFJJcVxgW7rOwbZxXWSyZFMwp+nQSsKNk7gKIIH0wtAkQEYpA3h9qmjOtMg
 lfM3+3gjg4j/UGYC3lfiwAc1w6kPyKomwPHB+tuSox1PV+xoQqJaP/Y/Xya5W6HDYD4Y
 xKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AKKBeMbUWYUefxzBAjbmMYHwInKBITSGnA5mxUzTFFM=;
 b=LiRYOlxfJuz3iVaLxFXad36qh5BlSl29oCtJmViSH86lYelAIpoMGJ68hyiXhavPdT
 gvhxtAzZZ171gllKh2qSb/CmVLXilfp2ybUAldb7td/RRZ5+mQPSzJ2dV1hxRzz7TDaw
 qkoC4ezILth5tEZEkfnxKqrCBlR+yxoiso+LtCw07i7nwN69kbIUqRfYBWYGMlKskd5W
 9++BdPFwvVjor6kWunPNWDH7zw+I3KMuvDpUXsKFvLoxq+XACisR6m1XVHarco4aLNSK
 Lq8MeoB8PaiEmwCjenpYs44Ipmbxm/k8zFWfG+o9QDWkAVDFo8UZlxD0BjT0d5FVwd9o
 eGTQ==
X-Gm-Message-State: AGi0PuYeYWP0wQGudFlBiR/OcnxrJoM20pSqHjfZRjyqN7i6Cr24yQIK
 3CBW/XpxozKBSPiygPjsOITbm4hg
X-Google-Smtp-Source: APiQypJ8yybFAlfIBenUIytMH3mlvD7BPS0crES3JpDn4kMIJhYkYkjN+mYInhbY6ieh/8OK76Wl3w==
X-Received: by 2002:a2e:9c9a:: with SMTP id x26mr9451410lji.44.1587828338956; 
 Sat, 25 Apr 2020 08:25:38 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id h7sm6420454ljg.37.2020.04.25.08.25.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 08:25:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
Date: Sat, 25 Apr 2020 18:25:33 +0300
Message-Id: <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Cake tin behaviour - discuss....
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

PiBPbiAyNSBBcHIsIDIwMjAsIGF0IDI6MDcgcG0sIEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxr
ZXZpbkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JvdGU6Cj4gCj4gRG93bmxvYWQgZnJvbSDi
gJhvbmVkcml2ZeKAmSBmcm9tIDEgYm94LCB1c2luZyA1IGZsb3dzLCBjbGFzc2lmaWVkIGFzIEJ1
bGsuICBMaXR0bGUgb3RoZXIgdHJhZmZpYyBnb2luZyBvbiwgc2l0cyB0aGVyZSBhdCBjaXJjYSA3
ME1iaXQsIG5vIHByb2JsZW0uCj4gCj4gSWYgSSBzdGFydGVkIGFub3RoZXIgZG93bmxvYWQgb24g
YW5vdGhlciBib3gsIHNheSA1IGZsb3dzLCBjbGFzc2lmaWVkIGFzIEJlc3QgRWZmb3J0LCB3aGF0
IHJhdGVzIHdvdWxkIHlvdSBleHBlY3QgdGhlIEJ1bGsgJiBCZXN0IGVmZm9ydCB0aW5zIHRvIGZs
b3cgYXQ/CgpBcHByb3hpbWF0ZWx5IHNwZWFraW5nLCBDYWtlIHNob3VsZCBnaXZlIHRoZSBCZXN0
IEVmZm9ydCB0cmFmZmljIHByaW9yaXR5IG92ZXIgQnVsaywgdW50aWwgdGhlIGxhdHRlciBpcyBz
cXVhc2hlZCBkb3duIHRvIGl0cyB0aW4ncyBjYXBhY2l0eS4gIFNvIHlvdSBtYXkgc2VlIDUtMTBN
YnBzIG9mIEJ1bGsgYW5kIDY1LTcwTWJwcyBvZiBCZXN0IEVmZm9ydCwgZGVwZW5kaW5nIG9uIHNv
bWUgc2hvcnQtdGVybSBlZmZlY3RzLgoKVGhpcyBhc3N1bWVzIHRoYXQgdGhlIERpZmZzZXJ2IG1h
cmtpbmcgYWN0dWFsbHkgcmVhY2hlcyBDYWtlLCBvZiBjb3Vyc2UuCgogLSBKb25hdGhhbiBNb3J0
b24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
