Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 580C230EBA2
	for <lists+cake@lfdr.de>; Thu,  4 Feb 2021 05:54:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F3F713CB38;
	Wed,  3 Feb 2021 23:54:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612414456;
	bh=/oYIZE295rDNhiXu3RYtKEJsUAheDEy3zvabzXvCrJU=;
	h=To:References:Date:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=ZVQ1lZS5R7L5rWWVNC2gJ+m4Qj6TuO49nBZwHLc1Y0FVwifedjk+YTRTssM0PKZIT
	 uqQYgbJJzKltIpdGHBdXR9KDh3G3o2BgtQ1llZj3nsA1AVFleS8WH3FZamZakMdOXM
	 GcacwiFoTMrIGpqUeKMIKz23paDXjaVklDX69s+Av7UOtaBhPoVxMNSKVKXLKWdxzZ
	 tlwT/f5aN15wia9gk2xeXx0HiHL3JaZVz4ZXVuZt8eEnPKN8wAUKfylh6aCT5Ua2U5
	 WZqFPgYN64kVb0HBV5C//PZDVzlCjPA0xw7Se75DaPlJyGfMESLH57kSVVzwt296in
	 mGzkvkB1Ibydg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic301-20.consmr.mail.ir2.yahoo.com
 (sonic301-20.consmr.mail.ir2.yahoo.com [77.238.176.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 767923B29E
 for <cake@lists.bufferbloat.net>; Wed,  3 Feb 2021 23:54:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
 t=1612414453; bh=03Cudy/ecKCzCAhVt2pisnT4WX1fKUTxPOzW1VNB5d0=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=WUXV9U23I1dcRQnB2n2EeVF+jR2EqQ/BnRFsS+a/37ESxher8N3e9R7L1hmaTRvRziiW2mfmZTwGx9ELicV7FB0gvHO8ydydkhRsqdqUNFf2Yy5ah2MRRcl11hSTS3XJ+/S/axlGpPYhzPKDEO17I1RZbD26hZTWz9BULV5zSUlF6PpxoD4GX2gM7C/8zHhO3EN32ax1X5ikiW2M+fXpH5YOxVECEisaO5i/Ev/Lo9cb8QYuWY1oNbfPPLYYR+3yxOfWSonI45rWBkSEaplaBObKMwYaEPmFfDQNK6kUWK5yk8S1HzmWOpMrWXuU2viPJLrh738HuYrc85fSIW9DCg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1612414453; bh=J4+FMGfXRHF6rMU4MZgTFjxdHrFenIFp1zosUj3UGzC=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=nIjO/5w6KxyK+pEpjOoTWjJDXdZ2FRQgAVCFB7Ts0TIkR3JoKd7QORzvil2nX7bIZysezvzTvV9A/Nnn/98k/8EI4z9ZO7haoR8Jt0oUh3YAOm+e4wVxdHDfW9/4iV3iXYhI9KMTeqG/PlqElOYWdIFOm18sTqQRbGOoPbjSbf404en2DZDBASwcG1GOVh26bMtw70W1MIfBFGRI5V3UP/gJHoTFQo6IV5IuwKdCd5rqeV07/tW7oOzK59lViau4C6oStV4M2EBjo2NcLl9cqSA2lMfl88FtulLRxBP6/qEqK38oyr2WLh6abFqykGo6DcU00PmJ5Bh9EurhYUVnug==
X-YMail-OSG: _qiIBq0VM1mtgNC39FOTYVfOngHRiQmw49OAf5Vaxg2gv7LZZ0GDA_8HgZ8UvC7
 oPUYd8Z13McixHUIr.cqrkuLkqucHCGzHjoO90.iBvPet2SXUdCC9dnISXLUeuvRNgULalTy5fsS
 SbbBtuwbGb4R5HKiIZO6LgJ7_0sbCno4T9tn_t.gPjCQfsmz2zLHyA9kp6aIFvUFoedK3IWRJrz.
 bbh0LFSjXfLmotCGqzDZuAcw1zcijNJ..ODMVNJ.lxgvGDmCNGMgmDKOb5PUJqkrPJYdMexYzvpj
 EH9hDRSDraMYphDwIC4UrNXlzKSN0wROx.1644mJ7ine4yxaBkp3arRP7tFh9KAVr.LKbyiLfwZy
 kGriLvKXkJA7o8wJhFU1fSRcE628mg3qZqd7YIN9d_ZlrEPzGTEs07T6YFrJuJgTcWLXYRUg6u7W
 mRnLW0I.VWUD3QLqYSuKqJr1YVAtGZgPeHrmeO7VU_SCAe7dmaxxwEbWgsgGss5Eh97w_iVwKDdh
 PElIbbladVVGbOqUNwcy5VUsLEUdzbd_QcpBGjHxQ8A1nUUAOHvlCctN.BFvX9bT7bP2RQXdQ_cV
 p_4TfEXOjexRfuLyeHU5NjwdnPoJjnC1AKjl1PZBA9rnArO4Cv4gdJDjAasYpTaMXxLQ5H1MpUF4
 lJPz7kU9452PdY5EaiGsPq_m1VbLMSB3EjG06PG7zgcZiz95C97LjkK_5w0KeaaS7QQz1k16QLEc
 ZnArMmIxG3c26QxkG81Kx2_FRZ7ryTbEct1u5Dp.JjccxeX9SvKcfSgf14r6M80FbRR62PYtriRJ
 Xmzx8Geh7tN1Ofeqy7TWw7fjmd2HI3wYAcabx40bP14GhE2TFiC8mXJMUlNfzcG58q8xDo3FTjiA
 2Zn0pw5iEOiJjO2n6dC89BLin0yJH.FJgLzqm7JiFBh9ur1xTXKz95C57AOMVl7aBf98mJZJJhch
 G19rBe9tFfbEreP4VJWZmnWSZu6JIJixANAXqRH7yJls7X90YujXZSesVfbo5ZEfeHNM_P41W2rk
 Mb3yLMCaBRJvsXpaFIY6Ww6zL1qkMoXA.FWMjeFPEKbY2LnIIqtmJ3kr.QFQuYAggZs0F6Jb7b9D
 XdLBSGXE8p50QLyizVJuKxvErgN0zkOKVHiHj_W2.C7DMMvzBZvPcsIRsGDkroG35SgdnE0OW_l6
 aN2aKyEfMfTXIjvN3O9b0MBV5zpYIp6bFHr5ANekHbMW.vdOMMsgwR3EUOP5s_A6ivgNzHvqGH6x
 fnhInRQwtrZNFGoiuVEfC1jCxzhhAynFcAu2rLs79po1wZOnPqfIDn240D18AcGf3mHAgLTwZdjq
 46HbPS1.uh5pj_MEOwpBCGrd8vk.caY3IvesboQ8sT99n11LTY4xTQIq1XlGgColF8hdQ0PAtrtI
 87XesoSWxGrZO48u5j.EiOTmHtjJyO6J6c8NT60l4iJFTMD.wwsoq8sJcaSOc50wfIhFa3HeLqpK
 Tv04Sb7U3woaHHyBfI6vQEgcklNQMdhsF_YvTgOFpAzIi.WU8te4QbatobGMUnn0yErcKExmd2rE
 rgD3c9P2pS8BnkI2Uzk6IeSmDGqC.PK94AE_1zXbDRHH_85kmE9r50sgU.69lm8VNPQnrqy82aW1
 cdUJrwdDQgiAAYLIi1xwfadjQFzm7hLY8m7rI9wtbTiSfve9RstAjjw.EqOxe_ofrovWNOW2rQn_
 MVP_Tc1kq8KeR3rp4y1aTRMVxEo6JXZTGCuAjFPsCpl_ehZ9gGCOjf0rH2VHBxn6qPFK7JV8JQEQ
 ObG1CL73ll.gL6LWLI.R5UI0rkW4yUKvDYpQpT.HfiDtK_Wa7n3clU6yz.xmjzVV8YWpnboIJazi
 kB7o0Fg3FKYkMRygVJmWCz_YitQDfMx1wbhv5BbJnBnWNNDGhnjQnhA2UPVXsdpO7uMxkkST23L_
 BOjdjd4rFcGt_8j5MpZ3wMkOg4BahqyghjTYS_bYCjGeHO2SAqpf9_iIFJ_CBTKLq25SGC7mHL0P
 aqJqDTDuYqq8JHwoQjUmF6Jb_JKoD3Ynh_wzqbrlC4KSihzQUaH0RpXPixvJqcRhQJwgBsJJJ5Gf
 eXkXKNByV_k5APQHKrytOdaxJigabLyc8jUxakXx.qJjRJYaiJDztFGdrFJP0mWXPmvlHM9bdh0u
 ONmnBrVannmT0zq6_nRhVkdtrLZR5hFvfwCeIL4shTkFfObzFbAoXFWU2X3XeP1wLrMGFX2TagOH
 XrImstG3CEN8hk9cGW3y0uDkf3MRxIHiZ0JAsQImq4afI.P4WCTJJcY6LD9imHzGxMc5PKwjtefD
 hed9nMC_mq8w6l2mOE6QdirTefco6AHft6UvNHcIxXa4jX53l.3D5blGZ7ifG8BD5.bN15gR4EZl
 1DSJamm0y0ClXcggltXUqF7wttdP4cuh8XPJRRLWzGCBF75pH8wBun0EJHVv1vw--
X-Sonic-MF: <intruder_tkyf@yahoo.fr>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ir2.yahoo.com with HTTP; Thu, 4 Feb 2021 04:54:13 +0000
Received: by smtp403.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID f4d13067611915ada55eecbccfe092c8; 
 Thu, 04 Feb 2021 04:54:05 +0000 (UTC)
To: cake@lists.bufferbloat.net
References: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
Message-ID: <c5ba2f6f-2c62-e2b6-cc42-e693cfffbd9b@yahoo.fr>
Date: Thu, 4 Feb 2021 13:53:59 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
Content-Language: en-US
X-Mailer: WebService/1.1.17648
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Subject: Re: [Cake] bringing up a new router/connection
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGlkIHlvdSB0ZXN0IHdpdGggdHJhZmZpYyBzaGFwaW5nIGxpa2UgdGhpcz8KCll1dGFrYQoKcGlA
cmFzcGJlcnJ5cGk6fiQgdGMgLXMgcWRpc2Mgc2hvdyBkZXYgZXRoMApxZGlzYyBjYWtlIDgwMzM6
IHJvb3QgcmVmY250IDIgYmFuZHdpZHRoIDgwOUtiaXQgYmVzdGVmZm9ydCBkdWFsLXNyY2hvc3Qg
Cm5vbmF0IG5vd2FzaCBhY2stZmlsdGVyLWFnZ3Jlc3NpdmUgbm8tc3BsaXQtZ3NvIHJ0dCAxMDAu
MG1zIGF0bSBvdmVyaGVhZCAxMAoKPiAjIHRjIHFkaXNjCj4gcWRpc2Mgbm9xdWV1ZSAwOiBkZXYg
bG8gcm9vdCByZWZjbnQgMgo+IHFkaXNjIG1xIDA6IGRldiBldGgwIHJvb3QKPiBxZGlzYyBmcV9j
b2RlbCAwOiBkZXYgZXRoMCBwYXJlbnQgOjEgbGltaXQgMTAyNDBwIGZsb3dzIDEwMjQgcXVhbnR1
bSAKPiAxNTE0IHRhcmdldCA1LjBtcyBpbnRlcnZhbCAxMDAuMG1zIG1lbW9yeV9saW1pdCA0TWIg
ZWNuCj4gcWRpc2MgbXEgMDogZGV2IGV0aDEgcm9vdAo+IHFkaXNjIGZxX2NvZGVsIDA6IGRldiBl
dGgxIHBhcmVudCA6MSBsaW1pdCAxMDI0MHAgZmxvd3MgMTAyNCBxdWFudHVtIAo+IDE1MTQgdGFy
Z2V0IDUuMG1zIGludGVydmFsIDEwMC4wbXMgbWVtb3J5X2xpbWl0IDRNYiBlY24KPiBxZGlzYyBu
b3F1ZXVlIDA6IGRldiBici1sYW4gcm9vdCByZWZjbnQgMgo+IHFkaXNjIG5vcXVldWUgMDogZGV2
IGV0aDEuMSByb290IHJlZmNudCAyCj4gcWRpc2Mgbm9xdWV1ZSAwOiBkZXYgZXRoMC40IHJvb3Qg
cmVmY250IDIKPiBxZGlzYyBub3F1ZXVlIDA6IGRldiB3bGFuMCByb290IHJlZmNudCAyCj4gcWRp
c2Mgbm9xdWV1ZSAwOiBkZXYgZXRoMC4yIHJvb3QgcmVmY250IDIKPiAKPiBEYXZpZCBMYW5nCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1h
aWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
