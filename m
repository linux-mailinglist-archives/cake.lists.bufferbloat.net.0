Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01A44F8C2
	for <lists+cake@lfdr.de>; Sun, 14 Nov 2021 16:36:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 48F333CB41;
	Sun, 14 Nov 2021 10:36:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1636904208;
	bh=cZD4uOWHc8ov/Y+zR0vdTycH5M9ukdtVpBDIiborSxs=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j1fqOSrOryYUQieT0kRCi1lmY//dntSoz6ISkXRq3vLwBvduQO8jdiB9K3BbRXBop
	 O/c59IcvCGsiK1A2JI2y+KSKJFtusRTjrL2fwl/ftht9dzQdDXuyNpx0CONDmLxJCV
	 a6FzhuJkPtSQHXlmzPWUdVBNhCLu1p5Ds/Mr9EDa+z7+i+ILQR/lD+pO2aZmRBcyUe
	 0Rp3iE5XV5lOnbhPYlLsaqqffCbMK/5cS8cs9CqKuA+O+LIouylnXrYtw8GvwIjB/l
	 butEKJqtmNmEFh5594FzzPaUwyF0MoZys5ycTDxCoKnqhRhG1gE7MzTIXtC5RL4fPg
	 wjNE5+IGY2Fkg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D0E153B29E;
 Sun, 14 Nov 2021 10:36:46 -0500 (EST)
Received: by mail-io1-xd2f.google.com with SMTP id x10so17962412ioj.9;
 Sun, 14 Nov 2021 07:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gVnUnx04sr+7nQEeu1QGXTeiFI5r9X6xew0/Efi3MtA=;
 b=SqGvog4ssmBHCNfjGCjb+pxnqrHrDRfmY56NEEsBP+bKjoHbafIfxLpNG+x+twhLvm
 aJuC4vgYAH3w2PmIC7Zp7sjttkvpSSIsNYrVEqkwm2VBdychm/TAFA9tCNoqV1wRlCUq
 eyADcpW7vK3vqf67aATY/5IQcFbd7ig8kWsYhQcjoaygyuECpI+k2PhLYjSpnoEx64hF
 JHHzxDpR2dXLOCL2nk6Efy3f5aglDxV2a4xRRclVn30nO7OEepqIy51Dc7Zlt1/eaRdt
 k1if+on8Jh1CcIcJSGi7PMKVdQd7DxkNiiVUhYaHakATzJkGUNeVgVXGgrEpzMzY8RCK
 Wk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gVnUnx04sr+7nQEeu1QGXTeiFI5r9X6xew0/Efi3MtA=;
 b=Ve7blQ7Bw45PX8ciiYU2XusmzLpf6dPPqH5YYa14xIxKzgmOr74PCW4lyf3FqDhh+K
 o3nafbUuQcYSn/WTfd/NJYb2taCt2YMo0phSH/M8b3GgjlUeaELhrHZoj3PhocHQl5xI
 aXnknELHdXILkEPZpqCUaHvTXOMWtqepIQSOJ3CfeTZBMY+lY1t3gZOLDaUQ7bPQXAtz
 iWYE6mQ1bTIlmlAwlCc0JkFaf9Ghyqsr2oIIFHF/mQmunDxYmEO4nxeCr5ePJEd3/A0S
 mDSxJsyaFyCnvRgFlEVrbnO+8OLwpJ43p6V9l0HRFD+aX4IfiViNY7bCZmvW/QrkGmv8
 zZew==
X-Gm-Message-State: AOAM532Vo6NebOvERk5K1Q0IWKUfTCwLcPDqgCrxq4Mp+vWcbowFTSJW
 M5JnRJToRYP2er2HsA+iA7lyZdqQMpGGwhonuPfouEJIQ/9AKw==
X-Google-Smtp-Source: ABdhPJwNpeYwdnBL5i8pUUWnrFCoUYlJWPwXyKY2a2+ZZvOOF1z9C+XcaNjzBjBXj7bG0liAjxAJtEQI4wgy0F6uJCc=
X-Received: by 2002:a5d:928c:: with SMTP id s12mr21136272iom.163.1636904205879; 
 Sun, 14 Nov 2021 07:36:45 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 14 Nov 2021 07:36:33 -0800
Message-ID: <CAA93jw45MXK3mwuanBTS7xzXkifTt2k_JEZEQe4ep1VqSaQ3CQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] cross compiling for the udm pro seems possible nowadays
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

aHR0cHM6Ly9naXRodWIuY29tL3R1c2Mvd2lyZWd1YXJkLWttb2QgaXMgZG9pbmcgaXQuCgotLSAK
SSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVzOgpodHRwczovL3dh
eWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKCkRh
dmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
