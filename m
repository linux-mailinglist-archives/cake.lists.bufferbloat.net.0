Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE4A1DCC48
	for <lists+cake@lfdr.de>; Thu, 21 May 2020 13:42:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 67B313CB38;
	Thu, 21 May 2020 07:42:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590061334;
	bh=pXGqs4QWboZCpoh2ncbnSd49nqcecC7/u1MJhAL7dos=;
	h=To:List-Id:List-Post:From:List-Subscribe:List-Unsubscribe:
	 List-Archive:Reply-To:List-Help:Subject:From;
	b=QOqugRhj56m4iLlsAGhj95UGWPQIGBcBAE6drXe1ameIwo5m7M4Ad5F++TqzE1ucx
	 Ha3ESkJqAg8/Xw4CEpa3ukgCwktpnyZolUyBTXmXpDPyZXtHwJy/VsJNRlzBfp5zRC
	 XZ7/yJMb5zG/BeLvEG57+xD+oR+w3Xe3wV6+ZwDRkKcWoNfdOoNn783atCaWP9SuWo
	 CjqrHnrHzOsBTg8ZITTn/ZXZA7z4yOojIiBpApv0p3BCDdP9LAfAqodp8T8vMDVZ9l
	 MBRP8m32V9XqY6LVkn16oocmVjkoGXyC7r0hkZbLepesKJzOJzzmcNTnw3xJj/BuRd
	 D4AmxGnXdgrXw==
To: cake@lists.bufferbloat.net
MIME-Version: 1.0
Message-ID: <mailman.404.1590061333.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: "Aarti Nandagiri. via Cake" <cake@lists.bufferbloat.net>
Precedence: list
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: "Aarti Nandagiri." <aarti.183is001@nitk.edu.in>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: [Cake] Is target a command-line option?
Content-Type: multipart/mixed; boundary="===============5406138056886843130=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5406138056886843130==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <aarti.183is001@nitk.edu.in>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id E6F593B29D
	for <cake@lists.bufferbloat.net>; Thu, 21 May 2020 07:42:12 -0400 (EDT)
Received: by mail-qk1-x731.google.com with SMTP id b6so6794779qkh.11
        for <cake@lists.bufferbloat.net>; Thu, 21 May 2020 04:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nitk.edu.in; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=KzxCNq6WF5IC4pEwnwPhgcMW6e13W/6vfCGbTboYQ/Q=;
        b=GTBvMAg6nQwSYs0VReXj9d7MjBX6fLwfzPH/8x4xpZgZc2s+13yypqYOGxM+efzgya
         E1wc24N+L0SEzyZ0UGOHnvmeFRhL6sikHeZZMyj9Wm08F1vTNzNh74nrCJc8X80eRdl0
         +kCHqHt0mT+dIROvD9wHmxODWu4VypNBN1i7WeYF8wtHBBmJY8Bl+wy6P6CPZ9YxgH8v
         LItCElvXTlxXnTB10eGhCPjlZ1LLSj92cjHcFi2lzP4AwBg5Jm73fou/4zy1hkJQpO7M
         85vQZPVuXES9zKnrRqJmTK2Guf60119FZtJ5VNirNHHwwM9b3s6uTjTGnNPFrgth5Inf
         otHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KzxCNq6WF5IC4pEwnwPhgcMW6e13W/6vfCGbTboYQ/Q=;
        b=uE+vzsGJN0B2+M/N0I7ICPlR1GTAOAOaowWHFrA9Q+eW+JhjHFb5DHH3VykcuU0cIV
         dgPPh2+h/ImxMXF8aQgZJ0qQY7s2CbFvFUsCbzG+1BZV4+xyujf+4v9uleuSisvl1lSd
         GqeQdjkCHIALkI1J1OVXBga1pNJLYigpibM5r+b9bDAc6fxuG9l+JPTKdPTiaYWgm7fU
         Sg2wttrMJZMb2C8QtpBy2EEcJEvU2WrHCKeIJDtOjtp8txYb7atq6XSNLeAco2JpClCh
         Pkw6DKL8boBTV8lsvjBSqKKeXFkBvE4pAg7Jgl5nkyyWlsuZJ5LOGn2JaxyJfQhO3gxK
         a2Wg==
X-Gm-Message-State: AOAM532ouGu5j7Fz08N9MD6GGdzfbymyc7g3iYOnYzfNWw+dFs8WZvD1
	3S/bUHeQnraSKOdQULonoIXoVkDpU1l6hzkw1yHNynsXuf8=
X-Google-Smtp-Source: ABdhPJymUiyG76z5IzbGVW0POsLw7CmNemboNPvQnd/jrRTDsfYTrbLgwhFVb4/sqFKh/HFN7WfXGobcHwCfver+vCE=
X-Received: by 2002:ae9:c311:: with SMTP id n17mr9656174qkg.51.1590061332136;
 Thu, 21 May 2020 04:42:12 -0700 (PDT)
MIME-Version: 1.0
From: "Aarti Nandagiri." <aarti.183is001@nitk.edu.in>
Date: Thu, 21 May 2020 17:12:00 +0530
Message-ID: <CAEh=8GQ6EN-ouUjo1R6XCABeXsUrdyAytv-qfs6SoVPiDf1=mA@mail.gmail.com>
Subject: Is target a command-line option?
To: cake@lists.bufferbloat.net
Content-Type: multipart/alternative; boundary="000000000000dfa07905a6270030"

--000000000000dfa07905a6270030
Content-Type: text/plain; charset="UTF-8"

Hello,

Can I use a different 'target' value by passing it as a command-line option
for the cake qdisc?

Thanks,
Aarti Nandagiri

--000000000000dfa07905a6270030
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hello,</div><div><br></div><div>Can I use a different &#39;target&#39; value by passing it as a command-line option for the cake qdisc?</div><div><br></div><div>Thanks,</div><div>Aarti Nandagiri<br></div></div>

--000000000000dfa07905a6270030--

--===============5406138056886843130==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5406138056886843130==--
