Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D1805F93
	for <lists+cake@lfdr.de>; Tue,  5 Dec 2023 21:38:54 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9EF1A3CB4C;
	Tue,  5 Dec 2023 15:38:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1701808731;
	bh=2bBVfJGx8BG4ZocTaGU68aDv7VhbYu9lb3SxDQwCco0=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=p0oANnNJOH80l+Mi0anrr9nO12I/IUtl4XJjGbjGXfn6GGe8mmdsXBgPuOB2UF0tA
	 Xs0c9gA+vEdetlYluvyy6u0eojgRvwzaJF6IxysH4tXmpuzYF/S6HFSV2ddIdlT7z0
	 ciziSTeHp99ZO1ROBSBEcYnMe5g/vV7sjPH8In04NlCY261d91FkGpPYNVIreTyaDy
	 ufOIuzAMfCVzrlQ/eHTJwancRO5g98EInG7Cibb7X91NfD6GurfXM7OBqi4Edu4LRU
	 271ftCLyTqB+/JDzf+FE3MV+bAqdJGhRRM12mTZVfNo5nwi9uwl1o+/U/YgWhJOFUF
	 bc4xo6RttRteQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 68DA83B29D
 for <cake@lists.bufferbloat.net>; Tue,  5 Dec 2023 15:38:49 -0500 (EST)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-5c659db0ce2so3063798a12.0
 for <cake@lists.bufferbloat.net>; Tue, 05 Dec 2023 12:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701808728; x=1702413528; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=rf5eDD8lRkw36UD4JEKYE4Nw2xGN/1PV2whzcsqsx/E=;
 b=lWygBU62o2N6kRnYRJXb3NMK9pc8lngTL9poanZjzP5UYg+orufQJ/Bf0qj/W5mPD1
 vRaelTSISQbxIknTODocue9Hfg02kittnl7D4POVS1/ugDIb7MxoTEfsMd3WvXfbeuSB
 0W7+uEtLJT7DfRr2hGo9qJg8qPfMYvctevSMju3XofJBNyu0FINUj32gXFDJAveQ+OlG
 vd6hfPNLDP6EOWPLQh6Z0PFJEvzOtRJ31wBE1XUudnUNwRcj9Yz23DRwYJXKSfxSe6dy
 96BJqXMjua6ES+3/uql3lcjGGivJMhvzE/uI+nSX48uuY4wf2F/ggtKCMOUMWOWqGyZt
 Ptfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701808728; x=1702413528;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=rf5eDD8lRkw36UD4JEKYE4Nw2xGN/1PV2whzcsqsx/E=;
 b=W0cZTmHE9acHvVL15ahfM7PFvWupYnylh/mq167vB3WmyZDQq5lG4miRQDPtlyTkj6
 1YVtFY2SiFfVVSEMX+INmf6vVj5pAiEUGRjyx8dHGFjy287sih5A38KV6TklRl4UilOA
 izzh6dtmhZxmBtGO2W3kZ7z7FuBkSawi2K5w/VEvnbDM7tylced7L5Lwx/Bq77vY3dfK
 VAr1YFKJDQ14oxRpmiezKmnVJ+YrGEnZJ+Sn5vkNtqy4zdcsac1sVRn0rpEcOhNQGcSb
 dV0QS1lJUwZFxCJztEHDQ2cadlVqvIBWLZO067DzexEqAV0P4+XtV+bgHabmP9K+BpVX
 WLtA==
X-Gm-Message-State: AOJu0Yzp9CKSmmK+9QcKkEQ+ZwUHLe66ZxTQc9/rI6pv+9BDYMMyIPqt
 VObdusnZcUz3yxEZsbuakOXQmTUt+BSjXStzFniSIePeomQ=
X-Google-Smtp-Source: AGHT+IGWO/lp531lLkqBXBsLYsZXVgo81ucgL/pFDC5jsRhzrQr3aXv09Z90x8yJmsALrun3RtovI4ILebbvUjggZFc=
X-Received: by 2002:a17:90a:cb13:b0:286:975a:aca3 with SMTP id
 z19-20020a17090acb1300b00286975aaca3mr1934840pjt.72.1701808727868; Tue, 05
 Dec 2023 12:38:47 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 5 Dec 2023 15:38:32 -0500
Message-ID: <CAA93jw43pyiOi90OWwctDAwiWw6LZvgq81U8gLVgdmrt6fiQUQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] got no idea if commscope uses cake, but
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

aHR0cHM6Ly93d3cuY29tbXNjb3BlLmNvbS9nbG9iYWxhc3NldHMvZGlnaXp1aXRlLzk1NjQxMC1s
b3ctbGF0ZW5jeS1ob21lLWVib29rLWViLTExNjc2My1lbi5wZGYKCi0tIAo6KCBNeSBvbGQgUiZE
IGNhbXB1cyBpcyB1cCBmb3Igc2FsZTogaHR0cHM6Ly90aW55dXJsLmNvbS95dXJ0bGFiCkRhdmUg
VMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
