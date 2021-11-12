Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B90B444DED4
	for <lists+cake@lfdr.de>; Fri, 12 Nov 2021 01:11:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F1D7D3CB40;
	Thu, 11 Nov 2021 19:11:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1636675907;
	bh=FoD0U01z/G1rSU9bZXwbCIbvRyzrY+WOi4w+wBlYm4k=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JGV/osJpAlEPOI5F7FQld8qif7iICSsorgSetxdVy6MoYX2hDHvPEFAUmogcOq3h+
	 R7bOy24PHMXjVNzz6/OojscwID+YfzsglX0tfOHuqTZkSvHDemGEokpUkLPhUlJvP0
	 XKthuxSRztl9FsnbXbmehU53Bs1lQyyMCy8VqQS0ijNAZhoXiSgM/62Unq+G96Yhnb
	 rIBJb0QQXXLfoWu7nM/O2/Dm4cn52O9azj7yWdOhWQK6olqfEeA6E2sCNWdxprfuPR
	 wWXqQrBLvdfCGEi4vkWXpXvvZ3ljx7r5FWnomeBSet63Yl7gE20TSNq1Bb1Av1ZiT/
	 7s7banSF0L0eg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 649093B29E
 for <cake@lists.bufferbloat.net>; Thu, 11 Nov 2021 19:11:45 -0500 (EST)
Received: by mail-io1-xd35.google.com with SMTP id x10so9088408ioj.9
 for <cake@lists.bufferbloat.net>; Thu, 11 Nov 2021 16:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KIwkmXBCCzXqdUxdJGFIYWn8ONLNBUs5wDh66cgZKV4=;
 b=SvpGsXbgYZYtIw6u2kr42FHsfKY3fuKqsTT2bCnNdbnxWj2D7jc++pffM9WQn38FHh
 HPO57OQgJ86Y0nVowZxEB53IRrOYuP6JDmXSwp9ACJKf23NllZhTkoAp/7BCdK2+R7Ba
 KkTO2bvc5YDjn3omEiXDEyv6B0NKarUlU6ceu5NBxjktKDbMgTd6+iA6jmSd+Ii7oV7q
 TcM801wWf8z3j6HzE/532a3cpAyJa5OzUC+ecs/fAL2wg3nMLjPJO/vaapSacQRHc1W8
 mJydkWiwTpmX3TAoFCyu8cV8VnthpRkwrOpkMuXAhMvdw1dWOkgH7mTnOzBxSh9GwDhB
 waIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KIwkmXBCCzXqdUxdJGFIYWn8ONLNBUs5wDh66cgZKV4=;
 b=xpuW9IYBPP6vBC8vyp47SDTZQOdc8asdYzmgd+bX0rNGsh/FUBPRMmvdMsxMeETEkH
 PBaiYnY+tPdAIcY/K+K1qgUmPo3ukOSSJ9xByTnu3CoDkmL+l7hEjXw3Jz0wCBNB65IP
 jIkgwP1GFwOmF2BbWRq1yThwlo9IaPx+9v275Ytz45JdcMBNrpIWgO0+PZRqu56AMIF0
 J309wo5KF340KSbTT2rL1GlZB5g929PB9KUqF4Lx+FTvEGcBJ3Z0qe10maPEEqNzcB1+
 MaBGVWNPq1CkUfv/qbqyeyqQ/I617jpH1IdSWjeZow96esj49nAdHGkAll0YM4ZmXgGO
 J2Dw==
X-Gm-Message-State: AOAM532T7kIIV9UmxgGHqA+FCKYZmA90Gw2fqgyo/6JYErZEZH4z3il1
 C1CWcoI3W1/0nzjX5m3Y6pQKHpX5CHyq27d72sNBN+uYBwo=
X-Google-Smtp-Source: ABdhPJycdF/CoboLIAbcyAyydP16sBNQVw9KwYv/ugSdzII5Mqzmc10Hc3WMO8GJkqbNyuuO50m94w1oNXODT5pjyPo=
X-Received: by 2002:a02:a816:: with SMTP id f22mr8541066jaj.81.1636675904266; 
 Thu, 11 Nov 2021 16:11:44 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 11 Nov 2021 16:11:32 -0800
Message-ID: <CAA93jw7kjdq=uALKviuCH9LPPveiW67pDjnBKx0LJwhGYOcLOA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] one more cake user in the world
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

SSB3aXNoIGl0IHdhc24ndCBzbyBoYXJkLgoKaHR0cHM6Ly9mb3J1bXMub3ZlcmNsb2NrZXJzLmNv
LnVrL3RocmVhZHMvdmlyZ2luLW1lZGlhLWRpc2N1c3Npb24tdGhyZWFkLjE3NzAxNzg4L3BhZ2Ut
MTExOQoKLS0gCkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoK
aHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3Lmlj
ZWkub3JnCgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==
