Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3000818D8BF
	for <lists+cake@lfdr.de>; Fri, 20 Mar 2020 20:52:41 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A948D3CB38;
	Fri, 20 Mar 2020 15:52:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1584733959;
	bh=pCEOUmNcrZvcTZaIN/XVbZ8mBB5AxN6R1tFq0EHU24s=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T3sxWcyIWQYvB3HialmicK4yX4HhAn2up8B2k3g6HeNtqXhHJlN5aknGAt+wsM39/
	 1ULshDowwJQH0Po0d5VMff3Yc9FBFxR/vdQKm1MWUoIwR7D5Z0Xra0v9qY6POJVZST
	 Yiaihmk62zHtG0j24V+6aa/YL7PS0kvMsqtIiFY6+pE/q3oSPSD+CQJeJ+VxYeD5a+
	 jRF78awudrV1+BvSySmPUDXii6y1aXVkzdY2kREyY+U/7AnixKHgk9bVwEBIMhEsBy
	 D/Pw9HE68sIYVtbMRXsC7ZahTPfzaXnYw8K8PyirvqOsEAtz9IWh7EiLiDof7CPvE7
	 IKc0O7BiLpAEA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E10433B29D
 for <cake@lists.bufferbloat.net>; Fri, 20 Mar 2020 15:52:38 -0400 (EDT)
Received: by mail-io1-xd35.google.com with SMTP id h131so7279915iof.1
 for <cake@lists.bufferbloat.net>; Fri, 20 Mar 2020 12:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=iJgg6GjBi2QXeB4PI25GeAJ7yZaLMcQSas9KNLoiwkI=;
 b=MzY/g5WsuNyRiwiLEoe8ITucw2Mr6cDPfW6yl5LifZmDxNsaKrpHsw0AwSP7MxiXL1
 VwlsDaUInh34BsmP/0PA6X6VN7aiEaPFTH0L/9rtutm2GlZo3GKFNWTxlT3jiviIsn/S
 xqRksbz0ZtIm4N+XaL5Sf9VtnHG/xRji6S/gqS8b1cwz0ziTlI7JdlmVaUkGdfKNQcOM
 AAlpaIVe/63ZlrYg35jV1yjiirYb+nhef7j6Asmge1/cadHYzyKZ65fNW6RwCGCaTyov
 zhiRNf3OKab/dHbICRwMSfJXX05bEJ9Rh1gKGdnZUNfQt0+HIYozgh1dzSuWeIZUOKTv
 CPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=iJgg6GjBi2QXeB4PI25GeAJ7yZaLMcQSas9KNLoiwkI=;
 b=CkNqhPoGsBwUCcsqwU2VGhHDHwTaWPmA8MTzWpZ4eW9+Ywx7y/mtL+rjCuCZ4lEJ6Y
 1mGJh/2hu3l0KYEVjmz/w8R5vwuPLFLm7A8G4tIF5I0p/ZSmI1xGHBZcHd6A8hrZWdOO
 F5l+98u3WpAcnT5MDILiQu9NaBxIswb1ViQRfQS3t++dNqHJEkEjOaNRcaPZTJqe5zWe
 uIUootwT1+VyHyNWt7E/GfVEAoKhDB5IH4xu9FtWbW08HXy2pbBye64mpCr+H/VLkwrj
 8YTXEgaDsoNruIdGPQ8pIYbP865jA3ZeT60Qj1P6y4P+v50tVoDV360jKssWp89055lg
 BEng==
X-Gm-Message-State: ANhLgQ2rriH0lu1EZuqVxIMPqrz1aHewpeK5uT+XAbvjGEfBR9bbudEF
 NvHZDfZ5VuRw9qm5VIczR+KHgSgRJrz1hClOWGSQ3Hgp
X-Google-Smtp-Source: ADFU+vs0ULlQSufZc6Ag0ILkmT3db3YqpFCwGqoPV4BLspZgz1vyzLMkxzKfmV5zgAAN16Ea08MgwDOYvXVEqeCCstQ=
X-Received: by 2002:a02:1683:: with SMTP id a125mr1689910jaa.61.1584733958118; 
 Fri, 20 Mar 2020 12:52:38 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 20 Mar 2020 12:52:24 -0700
Message-ID: <CAA93jw7j_7B5VJgH6Zfv_tt2e=qXo=Cc1uibWrrwyc8RuRGRQw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] https://build.lochnair.net is down
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

YW55b25lIGtub3cgaG93IHRvIHJlYWNoIGxvY2huYWlyPwoKLS0gCk1ha2UgTXVzaWMsIE5vdCBX
YXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29t
ClRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
