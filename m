Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9DC4D8BC7
	for <lists+cake@lfdr.de>; Mon, 14 Mar 2022 19:29:36 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0B6173CB38;
	Mon, 14 Mar 2022 14:29:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1647282575;
	bh=LrBBz0naNQSqYi3wlvhtEbfU9FLVfugdal2RndnHceM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bQovLI+ye0bkMIJvVNeHjc82zPHEhG0cS8KpdrYjGemq7Vm6koFmtS17+Yz4Fngrx
	 pHl7tR8YLVJR8xmz5ujDcx37psUPHXM2le62ZgAmBJ19V7C7Ekw3yO5GsbUL4+9f8q
	 TrMlKPoDIiF2zAZV8zXf+HjSkpFHW+GQ+qj+x2xU1yDVwadUytuxR3q7P++VAVn7Lu
	 veOo4/1u/+RdjoFnrEEcnFwi1hUSuyy9x6byW3kUBc860T3RGPNCPKoAzX1PufUkKJ
	 EjxmVdxXbt/t2azIqRNI1EprSItkcc/gcTACK1Lc09qQEeHQmnUY8GPYtnqu9jTtZ8
	 LFz5crkmq2LsA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 65DCF3B29E
 for <cake@lists.bufferbloat.net>; Mon, 14 Mar 2022 14:29:33 -0400 (EDT)
Received: by mail-ej1-x62e.google.com with SMTP id yy13so36057459ejb.2
 for <cake@lists.bufferbloat.net>; Mon, 14 Mar 2022 11:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=6odx9/8aoXoLPEFwSlpcMEv6hgoLvb+vQy0sJVXj/So=;
 b=LlT1T/aMWb6iTYY2NlZ/Whz3W8dkI3RsTZdO3QdtfHMIR9KaJbyeUBqWm9eMUAgoTN
 1HeTrfshAigdOXAj8753hsrDovW8awCw0mD20RNwcCnKv0oCOdRYXpsNWww14UOTboZI
 wGg5d4MP/OIYjP9Q3BYiM6iEzoCw1rCHfn5XvuAmSWFBlE7IPmUMsR+zI84y9K4OTv8j
 Fgmu/uxEN8c01X3/Y2GQZbMi2/Vi9j81jXuGs5ojtVuiYM+UfIjP9crCxWdk3Es9HBeQ
 5vyLt6Ahpxjb7jiOUO8jsYqnYFCl3/T8+P/xiZf/abiZN35n8ib1yryoYs/5iTlnW7xb
 nKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=6odx9/8aoXoLPEFwSlpcMEv6hgoLvb+vQy0sJVXj/So=;
 b=HpcG1l7qvhYV1q8RbojYpx45swE8M1CG5IbPulU4OHM5LXXg3Zb6ZCt3KXoMwQfLp2
 TDc1EHy3rLU5lPrV9P2q5edtwEuw3lR0gbh67VySvSOomdz/JEe2YuVf5eRTbBX+Eu3w
 4QP8JA2Q04VzUww9mp20BF+JySrU4/e1zsb6r/6kU/hyROFidZpVSjWJJ6VWMVWDJWfD
 oOZxT3sM5hhS/oGgcDQhUr3qXLH8ala/+OYOvoeP7FapSP7iUeq1N96Qwdbz3cTFR4FI
 w1eW9rGCJtDaDs/Ml9d/EERLJnzztmDV7XhVXorPIgfmNZ1AVKF0Yigm5VlIFvhqArbA
 dmUw==
X-Gm-Message-State: AOAM530CvSS8ulZ7cLED101Do/fJsreUEyyMCDh42usOdX8l/WAQILCw
 DOwA/ELEsOvVE6M3btEzttSrdSYHtzBSzp5DPJM4yZ3OVOE=
X-Google-Smtp-Source: ABdhPJyci5qJ+liljMbdukrjDsvPAqb8enbOkCeAjbUPWpJOdqBC/kEdYns7tPSw3y2NFCcMRX56/XyArmJUwHwMqo8=
X-Received: by 2002:a17:907:7d91:b0:6d7:a1e:a47a with SMTP id
 oz17-20020a1709077d9100b006d70a1ea47amr20779560ejc.116.1647282572103; Mon, 14
 Mar 2022 11:29:32 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 14 Mar 2022 13:29:19 -0500
Message-ID: <CAA93jw7OFa9Wzq9Gx1rZv2Dpe0S61bymr8xve-KzeW7RTZRBiQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] libreqos adds pping integration
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

aHR0cHM6Ly9naXRodWIuY29tL3JjaGFjL0xpYnJlUW9TCgotLSAKSSB0cmllZCB0byBidWlsZCBh
IGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVzOgpodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5v
cmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKCkRhdmUgVMOkaHQgQ0VPLCBUZWtM
aWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
