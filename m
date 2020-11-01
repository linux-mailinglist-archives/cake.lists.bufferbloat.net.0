Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B392A1FAA
	for <lists+cake@lfdr.de>; Sun,  1 Nov 2020 17:53:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 81DF73CB38;
	Sun,  1 Nov 2020 11:53:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1604249597;
	bh=rc89Me93DlyMKlbvL3lBj7LyHuPbmCr65Qs2911ZoYo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Z5MzU3rWt7EPhhhFmBE9s4sGWD3SQAt4tMhn2vVcZjH0qI21nHyghMLkUTUqhjmQs
	 y1RdBOF8qXsgDaQJ9tsTanTJA4sG08ZsIVcjvmXEFl5+zeLzmGdEY1Woue3GGbsLb2
	 WoOy3traq1/v16fbzdXyi2G6Tynfn2lua8n6N32VrtRz+//M9AerDJVytcq/GEbXI/
	 J5uU7M3Q+vpLjzn2m49ww3MTkXgJbvJVG5O6tvO2wbrnOMjJtzfbKFo0jA2dvaEu3E
	 hnF577i1dqiq6d9WmbeF1xEckhPL8OgRqeuJNHqdtCWuvofFt4JWcdYvKWtAAqnKfi
	 d+iwv0qjsQ0xg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic313-20.consmr.mail.ir2.yahoo.com
 (sonic313-20.consmr.mail.ir2.yahoo.com [77.238.179.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 346EB3B29E
 for <cake@lists.bufferbloat.net>; Sun,  1 Nov 2020 11:53:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
 t=1604249592; bh=fadvVkUlJ3zUiVtxF8Pup2u1htnvO79uErXdBxyXELI=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=XN+sfeGkt04mz6Y7ucPK4IPKxGOewG7S/06sNg4Hy/Rl4AOiSAbZqhdjaFMZtKr0LhiPsIq978m+1rYzPDk0i9Y2EnLf3AmlW13Y5s+gDEFmerxhT0tiWzHdvoJvCA+q2CF+vqRAKv3OnaPRgIPAaRU2qKurs/Y33pxzjO5suowcBJv6qkEjt8JRXTIT1K2vjcHkj4DUJRFHRkEochwPdQ2SSCN7mF7+J05BDKEVQRiSPooKe/XRnbtFGfwJc8hRuZtcRfk1g7SecdEOxkJQUlowA17ECTADyqpMXznx45dneNBlRNn2budU2fjhXIiCQ7y63Xm7eocRuYVYrs3R9A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1604249592; bh=XDed8+z80J83Q8vmsIxfAJG4PhPp/jH5axAFG5l6OiW=;
 h=Date:From:To:Subject;
 b=uhoh0t7uFtypFm3G/wn/w+QOSgDrAvEAP1fj8Ze1whQntmG1grelP87Yfrl0iH0S0hZRnWs7oIlsO8knqYvNzXIXvIyVHcXepLvdHH7iOIRyBP5Dwwc7KIOtUs/x+W1m76gfirtsT9uXidiZ24bTTO6mwsOZQKq+FR7VHw+QAJUigmlBogIpxEMPH1YYMUVzj+UmUaZqOzDEjFszhojrIISyWHw2QHk0dMtPq7FrjBH42Ghevi6NFqv2PB3DYIu97RuiwCOjJ4OEgBxpK2ear5oRFtZVKf8iWdF2ELNlV7i+9ap2koeRZAUdsZtGEiDIFpweJlDOCr6Hzoz5NjgVyA==
X-YMail-OSG: EytOrL4VM1kmnwTWtJaU3Ie0Oo9nYJ4RChVcc.Ch_yVS8th_NXk3FyThOQAL6fY
 JBc6Wd65VWODP3ocM3llYUrmZG_3fyy6Y1kAi84VhqERrtJIcfG80u4k41k3lU6P84g.tMmvF8Kk
 o4ZUvX1STXCETKEgojZSR1b_s7pMVi5jd9pWl1F.kKTxGOt86fSIHgA5BeWSfcYferB95gFimmUN
 .76ARwoOmYXl1VYlsOcqfMc2a2R2whyO0id83w0_cHbZUWilzriaNXryOfbnQdnQSIWQoz0PwLCp
 2IbpfsQXTendThZDRf_1hDNgVEHwqJkkG6mFMzS2QVAwwF5HwDVnqXO1ICe1IMBQQCGacUETVTym
 PX1dEH5rvQ7.6bQ36VKyDH9Bsprjgv3fHJZ3cISLe7tm1Ptpcj9oKfG3JQRkhyuj0J0u4C6JAOKL
 eKoweJaGT2wDlQztHgCCcb0eLW8y_8oEqXZQAnLOQGTqx749oW7ffKBLs4i8dFeAZp5oFSDkzd.9
 14DLZ_Uxjd2nwG35kcO0Lv3hGn1UkTIkRJcnsI6y9ZK66Cc8E0dtqBfVpRaLPLtCx5_arHcIgX3z
 KVotKmtoL6qn7jR9.wm8Az4a6V0nhMYCLzF62zR1ZSHeT45ODWyHkTbfwu00LlORMkg5p6hiPifG
 fUs2cwKH8X1auDdSjw7herWXVnSGTHEhi5GiWaMgNimsIvKzRi96dojGrmz2OLUY78sP8rhKFER5
 Z2lpkkoAOS.nc.I4afbQUKYtNFWFOpieuau_jWnYQxsZUe1G9KAWzZzZPz1h4sY7nn.QDp5pS4dP
 K3v83WauWcoQBqHS1P93l2lGlb95BxUCTIgjdoclekd3N0Zv_Ehn4i0rOSYvG4rzK6IhCMzlbUqx
 pRkMDaSqO6FHa8WA3V4qawJ1IyI3au47aynz0oktn1cTvgJOUcKnq5FJJuBzqoUDH6QyV9ZEetBD
 vmPuFri7rgH5cGJCvkM6oPdGdy6Tsoiforl5dzG959y.VngRXU0lkYjUgcVa6NfUDKxlFT0JzCRx
 vI8ROCg6IivWXplSB2k31._ZdUOZZMaM_pAiqn7aZNxDlMLAvBVmO_yOTqorMvG.VCr1JVveBIup
 UiQsX3U3aGYPX0dRAHpAUsGB00I2ktMyFyOkahPbcKF2tJ6o6kMLj17i4WkDPcV4d1rcQlqu4I5j
 wvQb44LdOSu5Ui3bnC0vWrCM0vvOVilEuqFYLAuugsVkaadaLcoZnK_h8ZRqWYa2wMc0AydVeK.e
 Kb.u9XFbJv1yvlwcFlIYQd44VUH0Wtal2NUA69RzQ8AqUe98Lq_PWyPkC9GrbEmmeMxAHEIItaz5
 Zc8FuHpYJ9INxC4G3y0w3rIkWlqHzxwqFyZUBeJOl5dpxcUwuvcCSb4FFCDzSfhwM3IzSGyWgIc4
 9woIcZNm5cvmgMYmblbJa7BVERh81jX5ouJ0JmhMDV6r2Hcgb4yNZq3aOKnKVxLwLYWfRglIPaVG
 WCOeAugAFi8RPcYlLTI3R1qw.NTMNPsmKF7xIKZ5iPokW6kq7T5PqsJZJUWY8QWaUBLvPzh6Vdfk
 DiXEmswotQhxU1O5GGAnO3XdpL5CuIHJO.E3NzBiz0HuoPnmMlXK8JKcbUSq2TPHzynBjDxbL_ig
 dYCNccpscREHU056lPWj18V0.9BOBDzjxLCQofrMgOzZKXjnx7L2YKyXU6V.BVN6_.SrDJQKB50i
 rg39_ApZCkHT4alD0VYtF_36pySuVY0wV6WebcQ9x0mB2XxVNbjZTOUPufoEqtg5rBgR6EicoFqf
 OF.S0gLu9cScjmZa4ljnJABjiUgQtJgpN8z6EBHaUFjo.qhSGpBQAtxptqeY.yyomWP4Y8OfkEey
 AXxh6SkUsHreRQL1.akrrc64TflGwjoPM8xscGSL97NadGx09VRq8lzwmoKDSBS4Wj7Du3QzUe0T
 vo_cFnBGlnZBsxCJwsA2rjaI1oCiUDM0FknRLFNtt_VaFmj9PwrbRZ1O5zBdRcN9SnBR5il1RzCP
 pjmoWAHnl8R78V06rSL6Hms9NideI43xBQXP7yQEzGFtV6rYp4nPGAeQ4DsjjvGAjiPDBQIGg5cB
 SBs7qIO3KO_uaD3tXoUBWDOy4FcQADjdWSKS737TZB7DppBuz.FDrTQjl0z45_63sFvCtpaBwEmT
 LAX_rbLMarVQYGAyj1kz7AyXxZEFwavQDWFgkiJgJasJ6e0t2e8k91Gn5_g4g0Sl3C1BvzA8G5kI
 ignld7aK1.qMOiy.k7xVIzcmqIF_rus5A3meXqEOSCIKSWsVQoVlMaGyP41a096PwIfZXYR2fnqr
 PrOvxuSQByD9i4g1fDTI_OZG8hRaNwNeNQzfGkWIDJNfYc.ND3lJZd9Scj8QYkQ6ngFhvfSIbLd6
 AY2TcREnpwdnBvCXmjyUl7Md3gkq9UjCrpv9N6TM1zW0QsQjYyZ35IX36
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ir2.yahoo.com with HTTP; Sun, 1 Nov 2020 16:53:12 +0000
Date: Sun, 1 Nov 2020 16:53:10 +0000 (UTC)
To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>, 
 Dean Scarff <dos@scarff.id.au>
Message-ID: <1589380365.1773120.1604249590198@mail.yahoo.com>
In-Reply-To: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
References: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
MIME-Version: 1.0
X-Mailer: WebService/1.1.16944 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0
Subject: Re: [Cake] NLA_F_NESTED is missing
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
From: Y via Cake <cake@lists.bufferbloat.net>
Reply-To: Y <intruder_tkyf@yahoo.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TXkgcGkgZG9lc24ndCBoYXZlIGVycm9yIHVzaW5nIGNha2UgdGhyb3VnaCBldGgwLgoKCgoKCgpM
ZSBkaW1hbmNoZSAxIG5vdmVtYnJlIDIwMjAgw6AgMTk6MTU6NTQgVVRDKzksIERlYW4gU2NhcmZm
IDxkb3NAc2NhcmZmLmlkLmF1PiBhIMOpY3JpdCA6IAoKCgoKCkhpLAoKSSd2ZSBiZWVuIGhhcHBp
bHkgcnVubmluZyB0aGUgb3V0LW9mLXRyZWUgc2NoX2Nha2Ugb24gbXkgUmFzcGJlcnJ5IFBpIApz
aW5jZSAyMDE1LsKgIEhvd2V2ZXIsIEkgcmVjZW50bHkgdXBncmFkZWQgbXkga2VybmVsICh0byA1
LjQuNzIgZnJvbSAKUmFzcGJpYW4ncyByYXNwYmVycnlwaS1rZXJuZWwgMS4yMDIwMTAyMi0xKSwg
d2hpY2ggY29tZXMgd2l0aCB0aGUgCnNjaF9jYWtlIGluIG1haW5saW5lLsKgIE5vdywgd2hlbiBy
dW5uaW5nOgoKwqAgc3VkbyAvc2Jpbi90YyBxZGlzYyBhZGQgZGV2IHBwcDAgcm9vdCBjYWtlCgpJ
IGdldCB0aGUgZXJyb3I6CgrCoCBFcnJvcjogTkxBX0ZfTkVTVEVEIGlzIG1pc3NpbmcuCgpJIGdl
dCB0aGlzIGVycm9yIHdpdGggdGhlIHNjaF9jYWtlIGluIG1haW5saW5lLCBhbmQgYWxzbyB3aXRo
IHNjaF9jYWtlIApidWlsdCBvdXQtb2YtdHJlZS7CoCBJIGFsc28gZ2V0IHRoZSBlcnJvciB3aXRo
IGJvdGggRGViaWFuJ3MgaXByb3V0ZTIgCjUuOS4wLTEgKGJ1aWx0IG15c2VsZiB2aWEgZGViaWFu
L3J1bGVzKSBhbmQgInRjIiBmcm9tIGR0YWh0J3MgdGMtYWR2IApyZXBvLgoKQW55IGlkZWFzIG9u
IHdoYXQgdGhpcyBlcnJvciBtZWFucyBhbmQgaG93IHRvIGZpeCBpdD8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
