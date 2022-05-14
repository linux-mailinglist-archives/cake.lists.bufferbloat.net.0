Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DAE526E4C
	for <lists+cake@lfdr.de>; Sat, 14 May 2022 08:15:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C34A63CB38;
	Sat, 14 May 2022 02:15:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1652508951;
	bh=lho9o8ivEoIUCQXuh7MiaiCMK80bagU4i1DcGfpG2Uc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nJG1HFQTQKxa1MwqiesUyDeTQyG+QEfwSg4o4JwnUzZVnPirWnhtdlo25Vb0CnxCS
	 /8ryQGXm6zBjC7f6mX5ocR7rmKgdktj3qH7wOC8jY7NFRJS3aIgX1q2V1ybPk1z5II
	 8o2rQmWTtTKz2ZY3ZI7vtXeyutrSN+A8djeQgaejj5hSch93T22FygIcDqS/pXzEE6
	 tcH2M7o6h+naoz7EikEqPfFBej1NEf4AA1pxdybInHPgBybQJY0GSww/fTcF02cLpc
	 uuBnOGnANA44xGwRiIhdyj8FjscPfKG/DueYc4EvJd62qcNeA7Iwm8c7c8iUtP2USM
	 iAeZP9lltijeA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 01E953B29E
 for <cake@lists.bufferbloat.net>; Sat, 14 May 2022 02:15:49 -0400 (EDT)
Received: by mail-ed1-x533.google.com with SMTP id d6so12230623ede.8
 for <cake@lists.bufferbloat.net>; Fri, 13 May 2022 23:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=L5YiVrGy82BETlQE9ou3eXPA8ahvZPXWHY0ug/ksrDk=;
 b=OQ7JKAwLZoUf588HeRa8ADD7S5h9tsuIu3P8UWp5pnz//C822fFSGeZVMVQQzFgw8w
 BUs1bOEZrc2NWw8M0/RP35kmfLhQGCHgjNenCJa32LuJeB2P/Dp2nCrI0E9Itju3OzcY
 rUVGepiGq7nskR7TwDl2cuP6huAmyB93erdTCkMLJdCk34jmJtLONtxQDfKe/xXESfdF
 cK0G2XW48K+M2TuTmK1iHQUhChNnes69Hagjywz7849g3pHX+1znM3xG4s4Iy4NvNGxP
 GHatjh/XE9ydg1IZH+BPOeFLOA/n6QhHhOkkDqW0wk/rP/dhWYYAorniiXUrz0qxIJ1T
 rNNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=L5YiVrGy82BETlQE9ou3eXPA8ahvZPXWHY0ug/ksrDk=;
 b=wWdVMTQuHKqD6wXJtFwyCp0BpySZj/G2oTu6gFBjKhLKywEK1ODWPFREZIu1WPGUmB
 +X/Szvmm7yl8C7hqc+hSekVZkf1znQ4fSbJpuS7+9mnWPeYiZ61BBEzlof5gjKElY9IA
 XbyapYVlgCAjHlbIUOM5yfuWbWmt6TzQNK04pxO/7MfhQJ3CgPtBRJ4zlQrqPXBCow1M
 uo3zGvssUIPcQwMCM0tq0jr47fuly1SW2x7tEA2HXQOWUnDiDhjD87oqczMETeU0+i7G
 LfKJnQLLE8TOIEh6YuocqzfcmD4cWnRHuBU88DpJxWF4X0V8cCtdUyQE1cO/cg5skn/b
 9C1w==
X-Gm-Message-State: AOAM530i4EAVgZ6jP+Zp/BUo8JmX+PHXth39Sa95XxVzWWesMCQX6PCr
 SD6+bNtRRy8TGjNcFhmg8x8Nr4Br7+3yRy4/xsIlxrTAVt/H3g==
X-Google-Smtp-Source: ABdhPJwqbNZvHVO2t5Vhh/+W/Iau1xlk8VfLsAYwGRY78GLT/m71ysXB7NkfgZ28FnhRUMJJrWj4a9DB4mhqH8UYcLc=
X-Received: by 2002:a05:6402:3687:b0:428:aafb:23c9 with SMTP id
 ej7-20020a056402368700b00428aafb23c9mr2182483edb.388.1652508948468; Fri, 13
 May 2022 23:15:48 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 13 May 2022 23:15:37 -0700
Message-ID: <CAA93jw6JXWeV8ZAFTFgtGCAxMTP5hEY8ARXkDJ3zqXMXQ6bswA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake is a lie
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

SSBrbmV3IHRoZXJlIHdhcyBhIHNjcmVlbnNob3Qgb2YgdGhpcyBzb21ld2hlcmUhCgpodHRwczov
L2ZvcnVtLm1pa3JvdGlrLmNvbS92aWV3dG9waWMucGhwP3A9OTMzMDc2I3A5MzMwMDMKCi0tIApG
USBXb3JsZCBEb21pbmF0aW9uIHBlbmRpbmc6IGh0dHBzOi8vYmxvZy5jZXJvd3J0Lm9yZy9wb3N0
L3N0YXRlX29mX2ZxX2NvZGVsLwpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==
