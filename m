Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E74D4A3C50
	for <lists+cake@lfdr.de>; Mon, 31 Jan 2022 01:37:40 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C5F633CB40;
	Sun, 30 Jan 2022 19:37:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643589458;
	bh=FlHl3+sJq1nKP2JK7FPv49iikq9LS1HLvwynjOQp8FI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lBCHfyFch7IcsFTd77Z2xh0Ces8WCuYpZxm+WHa161PcOpFh89Fvt/t2T9ksLe4jl
	 pOPwY7aiBkrWs69z0csc3Tp+A9KXXMoZ3hQg8ISbvze5K4LaiYNwa1+k/qu3PQhHNd
	 E0bbrnSbu/S6Osd9K/xgYIoIFnSqueTOyLRWVaKV7cC0c48bjgyHA9NaywGKXQv7/Y
	 uuWh0x9pWSHwmyBfJCF9CiTbzFVoy5IzWIbB3sKPvyaQbk4wXtPVyTJ7DJkbWaz7GC
	 aqney42be6KS4tgDB+e6Y7bPemkaNrhABX6Bq0V+iI/tOzYGbZnrepW79tMvKO4o1/
	 mBTyjX/fGbKrQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 157023B29D;
 Sun, 30 Jan 2022 19:37:38 -0500 (EST)
Received: by mail-ed1-x536.google.com with SMTP id w14so23379898edd.10;
 Sun, 30 Jan 2022 16:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=mFGq9mrz2rQRK6ZlXNfqd4V2Bhw2CsnX4ys+3ChowlI=;
 b=LocqUJVEMBe/ZGSW8VfBs+BXaro6tsh/0VJUplDghcmJjEDi9/pXsrG6NrBoySgnd8
 LKDbEma04uIW2rJEfbK5fqaGly6rPIW9yyl2WPRvNATqbX8uB1PoVhL4HwCL74bshoaC
 GcM5ndJafjCIhJR6J67DUkOhpsUAPnhJxuztnhzWV3roJfkXu0QzkMIfZkmvzPZCmevm
 MGGSwUMsagSi6lgH/wKfAC2MqPfJh+ujCDBwMNfQCT+494YPJZIG30p0xQm55HeHaw0K
 TKWbSC7d2mer7lSvyPAIfQOghKYounb2uFc1JCQcsSgTsZ9OKTqzAlkh6TLhrCZtevpH
 YTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=mFGq9mrz2rQRK6ZlXNfqd4V2Bhw2CsnX4ys+3ChowlI=;
 b=j3YlC/epYTXulvLLicmT3/N27zdGbum9HCHxzZ6rVPUc9e2aXbDH/N+GQfTBxYiqn6
 GVTNgTQNbDyr+UBd2VEXJd3WijLmphQ/Ll4D9LK30dbyyn5TxOMMyV74VY4N0DfNSQFg
 geCwlGaADfBySyDBVUDiQW2SlhSPh4BSzzBkQRgvATUABumqGo9cO+8+0ObN6xp+/4WG
 AkEakHkwsVLmEDaxaxVq7F8vzFa9xZWBDdgl08Hyfqg9bUaiJxoZ+jN7oj/pwnl0Ph59
 b+HDrttGTzExOtjU11AfH9NmioKRnxFgJWPlXNdB1jeh3CG+hvdq31POwN2ZEXDGGCZa
 XgBw==
X-Gm-Message-State: AOAM530WpDQUQyLfysJIt6B9jNouT/Ju4vB2TshjV/KIw7Vxz1dO1RWJ
 lrYmtTGMFYdYdJt9nkN5d7zYeRlarzoMiWh1sKxHz9lKXlI=
X-Google-Smtp-Source: ABdhPJwcfkGtRdd8Ua/hwDSHeppOkL1/9E5hev+v+/upkOe+1P8IA6wlnSyCp/Hw1VoeRotVpi/eiuh0WK6JQ6U35CQ=
X-Received: by 2002:a05:6402:11cd:: with SMTP id
 j13mr9594496edw.116.1643589456595; 
 Sun, 30 Jan 2022 16:37:36 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 30 Jan 2022 16:37:24 -0800
Message-ID: <CAA93jw4Ch=Toy0GV_eSnmdZ+5F6ProaB1JG5iWMUR6UgqJXQOw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Subject: [Cake] 30ns resolution for tracing
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

aHR0cHM6Ly9ibG9nLmphbmVzdHJlZXQuY29tL21hZ2ljLXRyYWNlLwoKLS0gCkkgdHJpZWQgdG8g
YnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6Ly93YXlmb3J3YXJkLmFy
Y2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCgpEYXZlIFTDpGh0IENF
TywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
