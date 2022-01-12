Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ABA48CAC7
	for <lists+cake@lfdr.de>; Wed, 12 Jan 2022 19:16:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 865093CB46;
	Wed, 12 Jan 2022 13:16:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1642011376;
	bh=U8n06KjLWsVTvLStU/c7g7zWklgRs7E+XROaZksejpc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=efUqrhGD/3iIBgVZ5UyvrT3ol1k6qnW8nre4XlD6R8XMly24jC0SjIEYmO2WEMpAC
	 OgS48RDtDKChvRhCHZ04AvN61MsZDwwoJByusmoSNiVag6D+O56T0sd7/+we0FFCxR
	 QsClAQYoQ8bPbrMMEu3dlTqi25zsF2oSk56Tw4ok/F2SIkMhVUYrSpnkC3R/nE0uJj
	 BUh8Bn3FL9FDd4uV7xaDdUITIQkZ7kQ6ow4svTi+6RlM5hkZxwyAXMcdaKjfs/bB3o
	 /wkpGkwILWPFABXaE8u1vQXG+bc6rrBdx+0MyYvsB3RZ+FUQ4QSxCD7A+gSoATlbMk
	 I0OdV6KuSBnvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6298A3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 12 Jan 2022 13:16:14 -0500 (EST)
Received: by mail-ed1-x52b.google.com with SMTP id i5so13302223edf.9
 for <cake@lists.bufferbloat.net>; Wed, 12 Jan 2022 10:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=T6JIjbDSoD1fCE+If38TCKUmf9urkzTsjgbnqb5wTfo=;
 b=M0cqU3N4tXeS6d4tbdD5iKMQ97WX10eoU+E/fPZlMhpDLDmGnMTze2gxcTarXBdCCR
 SoR6RPPOshj4P92CtTW+AhefoQFmpQzr4c85a+YhqDMXncC6GxBLYUiLwVZiwdTq+w6v
 k25X5akkf8NmgCOt6Ovs3srPKRiEt1e6Z7i3RB1VIquQ0NV7N2Ldew9dh7LjgTG8eRgt
 NciLLRHRJdsQTXDuLztx1CYSSZcO7mLAi6lyRXAdHLxTnATQfEEtlaxi7fpQTZJQk5zD
 9Hhtp+tpTuFPow884CqAnIoXH2GPsHCnSaOWbN65aGL6c6tu80Axpybv8tuNChLO4PtX
 OxMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=T6JIjbDSoD1fCE+If38TCKUmf9urkzTsjgbnqb5wTfo=;
 b=1X2QPxADaUmqonTdOHUNXW77R8IrMXDpsbyHxFtyDOi83XWzV/7a6Q7BF1nHxdnyUy
 6gxNY04l3R1FX0GNu6eynTmwuWKpfWf/ZJeQHWQufhenAx7e1DpfCKO1BuGZZiMH0/aL
 VYK/n50kz+MwhMNgOigb63hN0+k5FaRun7UueRctO6BREgoAMIc768LsYesdPhM/uIFA
 iS6EzDZeDwfrYtpmLiIgaz9s/af0Vk0Qe+fChtNaCxqlbKbMfdCz+jUmPlwHoZXId1SM
 FgbyD/V9OMg+oRJrr1wF5hCQhNu6Xa5wPQ/Um7MKeEa3WiZGxA4Zs6aiURewl7/VyEhM
 woMw==
X-Gm-Message-State: AOAM532t59jhdTaCU9RCj7Enj4SDUZcTCH+yJO2cqRlx+p0puOPg0KXz
 ZgH3sWf6cADkCbaDk5DDk8B0GBLHQDhN6/1tgiaNlELwPfE=
X-Google-Smtp-Source: ABdhPJyWOtBMiVDr2g6PfSKMRBDmconlHPonETkCTKLhG1z12xkdmwvbNQzJs7y6VETVw6wXwGUr9rGcJXOKRuehVF4=
X-Received: by 2002:a17:907:724a:: with SMTP id
 ds10mr787995ejc.262.1642011373134; 
 Wed, 12 Jan 2022 10:16:13 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 12 Jan 2022 10:16:00 -0800
Message-ID: <CAA93jw5=Sj6A9VBRk2KB_chRacTRbVmXYOpDjZ7Ze1g31we51g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] applying cake within an ISP
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

VGhpcyB0aHJlYWQgY29udGludWVzOwoKaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3Rv
cGljLnBocD9wPTkwNDYyNCZzaWQ9ZGVjNzEwNDIzMDc1ZTEyMmMzY2RiMWYxNDdjZWE5NzMjcDkw
NDcyMQoKLS0gCkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoK
aHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3Lmlj
ZWkub3JnCgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==
