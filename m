Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB3B42E7AF
	for <lists+cake@lfdr.de>; Fri, 15 Oct 2021 06:25:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C73523CB59;
	Fri, 15 Oct 2021 00:25:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634271900;
	bh=VqPIRd4w7tGd8OHmqwpnpQ2rUINJA6uUCpqJ+aru3wI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eQV6z9HehQH8zC/9lVgEuMbfSpTMbU+dCACtMeYuWyG17m8FHy1fto0CqdxI+zGaL
	 L8iWG4wR7svTUizzZ1+Qwm1LGZQrUu4jVXNzNPac9jEedab77b+buxQggE3Qn58shD
	 lQyipFELHmw697atM2cFBpicGUAYQjRdW+Rc58j21VrhZ9uvhynmCBprXIx8aw4l+t
	 BEr7MSekRxrGjHonO8CtO+azMqD08Q5BwIKt9yn+zvVhlNEDYfKmt8OZS0z012lvuR
	 eH0TUGotAc6XywPvoBzIdtC26XUMuMIf5cK/Fs+kSHmqLk/6vcmi2NnuywPVDg+MX+
	 7rnIsuh1h4NlA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4E1C63B29E
 for <cake@lists.bufferbloat.net>; Fri, 15 Oct 2021 00:24:59 -0400 (EDT)
Received: by mail-il1-x134.google.com with SMTP id w11so5818813ilv.6
 for <cake@lists.bufferbloat.net>; Thu, 14 Oct 2021 21:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oa0MxsLhSDBU7Xrz7lRYEgXi8+Vfkr7G1kogTr7WAPc=;
 b=aSZwAOvD5sUZw8Dd6KnuR8K27hIBx0afsuqfUT80q+IblwzcIOSAj0L1woHmtf1c/U
 qgcFMxba4fUZND8rt12KK87segC38QE9TDwj51+wO9Tp6UuOihnpO3MOZvgs9YHgvjUB
 97O4JjJu3BsoVRJZXb5JT1j/BrMLqIuh/IAK95o4OKauYrgdUWf7o9/lKri//FJz84Wl
 nNnQMFRhEaZ/euJvmTRFy6IfY7jpjcuKOaMuigZU8GR2YOP6sS6O0pFffSreMHakzedb
 kVf+b/KB16QEaFH4JkGMT364vC73316oPY94fWcPTDAuSfseJG9McDzb5hqSbWsm0cJR
 Uirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oa0MxsLhSDBU7Xrz7lRYEgXi8+Vfkr7G1kogTr7WAPc=;
 b=0D1dWOtyOu4SFbv5wUNaKJlNQHL0cBpyN0G6xswoZfq3ciutihMz+3RHUFuia33+Ui
 YYR7Nu1/tCcn4E+YX2m+6jQ+PnsiKmliLrvDJ/WXd7vdJyUtYf7T/bUV2gRUAQtRqM1j
 99z2A65TXj3ZqX05fe07GqdsYWEvWlKvncvoBfbinpSeZg/Eod7byuTYv6fBjRodcAux
 Lwik5ijfMF6W67LMDYv1eN3YaJKfiE0NSmLdp/gUVLBx8ElqFYk6HH0WeFXfKBHSXgxb
 XSZg4JSQgz8uHLBIXnYxRFkk6/k+RlCiG1zhbBxk4JAu7ef8+5eQdEeh9ovX+Rv+MNyv
 BRYA==
X-Gm-Message-State: AOAM530SEnYhnrD9H/pzPXWZ6LPFcnmg9zo0gPt7DCC6IRMe2ivxBRhp
 slk0YAD0hu7+oY9d5nCCdjEmvbJ591O87Kksq2OdAUKwlPI=
X-Google-Smtp-Source: ABdhPJyScO8f5X95Us2mjdCbuPlYK8nKcXvZqmJ9GBhvTwAtI4zKErlwiQIqkUeu7C8rz+9+yFIqaueMwYwlXQueNQQ=
X-Received: by 2002:a05:6e02:c11:: with SMTP id
 d17mr2263147ile.25.1634271898293; 
 Thu, 14 Oct 2021 21:24:58 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 14 Oct 2021 21:24:46 -0700
Message-ID: <CAA93jw6XGODp7fYEFpJTR6LH6Fs2pcCpj_-NyHfZoNkqSK6SBA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] has anyone tried untangle?
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

aHR0cHM6Ly91bnRhbmdsZW5nZmlyZXdhbGwuZmVhdHVyZXVwdm90ZS5jb20vc3VnZ2VzdGlvbnMv
NTAyMTEvY2FrZS1mb3ItYmV0dGVyLWJ1ZmZlcmJsb2F0LWFuZC1sYXRlbmN5LW1hbmFnZW1lbnQj
Y29tbWVudDMyMzk3NgoKLS0gCkZpeGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93
d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xp
YnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
