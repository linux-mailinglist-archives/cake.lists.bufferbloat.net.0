Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D2142E266
	for <lists+cake@lfdr.de>; Thu, 14 Oct 2021 22:06:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 478EA3CB51;
	Thu, 14 Oct 2021 16:06:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634242008;
	bh=UiD3SgO4pZH7JxrnmJjy7NZRGCpP2Bys/7nLAgE4vBE=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=brYnNZDYPo/JO8fgkW49gEMRJv4pHxh0rS5+S80hmmJf/iAl5VRVYpABwKjBIz1vf
	 oHuLqjFmw7END8VTuDDQIP/jm5Ksz/zsBQrGfm8K83iPYfg79I/kZ6JFcSSp+PZClJ
	 +iED9owOLwAMuHXwqxS6z3MFQWr50sWicjoWpmFwPqt0chUbKzG+fcnGWd+F2/Q1jJ
	 gj/yQmaHzkwhSJhVBDhSrJ2/1cPIxnOE0rL2VbLPySvG8/g+4qpGU72SZFLo3mPs4V
	 F5DI0bPwP7fnNH/P/HWihmL+iBoIz65aa2+EjIHAruMlkPP/gxo/XLX6ReykWo7EyT
	 19w7iw1x2gWOA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4A95C3B29E;
 Thu, 14 Oct 2021 16:06:46 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id 188so5172753iou.12;
 Thu, 14 Oct 2021 13:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3ddR/tGZ+BOtwLpCaHz0PtOYZyHU1LTZaDQYqFmjvEk=;
 b=cPGWKYaMhlmYydHa/mBKHO5pgqLr8Hugj+UwpnOABbeM0lrpw4z/n0L5JKvaBCRzz+
 nYyzT8SfSqm+EHLf6zTXTbSANJ7tj7ZoskITI4Agv2MbexYIYqz+Qyk5jiJeT/M0NWQ8
 NHCc8V+XTMR+lM5lT1hK0R+kXz6KdgmLNnvy3NGW7WLyTuP+BOzer6s/9gjd8Mz60bie
 XmhLx/KbVLLo/y3J/93gxl98n2G3g5DbIWLYHnapyVuIWBXK+wUMCCzv8+0KMM45fALU
 AZvGGSm3YwbNeO6wOVA8g0zDSHl8lYHzycD7KX1vk+FDHmjqkZ48gsbRTPRpp0YUSqPL
 nxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3ddR/tGZ+BOtwLpCaHz0PtOYZyHU1LTZaDQYqFmjvEk=;
 b=SjJy9F5JAhboPKp/QGuqHaVBYA0zDLzOMIkQlEbR5LhZmg5jZC1MlFTM0U1YO/4s63
 vm+OcD3hgWC/vehbluFJV7z38Y+PSGPtmc/4UfuaO6N+FBBgJrMpfFN3iwwxzqQg6gO/
 VRiCj0FQHhgIJ3jlCyiXrWsuZQ3PjTn6Ep/xi5rSEWfjqR4knrPf4ceG9W9qWhZxL5LG
 mSjuGRjGFA6Tsfy73xRvCNIx1nhLCEPc9cNcxP14biivYWCLpgM76fWsmPFNLbPc+ggn
 NCunB5R6nfMJ4AGN7UGz+8Dx7uykib8GpzzOYnTD6PVEJNqrjwAWpdGPxLxerk4+ub3g
 nFUg==
X-Gm-Message-State: AOAM533qZ7ac4AB7RF4g7W5nNwHgLKcMGBdtqm+O5v5s26RR1ZyXemmN
 uU0qCrUK3jdckpzaVhqWhGwuvjhZ2me57onf58FfS1Pr/oY=
X-Google-Smtp-Source: ABdhPJwjf+UNffcH/TS1/anv0Nhi3SmficPrADASLBSMluMAoeTzS1J87zjyqu3YgwVn/+bnXlvC1zwQ0EHFqcmf2co=
X-Received: by 2002:a05:6602:1504:: with SMTP id
 g4mr770367iow.133.1634242005236; 
 Thu, 14 Oct 2021 13:06:45 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 14 Oct 2021 13:06:33 -0700
Message-ID: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Subject: [Cake] l4s kernel submission
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

aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjExMDE0MTc1OTE4LjYwMTg4LTMtZXJpYy5k
dW1hemV0QGdtYWlsLmNvbS8KCi0tIApGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBz
Oi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBU
ZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
