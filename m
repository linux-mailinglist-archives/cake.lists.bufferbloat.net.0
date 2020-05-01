Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFBA1C1ABE
	for <lists+cake@lfdr.de>; Fri,  1 May 2020 18:44:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5C3FE3CB4C;
	Fri,  1 May 2020 12:44:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588351464;
	bh=g3ISs/xrKxNWRlwknUuWAQ/jToZ1gEA4kvSKVqPj8sY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i7vjSc9/Mr7Cuj1v6afu7lumx46ImvXyA+ehOLJXPEZMxPDBfhS4zCsTfUa3QA66n
	 Sx+M1m4CkvrSnM/AlVKVresgHiOKad9IFRVj3s3srKex0OlTSXVJP+Xhik5V/X9QXA
	 RFlWRjfpuyqMVeQ1rpQXsqpij4qSc4QK+7Nt9Y1dnGO2FWeCc7SaDWb7YhRBUoyogq
	 Tkb5XLr/BbJssZKwfqKiMhDL3MwKocgroT9Oy6pCTAAShcx+6ZQFCSsM6hwIyJ+7+f
	 b2PxfeEPA819P1/x0QS3WaiFZlKjy9bknIL5jdz6L8Hk/nJQFnj+aWfZLTi6+NNtGT
	 3dKtEWQvGg4gw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 33CDA3CB35;
 Fri,  1 May 2020 12:44:23 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id y26so5441191ioj.2;
 Fri, 01 May 2020 09:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=bf3z6wqPEAZ4ensBs52dsDCLjlB1qx18UjmGerQ6EnU=;
 b=ipLrmdANMGa1kip12Ay3C6l6me6eGZto0ZW7bYE0a5DTG76r6q2mfAd1dQK+uQok6i
 bpJFOaVgcLkA3UQspL9BRv0myUrM3pvKWVe8WbJ9vOWxw4x+dvNQ1KehLEHnDPx6Oo1H
 hNKxKViwB61rzjTLNNBJkW7TvAixUVXMUpRXJv3vY+whX9VyaLiyxV53C4EYkVSkY6aS
 vGPSi+dDD2os3+tnaccTp/MHhbcmm3nFPt99xy07PPnRMX35b9+6XVuaj75oUEOXWvqa
 NS/AipQbvYoebBMfu8JdohYBkL2peJpIoDbkTyqrL+KhF4l38K3qsEKA/4i8E8HsbmOv
 OYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=bf3z6wqPEAZ4ensBs52dsDCLjlB1qx18UjmGerQ6EnU=;
 b=sbieyehECzcgay46MinE0RPNhlk8ekfJs9qGoVEtSupoPB71X+Cf6J0TxjYojPog2v
 SYQPnxzvD2WN0gwLeDH9Ch5bNNJ+68twZB8bid5diTyuK/LkKtkyGhZjNZekNgSzrX+3
 m9C/9bBmSBmZ1uIQaMeJJMhcDQnrxuqzaTXMaKWiE2eeOYKG/vLkC3UOwD7pdJQYQv7F
 2qEQ+YsCLafM5psuCpqSGHAlI7zgFWIaLmdmmPpg2ROKIeaczsRpHEOmKGP/O2Lpw4QZ
 de9pShd9nHbMBhM3KJLgwJ28lIkTa3c1aAsA4IU9GhnzjuZegidrTN9mCr0GBn/uAsHF
 LFpg==
X-Gm-Message-State: AGi0PubjwgiDKAckK6Fzo4QrskzgsltZ7V2DPCXyeDpF3YwLu+uJr8+Z
 OEDfax6SwRo1Vs4gNMiAqCQFu0odP0szo9b21Tivr8PwZLI=
X-Google-Smtp-Source: APiQypL1iZdzi0aj5zARCt3+5Qsf7YXTZbIvUeLfzIdangrgdvmd0+FFXjauWQPwDpXhLEmZS7B2L2AMnheEshauJbc=
X-Received: by 2002:a02:cd03:: with SMTP id g3mr3856725jaq.61.1588351462360;
 Fri, 01 May 2020 09:44:22 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 1 May 2020 09:44:10 -0700
Message-ID: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] dslreports is no longer free
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

aHR0cHM6Ly93d3cucmVkZGl0LmNvbS9yL0hvbWVOZXR3b3JraW5nL2NvbW1lbnRzL2diZDZnMC9k
c2xfcmVwb3J0c19zcGVlZF90ZXN0X25vX2xvbmdlcl9mcmVlLwoKVGhleSByYW4gb3V0IG9mIGJh
bmR3aWR0aC4KCk1lc3NhZ2UgdG8gdXNlcnMgaGVyZToKCmh0dHA6Ly93d3cuZHNscmVwb3J0cy5j
b20vc3BlZWR0ZXN0CgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBU
ZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
