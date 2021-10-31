Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B02441091
	for <lists+cake@lfdr.de>; Sun, 31 Oct 2021 20:44:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F22E23CB40;
	Sun, 31 Oct 2021 15:44:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635709486;
	bh=uZJ59F1A78HqKg9IDE8j4A0uxUNxe7A/PVfuJUVAlGg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P6agSHcj3mCP0+g27Ob47AELyAA9tBF7XO9Z4Ng0aJfkJsPuCyPpOfYZUbkChhh7n
	 30oGTGym0cKO7d0IVSHsk0rwcEEjDrsgYml62Zt8VXY3ncdfXqUA5/kvl2DAyNE15l
	 H/HYy5QKJ2uqMif8ouF2MA9wl9zDwqmN4ghuCuYca2XJaoGvSd+4D6zleSnGDGHGef
	 v/dE5IHfmo/w6FPKoLAjMEySYf1aaFhFQTw/MQeSFjNgk2yj48zs9iYGJRg6aFBe21
	 WQej4naXJBQ5mlz2PgPutE2v9kCKS2nSuLB0CQteuIGrgJI33OVHVoXHB8Sx61PuHJ
	 LbcCtljxc9uMA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DCAC63B2A4
 for <cake@lists.bufferbloat.net>; Sun, 31 Oct 2021 15:44:44 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id r194so19178055iod.7
 for <cake@lists.bufferbloat.net>; Sun, 31 Oct 2021 12:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=reRI5Zk/SYCVz/IAdV59IAkyQe7MLT1fLh8bi1007Xk=;
 b=C5UFGgk+o/fHOH0GZ8dpyEZTtnZ1A23Qzdi4BaT42GTY8/1eMvZuHztl2ZkWFxlSww
 7fshac8hX+4PwsosY8h04mpzSZe31sPZQQCuWTBI6BAv7kxwSRCtkeGg4eF9hXrKq2Gy
 CZFb5kDKU3eE2rl269lzAXoT2/sDWyie9KxHuYeqWF2eL/zlRqHrPp4JLv0sCmuDki3x
 DoMK3sOVe03vGUzJd+mcqxgjOTRASyiaKCpclbTGFmgUeTIXkdWt87EovYxnu6Vffd78
 zsZzfCQM+AAS3sgZeVS7wJVvvKM7xNEO+GJmbMN/a34rkksvVSHt9JYGwdFDpSPGmIyw
 f7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=reRI5Zk/SYCVz/IAdV59IAkyQe7MLT1fLh8bi1007Xk=;
 b=vyLcUQXYw28HMvZZQwNHN8au6uzLSMOE0bbFnf2HEnobcb7zPxt8bcW2v14m7D2Ghb
 gr63MVoOycv+cbzlLV36NWMjuoH0M4tFNoTIsNmki/3t40h5zvsACGlNbyF5wsOR43eK
 dC4fqkiwUIKDkLr1wWGi3r1UgsPQTflDblATHCZwu7Vg//fQYozEJk7IxwoC7F8KJO+U
 85ZE5JXXvcuG7r9FQmO9GKMaQE2S3cCB8efaCblZEDuVR5CBYidomwaYhd21CYhRkfmZ
 56cWOAliulFYcO+Cit6EHt3tDmFyWAlBTrAdo88JaoJta2QNvTTmQfH8iByOHrBUqhbe
 oZwg==
X-Gm-Message-State: AOAM531r7s+KdbFkvElSjUVuIQwDSIvAW6teziuDQDP++fZOizcnY5va
 +LYJAiygUOS5uoqlORY4mmsy1WhBLhyFBqdLFl8EV3cb3UI=
X-Google-Smtp-Source: ABdhPJyX9YTe1kdXCRp8XXjlo3xOVOEhoCWh8YNAJ4mJRJDrvZpiNazvDnf3+syUJoWbZj841Q22qE1fvjlQx2EIYFM=
X-Received: by 2002:a05:6638:1352:: with SMTP id
 u18mr1895569jad.104.1635709484235; 
 Sun, 31 Oct 2021 12:44:44 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 31 Oct 2021 12:44:29 -0700
Message-ID: <CAA93jw5XC0-Csj_yOCi0Cz4+4RUUDg+H5cSDvNhuw=oDTHZQeQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] thinking about policing again
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

SSdkIHN0YXJ0ZWQgd29ya2luZyBvbiAiYm9iYmllIiB3aXRoIHRoaXMgb2xkIHBhcGVyIGFuZCB3
b3JrZWQgZm9yd2FyZC4KCmh0dHBzOi8vc2NpLWh1Yi5zZS8xMC4xMTQ1LzEwMzcyMC4xMDM3MjEK
Ci0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBz
Oi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9y
ZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
